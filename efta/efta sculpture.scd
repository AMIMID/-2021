s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels= 18;

s.record(numChannels:2);
////////////////////////////////
//////////////////////////////////////////////////////

(
(
SynthDef(\sp1,
	{
		arg  freq1, fr1,amp,fr2;
		var audio,env,mul;

		mul =TExpRand.kr(165,255,Dust.kr(44100));
		env = EnvGen.ar(Env.perc(releaseTime:32),doneAction:2);
		audio = PanAz.ar(2,SinOsc.ar(fr1*mul+SinOsc.ar(fr2*mul,mul:Stepper.kr(Impulse.kr(500), 0, 1, 6000, 1,0.05)),mul:amp),SinOsc.kr(freq1*0.86/4));


		Out.ar(0,audio*env);
}).add
);
////////////////////////////////////////////////////////
//(SynthDef(\tessera1,
//	{
	//	var sig1,audio;
//		sig1= FreeVerb.ar(InFeedback.ar(2),0.6,1,1);
	//	#w, x, y, z = PanB.ar(sig1,0pi,0, 1);
	//	audio = BFDecode1.ar(w, x, y, z,
  //      [0pi,0pi],
  //      [0.5pi,-0.5pi]);
	//	Out.ar(0,audio);
//}).add;
//);

//////////////////////////
(
Tdef(\pattern_tria1,

      {

		1.do({loop({
(
  Synth.new(\sp1, [\gate,1,\fr1,1, \freq1,9,\amp,1,\fr2,1.86]);
Synth.new(\sp1, [\gate,1, \fr1,2, \freq1,8,\amp,1/2,\fr2,2.86]);
 Synth.new(\sp1, [\gate,1, \fr1,3, \freq1,7,\amp,1/3,\fr2,3.86]);
Synth.new(\sp1, [\gate,1, \fr1,4, \freq1,6,\amp,1/4,\fr2,4.86]);
 Synth.new(\sp1, [\gate,1, \fr1,5, \freq1,5,\amp,1/5,\fr2,5.86]);
 Synth.new(\sp1, [\gate,1, \fr1,6, \freq1,4,\amp,1/6,\fr2,6.86]);
 Synth.new(\sp1, [\gate,1,\fr1,7, \freq1,3,\amp,1/7,\fr2,7.86]);
Synth.new(\sp1, [\gate,1, \fr1,8, \freq1,2,\amp,1/8,\fr2,8.86]);
Synth.new(\sp1, [\gate,1, \fr1,9, \freq1,1,\amp,1/9,\fr2,9.86]);

);
			(32.rrand(16)).wait;});0.yield});

	}
)
);
)

(
Tdef(\pattern_tria1).play;
//Synth.new(\tessera1);
s.record(numChannels:2);
)
////////////////
////////////////
