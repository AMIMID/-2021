(
w = Platform.resourceDir +/+ "";
x = Platform.resourceDir +/+ "C:/Users/petro_000/Desktop/ambisonic mik1/1/X.wav";
y = Platform.resourceDir +/+ "C:/Users/petro_000/Desktop/ambisonic mik1/1/Y.wav";
z = Platform.resourceDir +/+ "C:/Users/petro_000/Desktop/ambisonic mik1/1/Z.wav";
);
(
~w0 = Buffer.read(s,w);
~x0 = Buffer.read(s,"C:/Users/petro_000/Desktop/ambisonic mik1/1/Y1.wav");
~y0 = Buffer.read(s,"C:/Users/petro_000/Desktop/ambisonic mik1/1/Y2.wav");
~z0 = Buffer.read(s,"C:/Users/petro_000/Desktop/ambisonic mik1/1/Z.wav");
)

s.quit
s.scope
(
a = Synth.new(\y3);
a = Synth.new(\x2);
)
(
(
SynthDef(\w1,
	{
		var audio;


		#w, x, y, z = PanB2.ar(PlayBuf.ar(2, ~w0.bufnum, 1, loop: 1 ),LFSaw.ar(0.05,pi), FSinOsc.kr(0.031, 0.5pi), 0.5);

		audio =     DecodeB2.ar(8, w, x, y,0.5)/;
		Out.ar(0,audio)
}).add
);
(
SynthDef(\x2,
	{
		var audio,sig;

        sig = PlayBuf.ar(1, ~x0.bufnum,rate:0.4 ,loop: 1);
		#w, x, y, z = PanB2.ar(sig, MouseX.kr(-1,1), 0.5);

		audio =     DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(1,audio*4)
}).add
);
(
SynthDef(\y3,
	{
		var audio;


		#w, x, y, z = PanB2.ar(PlayBuf.ar(1, ~y0.bufnum, rate:0.4,loop: 1 ), MouseY.kr(-1,1), 0.5);

		audio =     DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(0,audio*4)
}).add
);
(
SynthDef(\z4,
	{
		var audio;


		#w, x, y, z = PanB2.ar(PlayBuf.ar(2, ~z0.bufnum, 1, loop: 1 ), LFSaw.ar(0.05,pi), FSinOsc.kr(0.031, 0.5pi), 0.1);

		audio =     DecodeB2.ar(8, w, x, y,0.5);
		Out.ar(4,audio)
}).add
);
)

///////////////////////////////////2////////////////////////////////////////////////////

(
SynthDef(\x2,
	{
		var audio;

		audio =  PanAz.ar(
        2,                 // numChans
        PlayBuf.ar(2, ~x0.bufnum, 1, loop: 1 ),     // in
			        MouseX.kr(-1,1), // pos
        0.5,            // level
        2            // width
    );
		Out.ar(0,audio)
}).add
)

/////////////////////////////////////////////////////////////////////////3/////////////////////////////

Buffer.freeAll;

~x0 = Buffer.readChannel(s,,channels:[1]);
~x0.sampleRate;
~x0.query;
////////////////////////////4///////////////////////////






