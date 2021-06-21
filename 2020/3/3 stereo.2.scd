///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Startup
(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(160/60);
MIDIClient.init;
MIDIIn.connectAll;
)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SynthDef

(
 SynthDef(\Signals,
	 {
	   arg
		/////////////////////////////////////////////////////////////////////////////Fundamental Argument
		    fundamental ,
	    ////////////////////////////////////////////////////////////////////////////Carrier Presence Arguments
		    pr1, pr2, pr3, pr4, pr5, pr6, pr7, pr8, pr9, pr10, pr11, pr12,
        ///////////////////////////////////////////////////////////////////////////FM, AM, Carrier Ratios and Index of Modulation Arguments
		    c1_ratio, c2_ratio, c3_ratio, c4_ratio, c5_ratio, c6_ratio,
		    c7_ratio, c8_ratio, c9_ratio, c10_ratio, c11_ratio, c12_ratio,
		    m1_ratio=1,m2_ratio=1,m3_ratio=1,m4_ratio=1,m5_ratio=1,m6_ratio=1,m7_ratio=1,m8_ratio=1,m9_ratio=1,m10_ratio=1,m11_ratio=1,m12_ratio=1,
		    amp_m1_ratio=1,
		////////////////////////////////////////////////////////////////////////Index of Modulation Argument
		    fm_index=1,
        //////////////////////////////////////////////////////////////////////////Envelope Arguments
            attack1, attack2, attack3, attack4, attack5, attack6, attack7, attack8, attack9, attack10, attack11, attack12,
		    decay1, decay2, decay3, decay4, decay5, decay6, decay7, decay8, decay9, decay10, decay11, decay12,
		    sustain1, sustain2, sustain3, sustain4, sustain5, sustain6, sustain7, sustain8, sustain9, sustain10, sustain11, sustain12,
		    release1, release2, release3, release4, release5, release6, release7, release8, release9, release10, release11, release12,
		/////////////////////////////////////////////////////////////////////////Panning Arguments
		   azimuth, elevation;

	    var
		////////////////////////////////////////////////////////////////////////Carrier Variables
		    carrier1, carrier2, carrier3, carrier4, carrier5, carrier6,
	        carrier7, carrier8, carrier9, carrier10, carrier11, carrier12,
		    c1_freq, c2_freq, c3_freq, c4_freq, c5_freq, c6_freq,
		    c7_freq, c8_freq, c9_freq, c10_freq, c11_freq, c12_freq,
		////////////////////////////////////////////////////////////////////////FM Variables
		   fm1,  fm2, fm3, fm4, fm5, fm6, fm7, fm8, fm9, fm10, fm11, fm12,
		    fm1_freq,  fm2_freq,  fm3_freq,  fm4_freq,  fm5_freq,  fm6_freq,  fm7_freq,  fm8_freq,  fm9_freq,  fm10_freq,  fm11_freq,  fm12_freq,
		////////////////////////////////////////////////////////////////////////AM Variables
		    am1,
		    am1_freq=1,
		////////////////////////////////////////////////////////////////////////Envelope Varables
		    sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12,
		////////////////////////////////////////////////////////////////////////Signal Variables
		    env1, env2, env3, env4, env5, env6, env7, env8, env9, env10, env11, env12,
		////////////////////////////////////////////////////////////////////////Output Variables
		   signal, audio;

		////////////////////////////////////////////////////////////////////////Amplitude Modulator Ugens
		am1_freq = (fundamental *amp_m1_ratio);
		am1 = SinOsc.ar(am1_freq);

		///////////////////////////////////////////////////////////////////////Frequency Modulator Ugens
		fm1_freq = (fundamental * (m1_ratio/pr1));
		fm1 = SinOsc.ar(freq:fm1_freq, mul:fm1_freq * fm_index*pr1);
			fm2_freq = (fundamental * (m2_ratio/pr2));
		fm2 = SinOsc.ar(freq:fm2_freq, mul:fm2_freq * fm_index*pr2);
			fm3_freq = (fundamental * (m3_ratio/pr3));
		fm3 = SinOsc.ar(freq:fm3_freq, mul:fm3_freq * fm_index*pr3);
			fm4_freq = (fundamental * (m4_ratio/pr4));
		fm4 = SinOsc.ar(freq:fm4_freq, mul:fm4_freq * fm_index*pr4);
			fm5_freq = (fundamental * (m5_ratio/pr5));
		fm5 = SinOsc.ar(freq:fm5_freq, mul:fm5_freq * fm_index*pr5);
			fm6_freq = (fundamental * (m6_ratio/pr6));
		fm6 = SinOsc.ar(freq:fm6_freq, mul:fm6_freq * fm_index*pr6);
			fm7_freq = (fundamental * (m7_ratio/pr7));
		fm7 = SinOsc.ar(freq:fm6_freq, mul:fm6_freq * fm_index*pr7);
			fm8_freq = (fundamental * (m8_ratio/pr8));
		fm8 = SinOsc.ar(freq:fm7_freq, mul:fm7_freq * fm_index*pr8);
			fm9_freq = (fundamental * (m9_ratio/pr9));
		fm9 = SinOsc.ar(freq:fm8_freq, mul:fm8_freq * fm_index*pr9);
			fm10_freq = (fundamental * (m10_ratio/pr10));
		fm10 = SinOsc.ar(freq:fm9_freq, mul:fm9_freq * fm_index*pr10);
			fm11_freq = (fundamental * (m11_ratio/pr11));
		fm11 = SinOsc.ar(freq:fm11_freq, mul:fm11_freq * fm_index*pr11);
			fm12_freq = (fundamental * (m12_ratio/pr12));
		fm12 = SinOsc.ar(freq:fm12_freq, mul:fm12_freq * fm_index*pr12);

		////////////////////////////////////////////////////////////////////////Carrier Ugens
		c1_freq = ((fundamental * (c1_ratio/pr1)) + fm1);   carrier1 = SinOsc.ar(freq:c1_freq, mul:am1)*AmpComp.kr(c1_freq,55,0.1);
		c2_freq = ((fundamental * (c2_ratio/pr2)) + fm2);   carrier2 = SinOsc.ar(freq:c2_freq, mul:am1)*AmpComp.kr(c2_freq,55,0.1);
		c3_freq = ((fundamental * (c3_ratio/pr3)) + fm3);   carrier3 = SinOsc.ar(freq:c3_freq, mul:am1)*AmpComp.kr(c3_freq,55,0.1);
		c4_freq = ((fundamental * (c4_ratio/pr4)) + fm4);   carrier4 = SinOsc.ar(freq:c4_freq, mul:am1)*AmpComp.kr(c4_freq,55,0.1);
		c5_freq = ((fundamental * (c5_ratio/pr5)) + fm5);   carrier5 = SinOsc.ar(freq:c5_freq, mul:am1)*AmpComp.kr(c5_freq,55,0.1);
		c6_freq = ((fundamental * (c6_ratio/pr6)) + fm6);   carrier6 = SinOsc.ar(freq:c6_freq, mul:am1)*AmpComp.kr(c6_freq,55,0.1);
		c7_freq = ((fundamental * (c7_ratio/pr7)) + fm7);   carrier7 = SinOsc.ar(freq:c7_freq, mul:am1)*AmpComp.kr(c8_freq,55,0.1) ;
	    c8_freq = ((fundamental * (c8_ratio/pr8)) + fm8);   carrier8 = SinOsc.ar(freq:c8_freq, mul:am1)*AmpComp.kr(c9_freq,55,0.1) ;
		c9_freq = ((fundamental * (c9_ratio/pr9)) + fm9);   carrier9 = SinOsc.ar(freq:c9_freq, mul:am1)*AmpComp.kr(c9_freq,55,0.1);
	    c10_freq = ((fundamental * (c10_ratio/pr10)) + fm10);   carrier10 = SinOsc.ar(freq:c10_freq, mul:am1)*AmpComp.kr(c10_freq,55,0.1) ;
		c11_freq = ((fundamental * (c11_ratio/pr11)) + fm11);   carrier11 = SinOsc.ar(freq:c11_freq, mul:am1)*AmpComp.kr(c11_freq,55,0.1) ;
    	c12_freq = ((fundamental * (c12_ratio/pr12)) + fm12);   carrier12 = SinOsc.ar(freq:c12_freq, mul:am1)*AmpComp.kr(c12_freq,55,0.1) ;

		///////////////////////////////////////////////////////////////////////Envelopes
		env1 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack1, decay1, sustain1, release1],[2, 3, 0,-3]),doneAction:2);
		env2 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack2, decay2, sustain2, release2],[2, 3, 0,-3]),doneAction:2);
		env3 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack3, decay3, sustain3, release3],[2, 3, 0,-3]),doneAction:2);
		env4 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack4, decay4, sustain4, release4],[2, 3, 0,-3]),doneAction:2);
		env5 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack5, decay5, sustain5, release5],[2, 3, 0,-3]),doneAction:2);
		env6 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack6, decay6, sustain6, release6],[2, 3, 0,-3]),doneAction:2);
     	env7 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack7, decay7, sustain7, release7],[2, 3, 0,-3]),doneAction:2);
	  env8 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack8, decay8, sustain8, release8],[2, 3, 0,-3]),doneAction:2);
   	env9 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack9, decay9, sustain9, release9],[2, 3, 0,-3]),doneAction:2);
      env10 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack10, decay10, sustain10, release10],[2, 3, 0,-3]),doneAction:2);
    	env11 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack11, decay11, sustain11, release11],[2, 3, 0,-3]),doneAction:2);
    	env12 = EnvGen.ar(Env.new([0,1, 0.5, 0.5,0], [attack12, decay12, sustain12, release12],[2, 3, 0,-3]),doneAction:2);

		///////////////////////////////////////////////////////////////////////Signals
		sig1 = (carrier1 * env1 ); sig2 = (carrier2 * env2);  sig3 = (carrier3 * env3);
		sig4 = (carrier4 * env4); sig5 = (carrier5 * env5); sig6 = (carrier6 * env6);
		sig7 = (carrier7 * env7); sig8 = (carrier8 * env8);  sig9 = (carrier9 * env9);
        sig10 = (carrier10 * env10); sig11 = (carrier11 * env11); sig12 = (carrier12 * env12);

        ///////////////////////////////////////////////////////////////////////Synthesis
		signal = (
			     (sig1 * pr1)+ (sig2 * pr2) + (sig3 * pr3) + (sig4 * pr4) + (sig5 * pr5) + (sig6 * pr6) +
		        (sig7 * pr7) + (sig8 * pr8) + (sig9 * pr9) + (sig10 * pr10) + (sig11 * pr11) + (sig12 * pr12)
		        );

		///////////////////////////////////////////////////////////////////////Output
		audio = PanAz.ar(2,signal,azimuth);
		Out.ar(0,audio);
    }
  ).add;
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////midi
(
(
~azimuthio = 0;
 ~pot1 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;
                                    	~azimuthio = vel.linlin(0,127,-0.5,0.5);
}, 14, 0);
);
(
~elevatio = 0;
 ~pot2 = MIDIFunc.cc( { arg vel,nn,chan,src; [vel,nn,chan,src].postln;
                                    	~elevetio = vel.linlin(0,127,-0.5,0.5);
}, 15, 0);
);
)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Task with Patterns
(
Tdef(\t_signals,
      {

			1.do(
			{
				(
			       a = Pdef(\p_signals,
                                  Pbind(
					\instrument, \Signals, \dur, Prand([0.5],inf),
						//	\azimuth, Pfunc({~azimuthio}),
							\azimuth, Pxrand([0.5,-0.5],inf),

							\c1_ratio, Pseq([1],inf), \c2_ratio, Prand([1],inf), \c3_ratio, Prand([1],inf),
							\c4_ratio, Prand([1],inf), \c5_ratio, Prand([1],inf), \c6_ratio, Prand([1],inf),
							\c7_ratio, Prand([1],inf), \c8_ratio, Pseq([1],inf), \c9_ratio, Prand([1],inf),
							\c10_ratio, Prand([1],inf), \c11_ratio, Pxrand([1],inf), \c12_ratio, Prand([1],inf),

						 \fm_index, Pseq([1,2,1],inf), 	\amp_m1_ratio, Pseq([3,1,3],inf),
							\m1_ratio, Pxrand([1],inf), \m2_ratio, Pxrand([1],inf), \m3_ratio, Pxrand([1],inf),
							\m4_ratio, Pxrand([1],inf), \m5_ratio, Pxrand([1],inf), \m6_ratio, Pxrand([1],inf),
							\m7_ratio, Pxrand([1],inf), \m8_ratio, Pxrand([1],inf), \m9_ratio, Pxrand([1],inf),
							\m10_ratio, Pxrand([1],inf), \m11_ratio, Pxrand([1],inf), \m12_ratio, Pseq([1,2,3,4],inf),

							\fundamental,Prand([110],inf),

							\attack1, Prand([0.01],inf), \attack2, Prand([0.01],inf), \attack3, Prand([0.01],inf),
							\attack4, Prand([0.01],inf), \attack5, Prand([0.01],inf), \attack6, Prand([0.01],inf),
							\attack7, Prand([0.01],inf), \attack8, Prand([0.01],inf), \attack9, Prand([0.01],inf),
							\attack10, Prand([0.01],inf), \attack11, Prand([0.01],inf), \attack12, Prand([0.01],inf),

							\decay1, Prand([0.3,0.6,0.9],inf), \decay2, Prand([0.3,0.6,0.9],inf), \decay3, Prand([0.3,0.6,0.9],inf),
							\decay4, Prand([0.3,0.6,0.9],inf), \decay5, Prand([0.3,0.6,0.9],inf), \decay6, Prand([0.3,0.6,0.9],inf),
							\decay7, Prand([0.3,0.6,0.9],inf), \decay8, Prand([0.3,0.6,0.9],inf), \decay9, Prand([0.3,0.6,0.9],inf),
							\decay10, Prand([0.3,0.6,0.9],inf), \decay11, Prand([0.3,0.6,0.9],inf), \decay12, Prand([0.3,0.6,0.9],inf),

							\sustain1, Prand([0.1,0.2,0.3],inf), \sustain2, Prand([0.1,0.2,0.3],inf), \sustain3, Prand([0.1,0.2,0.3],inf),
							\sustain4, Prand([0.1,0.2,0.3],inf), \sustain5, Prand([0.1,0.2,0.3],inf), \sustain6, Prand([0.1,0.2,0.3],inf),
							\sustain7, Prand([0.1,0.2,0.3],inf), \sustain8, Prand([0.1,0.2,0.3],inf), \sustain9, Prand([0.1,0.2,0.3],inf),
							\sustain10, Prand([0.1,0.2,0.3],inf), \sustain11, Prand([0.1,0.2,0.3],inf), \sustain12, Prand([0.1,0.2,0.3],inf),

							\release1, Prand([0.3,0.6,0.09],inf), \release2, Prand([0.03,0.06,0.09],inf), \release3, Prand([0.03,0.06,0.09],inf),
							\release4, Prand([0.03,0.06,0.09],inf), \release5, Prand([0.03,0.06,0.09],inf), \release6, Prand([0.03,0.06,0.09],inf),
							\release7, Prand([0.03,0.06,0.09],inf), \release8, Prand([0.03,0.06,0.09],inf), \release9, Prand([0.03,0.06,0.09],inf),
							\release10, Prand([0.03,0.06,0.09],inf), \release11, Prand([0.03,0.06,0.09],inf), \release12, Prand([0.03,0.06,0.09],inf),

							\pr1, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1],inf), \pr2, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1,1/12],inf),
							\pr3, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1,1/12,1/12],inf), \pr4, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1,1/12,1/12,1/12],inf),
							\pr5, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1/12,1,1/12,1/12,1/12,1/12],inf), \pr6, Pseq([1/12,1/12,1/12,1/12,1/12,1/12,1,1/12,1/12,1/12,1/12,1/12],inf),
							\pr7, Pseq([1/12,1/12,1/12,1/12,1/12,1,1/12,1/12,1/12,1/12,1/12,1/12],inf), \pr8, Pseq([1/12,1/12,1/12,1/12,1,1/12,1/12,1/12,1/12,1/12,1/12,1/12],inf),
							\pr9, Pseq([1/12,1/12,1/12,1,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12],inf), \pr10, Pseq([1/12,1/12,1,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12],inf),
							\pr11, Pseq([1/12,1,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12],inf), \pr12, Pseq([1,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12],inf);

						)
                          ).play(quant:1)
	            ); 0.yield
		    }
	    );
     })
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////play and MIDI
(
Tdef(\t_signals).play;
//s.record(numChannels:2);

)