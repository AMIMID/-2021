s.boot;

recv -> 12346
send -> 12345
loppback IP -> 127.0.0.1

~synapse = NetAddr.new("127.0.0.1", 12346);

~synapse.sendMsg("\righthand_requiredlength", 10.0);
~synapse.sendMsg("\righthand_pointhistorysize",30);
//////////////////////// move right hand 20mm in 60 video frames///



(
~trackRH = Task.new({
	{
~synapse.sendMsg("/righthand_trackjointpos",2);

		////////////////////////////////////1/////
	2.wait;
	}.loop;
}).play;
)
////////////////////right hand world monitor////////////

(
OSCdef.new(
	\trackRH,
	{
		arg msg;
		msg.postln;
	},
	'/righthand_pos_world',nil,12345
	///'righthand_pos_body'// _screen  640x480y  ////
);
)


(
OSCdef.freeAll;
~trackRH.stop;
)
///////////////////////hit events////////////
(
OSCdef.new(
	\trackRH,
	{
		arg msg;
		msg.postln;
	},
	'/righthand',nil,12345

);
)

//////////////////////////////sound///////

(
g = Group.new;
j = Group.new;



~trackRH = Task.new({
	{
~synapse.sendMsg("/righthand_trackjointpos",3);
		~synapse.sendMsg("/lefthand_trackjointpos",3);
		~synapse.sendMsg("/head_trackjointpos",3);

	2.wait;
	}.loop;
}).play;

OSCdef.new(
	\trackRH,
	{
		arg msg;
		g.set(
			\freq, msg[1].linexp(0,640,100,4000),
			\amp, msg[2].linlin(0,480,0,-40).dbamp
		);
	},
	'/righthand_pos_screen',nil,12345

);

OSCdef.new(
	\trackRHhit,
	{
		arg msg;
		msg.postln;
		if(
			msg[1] == \forward,
			{g.set(\gate,0)}

		);
		if(
			msg[1] == \back,
			{
				{

	arg freq=440, gate=1, amp=0;
	var sig;
	sig = PinkNoise.ar(1!2);
	sig = BPF.ar(sig, freq.lag(0.05),0.3);
	sig = sig * amp;
	sig = sig * EnvGen.kr(Env.adsr(0.5,0,1,0.5,1,1),gate,doneAction: 2);
}.play(g);
			}
		);
	},
	'/righthand',nil,12345
);


	OSCdef.new(
	\trackLH,
	{
		arg mesg;
		j.set(
			\freqy, mesg[1].linexp(0,640,176,264),
			\ampy, mesg[2].linlin(0,480,0,-40).dbamp
		);
	},
	'/lefthand_pos_screen',nil,12345

);

OSCdef.new(
	\trackH,
	{
		arg mosg;
		j.set(
			\nharm, mosg[1].linexp(0,640,10,1),
			\detune,mosg[2].linlin(0,480,0,3)
		);
	},
	'/head_pos_screen',nil,12345

);


OSCdef.new(
	\trackLHhit,
	{
		arg mesg;
		mesg.postln;
		if(
			mesg[1] == \forward,
			{j.set(\gatey,0)}

		);
		if(
			mesg[1] == \back,
			{
				{

		arg freqy=100, nharm=1, detune=0, gatey=1,
		pan=0, amp=0.5;
		var sig, env;
		env = EnvGen.kr(Env.adsr(0.5,0.1,0.5,3),gatey);
		sig = Blip.ar(
			freqy *
			LFNoise1.kr(0.2!16).bipolar(detune.neg,detune).midiratio,nharm);

		sig = sig * LFNoise1.kr(0.5!16).exprange(0.1,1);
		sig = Splay.ar(sig);
		sig = Balance2.ar(sig[0],sig[1],pan);
		sig = sig * env * amp;


				}.play(j)
			}
		);
	},
	'/lefthand',nil,12345

);
)

(
OSCdef.freeAll;
~trackRH.stop;
)
s.boot;

/
