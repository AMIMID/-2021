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
		    fundamental , presence, detune_c, cutoff,
        ///////////////////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c_ratio,  fm_ratio=1,  am_ratio=0.1, fm_index=1,
        ///////////////////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack,  decay, sustain, release,
		//////////////////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth;

          var
		////////////////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier, c_freq,
		////////////////////////////////////////////////////////////////////////////////////FM and AM Variables
		    fm_modulator,  fm_freq, am_modulator,  am_freq,
		////////////////////////////////////////////////////////////////////////////////////Output Variables
		   env, signal, audio;
		/////////////////////////////////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fundamental = fundamental *detune_c;
		fm_freq = (fundamental * fm_ratio);
		fm_modulator = SinOsc.ar(freq:fm_freq, mul:fm_freq * fm_index);
	////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Frequency
		c_freq = ((fundamental * (c_ratio)) +  fm_modulator)/presence;
     //////////////////////////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am_freq = (c_freq *am_ratio);  am_modulator = SinOsc.ar(am_freq);
        //////////////////////////////////////////////////////////////////////////////////////////////////////Carrier Ugens
		// carrier = SinOsc.ar(freq:c_freq, mul:am_modulator)*AmpComp.kr(220,55,0.1);
		carrier = LFSaw.ar(freq:c_freq, mul:am_modulator);//*AmpComp.kr(220,55,0.1);
		////////////////////////////////////////////////////////////////////////////////////////////////////Envelopes
		env = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [0.01, 0.25, 0.1, 0.5],[2, 3, 0,-3]),doneAction:2);
   ///////////////////////////////////////////////////////////////////////////////////////////////////////Signal
       	signal = carrier * presence;
		signal = LPF.ar(signal,cutoff);
		signal = LeakDC.ar(signal);
		///////////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth);
		Out.ar(0,audio*env);
    }
  ).add;
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////midi
(
(
~notes = Array.newClear(128);
~note = 46; ~keyon = MIDIFunc.noteOn( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~note=nn.midicps});
                 //   ~keyoff = MIDIFunc.noteOff( { arg vel,nn,chan,src; [vel,nn,chan,src].postln; ~note = nil });

(~fm = 1;  ~pot1 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~fm = vel.linlin(0,127,1,4)}, 20, 0));
(~cutoff = 110;  ~pot2 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~cutoff = vel.linlin(0,127,220,1760)}, 21, 0));
(~index = 0.1;  ~pot3 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~index = vel.linlin(0,127,0.1,1)}, 22, 0));
(~note_dur= 1/2;  ~pot4 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~note_dur = vel.linlin(0,127,1/5,1/3)}, 23, 0));
(~x = 1;  ~pot5 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~x = vel.linlin(0,127,-0.5,0.5)}, 24, 0));
//(~y = 1;  ~pot6 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~y = vel.linlin(0,127,0.95,1)}, 25, 0));
//(~z= 1;  ~pot7 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~z = vel.linlin(0,127,0.95,1)}, 26, 0));
(~pre = 1;  ~pot8 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;  ~pre = vel.linlin(0,127,1,1/3)}, 105, 0));
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
							\instrument, \Signal_1,
							\cutoff,Pfunc({~cutoff}),
							\dur,  Pfunc({~note_dur}), \azimuth, Pfunc({~x}),
							\presence, Pfunc({~pre}), \fundamental, Pfunc({~note}),
							\detune_c, Pexprand(1,1,inf), \c_ratio,  Pseq([1],inf),
					       	 \fm_index, Pfunc({~index}) ,	\am_ratio,1,\fm_ratio, Pfunc({~fm});
						)
                          ).play(quant:1)
	            ); 0.yield  } );  })
             );
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////play and MIDI
(
Tdef(\t_signals).play;
//s.record(numChannels:2);

)
