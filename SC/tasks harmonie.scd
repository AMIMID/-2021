/////////////////////////////////////////////////HARM1///////////////////////////////////////////
(
Tdef(\harm1,
      {
		1.do({(
Pdef(\cracklee,

 Pbind(*[
    instrument: \crackle,
        dur:  10, audio: Pwhite(1,100,1)])
		).play(quant:1)); 4.yield});

        1.do({(
Pdef(\phase1d,

 Pbind(*[
    instrument: \polarity2,
        dur:  5, audio3: Pwhite(1,50,10)])
).play(quant:1)); 5.yield});

		1.do({(
Pdef(\phase1c,

 Pbind(*[
    instrument: \eye,
        dur:  3, audio2: Pwhite(1,50,10)])
).play(quant:1)); 5.yield});

		1.do({(
Pdef(\phase1b,

 Pbind(*[
    instrument: \throat,
        dur:  5, audio1: Pwhite(1,50,10)])
).play(quant:1)); 0.1.yield});

		1.do({(
Pdef(\phase1a,

 Pbind(*[
    instrument: \polarity,
        dur:  5, audio: Pwhite(1,100,10)])
).play(quant:1)); 3.yield});
      }
)
)

s.scope

Tdef(\harm1).play
Tdef(\harm1).stop
Tdef(\harm1).pause
Tdef(\harm1).reset

//////////////////////////////////////////HARM3//////////////////////////////////////////////////////////////

(
Tdef(\harm3,
      {
		1.do({(
Pdef(\pharm3d,

 Pbind(*[
    instrument: \sharm3d,
        dur:  6,

	audio3: Pwhite(1,50,3)
])
).play(quant:1)
); 10.yield});

        1.do({(
Pdef(\pharm3c,

 Pbind(*[
    instrument: \sharm3c,
        dur:  10,

		audio2: Pwhite(1,50,3)
])
).play(quant:1)
); 20.yield});

1.do({(
Pdef(\pharm3a,

 Pbind(*[
    instrument: \sharm3a,
        dur:  8,

		audio: Pwhite(1,100,5)
])
).play(quant:1)
); 10.yield});

        1.do({(
Pdef(\pharm3b,

 Pbind(*[
    instrument: \sharm3b,
        dur:  10,
		audio1: Pwhite(1,50,5)
])
).play(quant:1)
); 20.yield});
		1.do({(
Pdef(\pharm3e,

 Pbind(*[
    instrument: \sharm3e,
        dur:  10,

	audio3: Pwhite(1,50,4)
])
).play(quant:1)
); 10.yield});

        1.do({(
Pdef(\pharm3f,

 Pbind(*[
    instrument: \sharm3f,
        dur:  10,

	audio3: Pwhite(1,50,4)
])
).play(quant:1)
); 10.yield});


      }
)
)

s.scope

Tdef(\harm3).play
Tdef(\harm3).stop
Tdef(\harm3).pause
Tdef(\harm3).reset
///////////////////////////////////////////////////////////HARM2//////////////////////////////////
(
Tdef(\harm2,
      {
		1.do({(
Pdef(\cracklee,

 Pbind(*[
    instrument: \crackle,
        dur:  10, audio: Pwhite(1,100,1)])
		).play(quant:1)); 4.yield});

        1.do({(
Pdef(\pharm2a,

 Pbind(*[
    instrument: \sharm2a,
        dur:  15,

		audio: Pwhite(1,20,8)])).play(quant:1)); 4.yield});

		1.do({(
Pdef(\pharm2b,

 Pbind(*[
    instrument: \sharm2b,
        dur:  8,

		audio1: Pwhite(1,100,8)])).play(quant:1)); 4.yield});

		1.do({(
Pdef(\pharm2c,

 Pbind(*[
    instrument: \sharm2c,
        dur:  9,

		audio2: Pwhite(1,200,8)])).play(quant:1)); 0.1.yield});

		1.do({(
Pdef(\phaem2d,

 Pbind(*[
    instrument: \sharm2d,
        dur:  10,

	audio3: Pwhite(1,100,8)])).play(quant:1)); 0.1.yield});
      }
)
)

s.scope

Tdef(\harm2).play
Tdef(\harm2).stop
Tdef(\harm2).pause
Tdef(\harm2).reset
////////////////////////////////////////////////////////HARM4///////////////////////////////////////////////////////////


(
Tdef(\harm4,
      {
		1.do({(
Pdef(\pharm4a,

 Pbind(*[
    instrument: \sharm4a,
        dur:  5,

		audio: Pwhite(1,100,15)
])
).play(quant:1)
); 3.yield});

        1.do({(
Pdef(\pharm4b,

 Pbind(*[
    instrument: \sharm4b,
        dur:  5,
		audio1: Pwhite(1,50,15)
])
).play(quant:1)
); 3.yield});

1.do({(
Pdef(\pharm4c,

 Pbind(*[
    instrument: \sharm4c,
        dur:  5,

		audio2: Pwhite(1,50,15)
])
).play(quant:1)
); 5.yield});

        1.do({(
Pdef(\pharm4d,

 Pbind(*[
    instrument: \sharm4d,
        dur:  5,

	audio3: Pwhite(1,50,15)
])
).play(quant:1)
); 5.yield});
		1.do({(
Pdef(\pharm4e,

 Pbind(*[
    instrument: \sharm4e,
        dur:  10,

	audio3: Pwhite(1,50,15)
])
).play(quant:1)
); 0.1.yield});

        1.do({(
Pdef(\pharm4f,

 Pbind(*[
    instrument: \sharm4f,
        dur:  10,

	audio3: Pwhite(1,50,15)
])
).play(quant:1)
); 0.1.yield});


      }
)
)

s.scope

Tdef(\harm4).play
Tdef(\harm4).stop
Tdef(\harm4).pause
Tdef(\harm4).reset
////////////////////////////////////////////////////////////////////////////////////////////////////
