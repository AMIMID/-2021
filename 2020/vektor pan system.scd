
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Z height and circles
(
SynthDef(\pan1,
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
)

~p = Synth(\pan1);

/////////////////////////////////////////////////////////////////////////////////////////////3-coordinate pan system for liner grid (4x4x2 grid) similar to 4d sound


(
SynthDef(\pan2,
	{
		arg az1, az2,  el;
		var audio, sound , a_y, b_y, a_x1, a_x2, a_x3, a_x4, b_x1, b_x2, b_x3, b_x4,;
		sound = WhiteNoise.ar;

		z = PanAz.ar(2, sound, pos: el);
		Out.ar(40,z);
///////////////////////////////////////////////////////////////////////////////////////////////////////Z1
		a_y = PanAz.ar(4,InFeedback.ar(40,1), pos: az1); Out.ar(36,a_y);
		a_x1 =PanAz.ar(4,InFeedback.ar(36,1), pos: az2); Out.ar(0,a_x1); a_x2 =PanAz.ar(4,InFeedback.ar(37,1), pos: az2); Out.ar(4,a_x2);
		a_x3 =PanAz.ar(4,InFeedback.ar(38,1), pos: az2); Out.ar(8,a_x3); a_x4 =PanAz.ar(4,InFeedback.ar(39,1), pos: az2); Out.ar(12,a_x4);
///////////////////////////////////////////////////////////////////////////////////////////////////////Z2
		b_y = PanAz.ar(4,InFeedback.ar(41,1), pos: az1); Out.ar(32,b_y);
		b_x1 =PanAz.ar(4,InFeedback.ar(32,1), pos: az2); Out.ar(16,b_x1); b_x2 =PanAz.ar(4,InFeedback.ar(33,1), pos: az2); Out.ar(20,b_x2);
		b_x3 =PanAz.ar(4,InFeedback.ar(34,1), pos: az2); Out.ar(24,b_x3); b_x4 =PanAz.ar(4,InFeedback.ar(35,1), pos: az2); Out.ar(28,b_x4);
}
).add;
)

~p = Synth(\pan2);
