s.boot
s.meter
s.freqscope
s.scope
s.plotTree
/////////////////////////////BUFFER AND LFNOISE SYNTH/////////////////////////////////////////////////
(
~b0 = Buffer.read(s,"C:/Users/petro_000/Desktop/New folder/Arvo_Paert_-_Tabula_Rasa_II.wav");
)
s.plotTree;
s.freeAll;
~b0.freeAll;
~b0.query;
~b0.play

(
SynthDef.new(\arvo,
	{
		arg amp=1, out=10, buf, start, end, freq=1;
		var sig, ptr;
		ptr = LFNoise1.ar(freq).range(start,end);
		sig = BufRd.ar(2,buf,ptr);
		sig = sig * amp;
		Out.ar(out, sig);
}).add;
)

(
x = Synth.new(\arvo,[\buf, ~b0.bufnum,\start,0,\end, ~b0.numFrames-1, \freq,0.00009]
);
y = Synth.new(\arvo,[\buf, ~b0.bufnum,\start,0,\end, ~b0.numFrames-1, \freq,0.0009]
);
z = Synth.new(\arvo,[\buf, ~b0.bufnum,\start,0,\end, ~b0.numFrames-1, \freq,0.0009]
);
)


/////////////////////////////////////PANNERS///////////////////////////////////////////////

(
SynthDef.new(\pan,
	{
		arg out=0, posfreq, width, in;
		var pan, pos, sig;

		sig = In.ar(in,2);
        pan = PanAz.ar(numChans:2 ,in:sig, pos:LFSaw.kr(MouseX.kr(0.1, 8, 'exponential')) , width:1);

		Out.ar(out,pan);
}).add;
)

k = Synth(\pan,[\in10])

//////////////////////////////////////GROUPS////////////////////////////////////////////////
