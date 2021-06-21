///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Startup
(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SynthDefs
(
(
 SynthDef(\Signal_1,
	 {
	   arg
		///////////////////////////////////////////////////////////////////////////////////////Fundamental Argument, Signal presence and Detune
		    fundamental1 , presence1,  cutoff1=880, detune1,
        ///////////////////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c_ratio1,  fm_ratio1=1,  am_ratio=0.1, fm_index=1,
        ///////////////////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay, sustain, release,
		//////////////////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth1;

          var
		////////////////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier, c_freq,
		////////////////////////////////////////////////////////////////////////////////////FM and AM Variables
		    fm_modulator,  fm_freq, am_modulator,  am_freq,
		////////////////////////////////////////////////////////////////////////////////////Output Variables
		   env, signal, audio;
		/////////////////////////////////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fundamental1 =(fundamental1 * detune1);
		fm_freq = (fundamental1 * fm_ratio1);
		fm_modulator = SinOsc.ar(freq:fm_freq, mul:fm_freq * fm_index);
	////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Frequency
		c_freq = ((fundamental1 * (c_ratio1)) +  fm_modulator)/presence1;
     //////////////////////////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am_freq = (c_freq *am_ratio);  am_modulator = SinOsc.ar(am_freq);
        //////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Ugens
		//carrier = SinOsc.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		carrier = LFSaw.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		////////////////////////////////////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.25, 0.1, 0.25],[2, 3, 0,-3]),doneAction:2);
   ///////////////////////////////////////////////////////////////////////////////////////////////////////Signal
		signal = RLPF.ar(carrier,cutoff1,2);
		signal = signal * presence1;
		signal = LeakDC.ar(signal);
		///////////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth1);
		Out.ar(0,audio*env);
    }
  ).add;
);
(
 SynthDef(\Signal_2,
	 {
	   arg
		///////////////////////////////////////////////////////////////////////////////////////Fundamental Argument, Signal presence and Detune
		    fundamental2 , presence2,  cutoff2=880, detune2,
        ///////////////////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c_ratio2,  fm_ratio2=1,  am_ratio=0.1, fm_index=1,
        ///////////////////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay, sustain, release,
		//////////////////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth2;

          var
		////////////////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier, c_freq,
		////////////////////////////////////////////////////////////////////////////////////FM and AM Variables
		    fm_modulator,  fm_freq, am_modulator,  am_freq,
		////////////////////////////////////////////////////////////////////////////////////Output Variables
		   env, signal, audio;
		/////////////////////////////////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fundamental2 = (fundamental2 * detune2);
		fm_freq = (fundamental2 * fm_ratio2);
		fm_modulator = SinOsc.ar(freq:fm_freq, mul:fm_freq * fm_index);
	////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Frequency
		c_freq = ((fundamental2 * (c_ratio2)) +  fm_modulator)/presence2;
     //////////////////////////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am_freq = (c_freq *am_ratio);  am_modulator = SinOsc.ar(am_freq);
        //////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Ugens
		// carrier = SinOsc.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		carrier = LFSaw.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		////////////////////////////////////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.25, 0.1, 0.25],[2, 3, 0,-3]),doneAction:2);
   ///////////////////////////////////////////////////////////////////////////////////////////////////////Signal
		signal = RLPF.ar(carrier,cutoff2,2);
		signal = signal * presence2;
		signal = LeakDC.ar(signal);
		///////////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth2);
		Out.ar(0,audio*env);
    }
  ).add;
);
(
 SynthDef(\Signal_3,
	 {
	   arg
		///////////////////////////////////////////////////////////////////////////////////////Fundamental Argument, Signal presence and Detune
		    fundamental3 , presence3,  cutoff3=880, detune3,
        ///////////////////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c_ratio3,  fm_ratio3=1,  am_ratio=0.1, fm_index=1,
        ///////////////////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay, sustain, release,
		//////////////////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth3;

          var
		////////////////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier, c_freq,
		////////////////////////////////////////////////////////////////////////////////////FM and AM Variables
		    fm_modulator,  fm_freq, am_modulator,  am_freq,
		////////////////////////////////////////////////////////////////////////////////////Output Variables
		   env, signal, audio;
		/////////////////////////////////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fundamental3 = (fundamental3 * detune3);
		fm_freq = (fundamental3 * fm_ratio3);
		fm_modulator = SinOsc.ar(freq:fm_freq, mul:fm_freq * fm_index);
	////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Frequency
		c_freq = ((fundamental3 * (c_ratio3)) +  fm_modulator)/presence3;
     //////////////////////////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am_freq = (c_freq *am_ratio);  am_modulator = SinOsc.ar(am_freq);
        //////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Ugens
		 //carrier = SinOsc.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		carrier = LFSaw.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		////////////////////////////////////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.25, 0.1, 0.25],[2, 3, 0,-3]),doneAction:2);
   ///////////////////////////////////////////////////////////////////////////////////////////////////////Signal
		signal = RLPF.ar(carrier,cutoff3,2);
		signal = signal * presence3;
		signal = LeakDC.ar(signal);
		///////////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth3);
		Out.ar(0,audio*env);
    }
  ).add;
);
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////midi
(
(
(~note = 64; ~keyon = MIDIFunc.noteOn( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~note=nn.midicps},chan:0));

(~am = 1;  ~pot1 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~am = vel.linexp(0,127,0.1,8)}, 24, 0));
(~index = 1;  ~pot2 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~index = vel.linlin(0,127,0.1,1)}, 25, 0));

(~detune1 = 1;  ~pot3 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune1 = vel.linexp(0,127,0.96,1).round}, 20, 0));
(~fm1 = 1;  ~pot4 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm1 = vel.linexp(0,127,1,8).round}, 21, 0));
(~dur1= 1;  ~pot5 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~dur1 = vel.linlin(0,127,1,1/8).round(1/8)}, 22, 0));
(~x1 = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x1 = vel.linlin(0,127,-0.5,0.5)}, 23, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre1 = 1;   ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre1 = vel.linlin(0,127,1,1/3)}, 105, 0));

(~detune2 = 1;  ~pot8 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune2 = vel.linexp(0,127,0.96,1).round}, 27, 0));
(~fm2 = 1;  ~pot9 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm2 = vel.linexp(0,127,1,8).round}, 28, 0));
(~dur2= 1;  ~pot10= MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~dur2 = vel.linlin(0,127,1,1/8).round(1/8)}, 29, 0));
(~x2 = 1;  ~pot11 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x2 = vel.linlin(0,127,-0.5,0.5)}, 30, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre2 = 1;  ~pot12 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre2 = vel.linlin(0,127,1,1/3)}, 106, 0));

(~detune3 = 1;  ~pot13 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~detune3 = vel.linexp(0,127,0.96,1).round}, 87, 0));
(~fm3 = 1;  ~pot14 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm3 = vel.linexp(0,127,1,8).round}, 88, 0));
(~dur3= 1;  ~pot15 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~dur3 = vel.linlin(0,127,1,1/8).round(1/8)}, 89, 0));
(~x3 = 1;  ~pot16 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x3 = vel.linlin(0,127,-0.5,0.5)}, 90, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre3 = 1;  ~pot17 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre3 = vel.linlin(0,127,1,1/3)}, 107, 0));
);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Task with Patterns
(
Tdef(\t_signals,
      {

			1.do(
			{
				(
			       a = Pdef(\p_signal1,
                                  Pbind(
							\instrument, \Signal_1,
						//	\cutoff1,Pfunc({~cutoff1}),
							\dur,  Pfunc({~dur1}), \azimuth1, Pfunc({~x1}),
							\presence1, Pfunc({~pre1}), \fundamental1,Pfunc({~note}),
							\detune1, Pfunc({~detune1}), \c_ratio1,  1,
							\fm_index, Pfunc({~index}) ,	\am_ratio,Pfunc({~am}),\fm_ratio1, Pfunc({~fm1});
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       b = Pdef(\p_signal2,
                                  Pbind(
							\instrument, \Signal_2,
						//	\cutoff2,Pfunc({~cutoff2}),
							\dur,  Pfunc({~dur2}), \azimuth2, Pfunc({~x2}),
							\presence2, Pfunc({~pre2}), \fundamental2, Pfunc({~note}),
								\detune2, Pfunc({~detune1}), \c_ratio2,  1,
							\fm_index, Pfunc({~index}) ,	\am_ratio,Pfunc({~am}),\fm_ratio2, Pfunc({~fm2});
						)
                          ).play(quant:1)
	            ); 0.yield  } );

					1.do(
			{
				(
			       n = Pdef(\p_signal3,
                                  Pbind(
							\instrument, \Signal_3,
						//	\cutoff3,Pfunc({~cutoff3}),
							\dur,  Pfunc({~dur3}), \azimuth3, Pfunc({~x3}),
							\presence3, Pfunc({~pre3}), \fundamental3, Pfunc({~note}),
							\detune3, Pfunc({~detune1}), \c_ratio3,  1,
							\fm_index, Pfunc({~index}) ,	\am_ratio,Pfunc({~am}),\fm_ratio3, Pfunc({~fm3});
						)
                          ).play(quant:1)
	            ); 0.yield  } );
			})
             );
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////play and MIDI
(
Tdef(\t_signals).play;
//s.record(numChannels:2);

)
