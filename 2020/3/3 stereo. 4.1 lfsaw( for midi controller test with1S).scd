///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Startup
(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SynthDef

(
 SynthDef(\Signals,
	 {
	   arg
		/////////////////////////////////////////////////////////////////////////////Fundamental Argument, Signal presence and Detune
		    fundamental , presence, detune_c1, detune_c2, detune_c3,  detune_c4, detune_c5, detune_c6, detune_c7, detune_c8, detune_c9,
	    ////////////////////////////////////////////////////////////////////////////Carrier Presence Arguments
		    pr1, pr2, pr3,  pr4, pr5, pr6, pr7, pr8, pr9,
        ///////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c1_ratio, c2_ratio, c3_ratio, c4_ratio, c5_ratio, c6_ratio, c7_ratio, c8_ratio, c9_ratio,
		    m1_ratio=1,
		    amp_m1_ratio=0.1,
		////////////////////////////////////////////////////////////////////////Index of Modulation Argument
		    fm_index=1,
        //////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay,  release,
		/////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth, elevation;

	    var
		////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier1, carrier2, carrier3, carrier4, carrier5, carrier6, carrier7, carrier8, carrier9,
		    c1_freq, c2_freq, c3_freq,  c4_freq, c5_freq, c6_freq, c7_freq, c8_freq, c9_freq,
		////////////////////////////////////////////////////////////////////////FM Variables
		    fm1,
		    fm1_freq,
		////////////////////////////////////////////////////////////////////////AM Variables
		    am1, am2, am3, am4, am5, am6, am7, am8, am9,
		    am1_freq,  am2_freq,  am3_freq, am4_freq,  am5_freq,  am6_freq, am7_freq,  am8_freq,  am9_freq,
		////////////////////////////////////////////////////////////////////////Envelope Varables
		    sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9,
		////////////////////////////////////////////////////////////////////////Signal Variables
		   env,
		////////////////////////////////////////////////////////////////////////Output Variables
		   signal, audio;

		///////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fm1_freq = (fundamental * m1_ratio);
		fm1 = SinOsc.ar(freq:fm1_freq, mul:fm1_freq * fm_index);

		////////////////////////////////////////////////////////////////////////Carrier Frequency
		c1_freq = ((fundamental * (c1_ratio/pr1)) + fm1); c2_freq = ((fundamental * (c2_ratio/pr2)) + fm1); c7_freq = ((fundamental * (c7_ratio/pr7)) + fm1);
		c3_freq = ((fundamental * (c3_ratio/pr3)) + fm1); c4_freq = ((fundamental * (c4_ratio/pr4)) + fm1); c8_freq = ((fundamental * (c8_ratio/pr8)) + fm1);
		c5_freq = ((fundamental * (c5_ratio/pr5)) + fm1); c6_freq = ((fundamental * (c6_ratio/pr6)) + fm1); c9_freq = ((fundamental * (c9_ratio/pr9)) + fm1);

       ////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am1_freq = (c1_freq *amp_m1_ratio); am2_freq = (c2_freq *amp_m1_ratio); am3_freq = (c3_freq *amp_m1_ratio);
		am4_freq = (c4_freq *amp_m1_ratio); am5_freq = (c5_freq *amp_m1_ratio); am6_freq = (c6_freq *amp_m1_ratio);
		am7_freq = (c7_freq *amp_m1_ratio); am8_freq = (c8_freq *amp_m1_ratio); am9_freq = (c9_freq *amp_m1_ratio);

		am1 = SinOsc.ar(am1_freq); am2 = SinOsc.ar(am2_freq);am3 = SinOsc.ar(am3_freq); am4 = SinOsc.ar(am4_freq);am5 = SinOsc.ar(am5_freq) ;
		am6 = SinOsc.ar(am6_freq);am7= SinOsc.ar(am7_freq); am8 = SinOsc.ar(am8_freq);am9= SinOsc.ar(am9_freq);

        ////////////////////////////////////////////////////////////////////////Carrier Ugens
		 carrier1 = LFSaw.ar(freq:c1_freq*detune_c1, mul:am1);
		 carrier2 = LFSaw.ar(freq:c2_freq*detune_c2, mul:am1);//*AmpComp.kr(c2_freq*detune_c2,55,0.1);
		 carrier3 = LFSaw.ar(freq:c3_freq*detune_c3, mul:am1);//*AmpComp.kr(c3_freq*detune_c3,55,0.1);
		 carrier4 = LFSaw.ar(freq:c4_freq*detune_c4, mul:am1);//*AmpComp.kr(c4_freq*detune_c4,55,0.1);
		 carrier5 = LFSaw.ar(freq:c5_freq*detune_c5, mul:am1);//*AmpComp.kr(c5_freq*detune_c5,55,0.1);
		 carrier6 = LFSaw.ar(freq:c6_freq*detune_c6, mul:am1);//*AmpComp.kr(c6_freq*detune_c6,55,0.1);
	      carrier7 = LFSaw.ar(freq:c7_freq*detune_c7, mul:am1);//*AmpComp.kr(c7_freq*detune_c7,55,0.1);
		 carrier8 = LFSaw.ar(freq:c8_freq*detune_c8, mul:am1);//*AmpComp.kr(c8_freq*detune_c8,55,0.1);
		 carrier9 = LFSaw.ar(freq:c9_freq*detune_c9, mul:am1);//*AmpComp.kr(c9_freq*detune_c9,55,0.1);


		///////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.5, 0.1, 0.25],[2, 3, 0,-3]),doneAction:2);
     	///////////////////////////////////////////////////////////////////////Signals
		sig1 = RLPF.ar(carrier1 * pr1,440,2); sig2 = RLPF.ar(carrier2 * pr2,440,2);  sig3 = RLPF.ar(carrier3 * pr3,440,2);
		sig4 = RLPF.ar(carrier4 * pr4,440,2); sig5 = RLPF.ar(carrier5 * pr5,440,2);  sig6 = RLPF.ar(carrier6 * pr6,440,2);
		sig7 = RLPF.ar(carrier7 * pr7,440,2); sig8 = RLPF.ar(carrier8 * pr8,440,2);  sig9 = RLPF.ar(carrier9 * pr9,440,2);

        ///////////////////////////////////////////////////////////////////////Synthesis
		signal = sig1 + sig2 + sig3 + sig4 + sig5 + sig6 + sig7 + sig8 + sig9 ;
       	signal = signal * presence*AmpComp.kr(4000,55,0.2);
		signal = LeakDC.ar(signal);
		///////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth);
		Out.ar(0,audio*env);
    }
  ).add;
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////midi
(
(


(~cdetune1 = 1;  ~pot1 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~cdetune1 = vel.linlin(0,127,0.98,1)}, 20, 0));
(~cdetune2 = 1;  ~pot2 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~cdetune2 = vel.linlin(0,127,0.98,1)}, 27, 0));
(~cdetune3 = 1;  ~pot3 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~cdetune3 = vel.linlin(0,127,0.98,1)}, 87, 0));
(~cdetune4= 1;  ~pot4 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence1 = vel.linlin(0,127,0.98,1)}, 21, 0));
(~cdetune5 = 1;  ~pot5 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence2 = vel.linlin(0,127,0.98,1)}, 28, 0));
(~cdetune6 = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence3 = vel.linlin(0,127,0.98,1)}, 88, 0));
(~cdetune7= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence1 = vel.linlin(0,127,0.98,1)}, 22, 0));
(~cdetune8 = 1;  ~pot8 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence2 = vel.linlin(0,127,0.98,1)}, 29, 0));
(~cdetune9 = 1;  ~pot9 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence3 = vel.linlin(0,127,0.9,1)}, 89, 0));

(~presence1 = 1;  ~pot10 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence1 = vel.linlin(0,127,1/9,1)}, 23, 0));
(~presence2 = 1;  ~pot11 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence2 = vel.linlin(0,127,1/9,1)}, 30, 0));
(~presence3 = 1;  ~pot12 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence3 = vel.linlin(0,127,1/9,1)}, 90, 0));
(~presence4= 1;  ~pot13 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence4 = vel.linlin(0,127,1/9,1)}, 24, 0));
(~presence5 = 1;  ~pot14 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence5 = vel.linlin(0,127,1/9,1)}, 31, 0));
(~presence6 = 1;  ~pot15 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence6 = vel.linlin(0,127,1/9,1)}, 102, 0));
(~presence7= 1;  ~pot16 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence7 = vel.linlin(0,127,1/9,1)}, 25, 0));
(~presence8 = 1;  ~pot17 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence8 = vel.linlin(0,127,1/9,1)}, 85, 0));
(~presence9 = 1;  ~pot18 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence9 = vel.linlin(0,127,1/9,1)}, 103, 0));

(~ammod = 0.001;  ~pot19 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~ammod = vel.linlin(0,127,0.001,1)}, 104, 0));

(~fundfreq = 110;  ~pot20 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fundfreq = vel.linlin(0,127,55,220)}, 105, 0));
(~fmindex =0.1;  ~pot21 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fmindex = vel.linlin(0,127,0.1,1)}, 106, 0));
(~presence0 = 1;  ~pot22 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~presence0 = vel.linlin(0,127,0,1)}, 107, 0));
);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Task with Patterns
(
Tdef(\t_signals,
      {

			1.do(
			{
				(
			       a = Pdef(\p_signals,
                                  Pbind(
							\instrument, \Signals, \dur, Pseq([1/6],inf),
						//	\azimuth, Pfunc({~azimuthio}),
							\azimuth, Pxrand([0.5,-0.5],inf),

							\presence, Pfunc({~presence0}),

							\detune_c1, Pfunc({~cdetune1}), \detune_c2, Pfunc({~cdetune2}), \detune_c3, Pfunc({~cdetune3}),
							\detune_c4, Pfunc({~cdetune4}), \detune_c5, Pfunc({~cdetune5}), \detune_c6, Pfunc({~cdetune6}),
							\detune_c7, Pfunc({~cdetune7}), \detune_c8, Pfunc({~cdetune8}), \detune_c9, Pfunc({~cdetune9}),

                            \c1_ratio,  Pxrand([1,2,3,4,5,6,7,8,9],inf), \c2_ratio,  Pxrand([2,3,4,5,6,7,8,9,1],inf), \c3_ratio,  Pxrand([3,4,5,6,7,8,9,1,2],inf),
							 \c4_ratio,  Pxrand([4,5,6,7,8,9,1,2,3],inf), \c5_ratio,  Pxrand([5,6,7,8,9,1,2,3,4],inf), \c6_ratio,  Pxrand([6,7,8,9,1,2,3,4,5],inf),
							\c7_ratio,  Pxrand([7,8,9,1,2,3,4,5,6],inf), \c8_ratio,  Pxrand([8,9,1,2,3,4,5,6,7],inf), \c9_ratio,  Pxrand([9,1,2,3,4,5,6,7,8],inf),

					       	 \fm_index, Pfunc({~fmindex}) ,	\amp_m1_ratio, Pfunc({~ammod}),

							\m1_ratio, Pxrand([1,2,3,4,5,6,7,8,9],inf), \fundamental, Pfunc({~fundfreq}),

							\pr1,  Pfunc({~presence1},),   \pr2,   Pfunc({~presence2}),   \pr3,  Pfunc({~presence4}),
							\pr4,    Pfunc({~presence4}),   \pr5,    Pfunc({~presence5}),   \pr6,   Pfunc({~presence6}),
							\pr7 ,   Pfunc({~presence7}),   \pr8,    Pfunc({~presence8}),   \pr9,  Pfunc({~presence9});
						)
                          ).play(quant:1)
	            ); 0.yield
		    }
	    );
     })
);
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////play and MIDI
(
Tdef(\t_signals).play;
//s.record(numChannels:2);

)