s.options.numOutputBusChannels=19;

s.options.device_("ASIO : ASIO4ALL v2");
s.waitForBoot;

(
{Out.ar(0,WhiteNoise.ar)}.play;
{Out.ar(8,SinOsc.ar(444))}.play;
)


////////////////////////
(
play({Out.ar(0,
	#w, x, y, z = PanB.ar(WhiteNoise.ar, MouseX.kr(0,2), 0, 0.1);
    //decode for 4 channels
    DecodeB2.ar(16, w, x, y, 0.5);
)});
)


{Out.ar(0,PanAz.ar(8,SinOsc.ar(444),MouseX.kr(0,2),1,1))}.play;
//////////////////////////////////////////////////////////////////

//////////////////////////midi////

MIDIClient.init;
MIDIIn.connectAll;

(

///////////////////sound/////

(
SynthDef(\pan,
	{
		arg az, el ;
		var audio, w, z_0, z_1, z_2, sound ;
		sound = WhiteNoise.ar;
		w = PanAz.ar(3, sound, pos: el);
		Out.ar(16,w);
		z_0 = PanAz.ar(8,InFeedback.ar(16,1), pos: az);
		Out.ar(0,z_0);
		z_1 = PanAz.ar(4,InFeedback.ar(17,1), pos: az);
        Out.ar(8,z_1);
		z_2 = PanAz.ar(4,InFeedback.ar(18,1), pos: az);
		Out.ar(12,z_2);
}
).add;
);

~p = Synth(\pan);
)
////////////////////////////////////////mididef
(
(
MIDIdef.cc(\joystick_a, {
	arg vel,nn,chan,src;
	[vel,nn,chan,src].postln;
	    ~p.set(\az,vel.linlin(0,127,0,2));

};
	,75,0,0);

);
(
MIDIdef.cc(\joystick_b, {
	arg vel,nn,chan,src;
	[vel,nn,chan,src].postln;
		~p.set(\el,vel.linlin(0,127,0,2));

};
	,76,0,0);

)
)




