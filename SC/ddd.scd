(
(
SynthDef(\1,
	{
		var audio;


		#w, x, y, z = PanB.ar(PlayBuf.ar(1,~b0.bufnum, BufRateScale.kr(~b0.bufnum), loop: 1 ) * 1, LFSaw.kr(~b0.bufnum,pi), FSinOsc.kr(~b0.bufnum,0.5pi), 1);

		audio =     DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(0,audio * 1)
}).add
);
(
SynthDef(\2,
	{
		var audio;


		#w, x, y, z = PanB.ar(PlayBuf.ar(1,~b0.bufnum, BufRateScale.kr(~b0.bufnum), loop: 1 ) * 0.9, LFSaw.kr(~b0.bufnum,pi), FSinOsc.kr(~b0.bufnum,0.5pi), 1);

		audio =     DecodeB2.ar(2, w, x, y,0.5);
		Out.ar(0,audio * 1)
}).add
)
)


BufRd
(
a = Synth.new(\1);
a = Synth.new(\2);
)

{SinOsc.ar(100,add:1)}.plot




(
play({
    #w, x, y, z = PanB.ar(PlayBuf.ar(1, ~b0.bufnum), SinOsc.kr(~b0.bufnum), FSinOsc.kr(~b0.bufnum), 1);

    DecodeB2.ar(2, w, x, y, 1.2);
});

play({
    #w, x, y, z = PanB.ar(PlayBuf.ar(1,~b1.bufnum), SinOsc.kr(3000,pi), FSinOsc.kr(5000, 0.5pi),0.6);

    DecodeB2.ar(8, w, x, y, 0.32);
});
.
play({
    #w, x, y, z = PanB.ar(PlayBuf.ar(1,~b2.bufnum), SinOsc.kr(3000,pi), FSinOsc.kr(5000, 0.5pi), 0.3);
"C:/Users/petro_000/Desktop/Folder/CD/3.wav"
    DecodeB2.ar(12, w, x, y, 0.16);
});
);

s.makeWindow
s.scope
s.stopRecording;
s.meter



~b0 = Buffer.read(s,);
~b1 = Buffer.read(s,);
~b0 = Buffer.read(s,);
~b1 = Buffer.read(s,);
~b0.numFrames

