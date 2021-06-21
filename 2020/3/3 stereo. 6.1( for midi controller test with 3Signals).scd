///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Startup
(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SynthDef

(
 SynthDef(\Signal_1,
	 {
	   arg
		///////////////////////////////////////////////////////////////////////////////////////Fundamental Argument, Signal presence and Detune
		    fundamental , presence1, presence2, presence3,  cutoff1, cutoff2, cutoff3, detune1, detune2, detune3,
        ///////////////////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c_ratio1, c_ratio2, c_ratio3,  fm_ratio1=1, fm_ratio2=1, fm_ratio3=1, am_ratio1=0.1, am_ratio2=0.1, am_ratio3=0.1,
		fm_index1=1, fm_index2=1, fm_index3=1,
        ///////////////////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay, sustain, release,
		//////////////////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth1, azimuth2, azimuth3;

          var
		////////////////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier1, carrier2, carrier3, c_freq1, c_freq2, c_freq3,
		////////////////////////////////////////////////////////////////////////////////////FM and AM Variables
		    fm_modulator1,  fm_modulator2,  fm_modulator3,  fm_freq1, fm_freq2, fm_freq3,
		    am_modulator1, am_modulator2, am_modulator3, am_freq1, am_freq2, am_freq3,
		////////////////////////////////////////////////////////////////////////////////////Output Variables
		   env, signal1, signal2, signal3, audio1, audio2, audio3;
		/////////////////////////////////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fm_freq1 = (fundamental * fm_ratio1);
		fm_freq2 = (fundamental * fm_ratio2);
		fm_freq3 = (fundamental * fm_ratio3);
		fm_modulator1 = SinOsc.ar(freq:fm_freq1, mul:fm_freq1 * fm_index1);
		fm_modulator2 = SinOsc.ar(freq:fm_freq2, mul:fm_freq2 * fm_index2);
		fm_modulator3 = SinOsc.ar(freq:fm_freq3, mul:fm_freq3 * fm_index3);
	////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Frequency
		c_freq1 = (((fundamental*detune1) * (c_ratio1)) +  fm_modulator1)/presence1;
		c_freq2 = (((fundamental*detune2) * (c_ratio2)) +  fm_modulator2)/presence1;
		c_freq3 = (((fundamental *detune3) * (c_ratio3)) +  fm_modulator3)/presence1;
     //////////////////////////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am_freq1 = (c_freq1 *am_ratio1);  am_modulator1 = SinOsc.ar(am_freq1);
		am_freq2 = (c_freq2 *am_ratio2);  am_modulator2 = SinOsc.ar(am_freq2);
		am_freq3 = (c_freq3 *am_ratio3);  am_modulator3= SinOsc.ar(am_freq3);
        //////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Ugens
		 //carrier1 = SinOsc.ar(freq:c_freq1, mul:am_modulator1);//*AmpComp.kr(220,55,0.1);
		//carrier2 = SinOsc.ar(freq:c_freq2, mul:am_modulator2);//*AmpComp.kr(220,55,0.1);
	   //carrier3 = SinOsc.ar(freq:c_freq3, mul:am_modulator3);//*AmpComp.kr(220,55,0.1);
		carrier1 = LFSaw.ar(freq:c_freq1, mul:am_modulator1);//*AmpComp.kr(220,55,0.1);
		carrier2 = LFSaw.ar(freq:c_freq2, mul:am_modulator2);//*AmpComp.kr(220,55,0.1);
		carrier3 = LFSaw.ar(freq:c_freq3, mul:am_modulator3);//*AmpComp.kr(220,55,0.1);
		////////////////////////////////////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.25, 0.1, 0.5],[2, 3, 0,-3]),doneAction:2);
   ///////////////////////////////////////////////////////////////////////////////////////////////////////Signal
		signal1 = RLPF.ar(carrier1,cutoff1,2); signal2 = RLPF.ar(carrier2,cutoff2,2); signal3 = RLPF.ar(carrier3,cutoff3,2);
		signal1 = signal1 * presence1; signal2 = signal2 * presence2; signal3 = signal3 * presence3;
		signal1 = LeakDC.ar(signal1); signal2= LeakDC.ar(signal2); signal3 = LeakDC.ar(signal3);
		///////////////////////////////////////////////////////////////////////////Output
		audio1 = PanAz.ar(2,signal1,azimuth1); audio2 = PanAz.ar(2,signal2,azimuth2); audio3 = PanAz.ar(2,signal3,azimuth3);
		Out.ar(0,audio1*env); Out.ar(0,audio2*env); Out.ar(0,audio3*env);
    }
  ).add;
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////midi
(
(
~note = 46; ~keyon = MIDIFunc.noteOn( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~note=nn.midicps},chan:0);
                 //   ~keyoff = MIDIFunc.noteOff( { arg vel,nn,chan,src; [vel,nn,chan,src].postln; ~note = nil });

(~fm1 = 1;  ~pot1 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm1 = vel.linlin(0,127,1,4).round}, 20, 0));
(~am1 = 1;  ~pot2 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~am1 = vel.linlin(0,127,1,4).round}, 21, 0));
(~index1 = 1;  ~pot3 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~index1 = vel.linlin(0,127,0.1,1)}, 22, 0));
(~detune1= 1;  ~pot4 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune1 = vel.linlin(0,127,0.95,1)}, 23, 0));
(~x1 = 1;  ~pot5 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x1 = vel.linlin(0,127,-0.5,0.5)}, 24, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~note_dur= 1/4;  ~pot19 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~note_dur = vel.linlin(0,127,1/4,1)}, 26, 0));
(~pre1 = 1; ~cutoff = 1760;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre1 = vel.linlin(0,127,1,1/3);
	                                                                                                                                                                    ~cutoff1 = vel.linlin(0,127,1760,880)}, 105, 0));

(~fm2 = 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm2 = vel.linexp(0,127,1,4).round}, 27, 0));
(~am2 = 1;  ~pot8 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~am2 = vel.linexp(0,127,1,10).round}, 28, 0));
(~index2 = 1;  ~pot9 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~index2 = vel.linlin(0,127,0.1,1)}, 29, 0));
(~detune2= 1;  ~pot10 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune2 = vel.linlin(0,127,0.95,1)}, 30, 0));
(~x2= 1;  ~pot11 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x2 = vel.linlin(0,127,-0.5,0.5)}, 31, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre2 = 1; ~cutoff12 = 1760;  ~pot8 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre2 = vel.linlin(0,127,1,1/3);
	                                                                                                                                                                    ~cutoff2 = vel.linlin(0,127,1760,880)}, 106, 0));

(~fm3 = 1;  ~pot13 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm3 = vel.linexp(0,127,1,4).round}, 87, 0));
(~am3= 1;  ~pot14 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~am3 = vel.linexp(0,127,1,10).round}, 88, 0));
(~index3 = 1;  ~pot15 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~index3 = vel.linlin(0,127,0.1,1)}, 89, 0));
(~detune3= 1;  ~pot16 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune3 = vel.linlin(0,127,0.95,1)}, 90, 0));
(~x3 = 1;  ~pot17 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x3 = vel.linlin(0,127,-0.5,0.5)}, 102, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre3 = 1; ~cutoff3= 1760;  ~pot18 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre3 = vel.linlin(0,127,1,1/3);
	                                                                                                                                                                    ~cutoff3 = vel.linlin(0,127,1760,880)}, 107, 0));
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
							\instrument, \Signal_1, \dur,  Pfunc({~note_dur}),
							\fundamental, Pfunc({~note}),
							\cutoff1,Pfunc({~cutoff1}), \cutoff2,Pfunc({~cutoff2}), \cutoff3,Pfunc({~cutoff3}),
							\azimuth1, Pfunc({~x1}), \azimuth2, Pfunc({~x2}), \azimuth3, Pfunc({~x3}),
							\presence1, Pfunc({~pre1}), \presence2, Pfunc({~pre2}), \presence3, Pfunc({~pre3}),
							\detune1, Pfunc({~detune1}), \detune2,  Pfunc({~detune2}), \detune3, Pfunc({~detune3}),
							\c_ratio1,   1, \c_ratio2,   1, \c_ratio3,   1,
							\fm_index1, Pfunc({~index1}) ,	\fm_index2, Pfunc({~index2}) ,	 \fm_index3, Pfunc({~index3}) ,
							\am_ratio1,Pfunc({~am1}), \am_ratio2,Pfunc({~am2}), \am_ratio3,Pfunc({~am3}),
							\fm_ratio1, Pfunc({~fm1}), \fm_ratio1, Pfunc({~fm2}), \fm_ratio1, Pfunc({~fm3});
						)
                          ).play(quant:1)
	            ); 0.yield  } );  })
             );
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////play and MIDI
(
Tdef(\t_signals).play;
s.record(numChannels:2);

)
