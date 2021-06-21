(
~b0 = Buffer.readChannel(s,"C:/Users/user/Music/cello/594.wav",channels:1);
~b1 = Buffer.readChannel(s,"C:/Users/user/Music/cello/602.wav",channels:1);
~b2 = Buffer.readChannel(s,"C:/Users/user/Music/cello/610.wav",channels:1);
~b3 = Buffer.readChannel(s,"C:/Users/user/Music/cello/616.wav",channels:1);
~b4 = Buffer.readChannel(s,"C:/Users/user/Music/cello/620.wav",channels:1);
~b5 = Buffer.readChannel(s,"C:/Users/user/Music/cello/624.wav",channels:1);
~b6 = Buffer.readChannel(s,"C:/Users/user/Music/cello/627.wav",channels:1);
~b7 = Buffer.readChannel(s,"C:/Users/user/Music/cello/631.wav",channels:1);
~b8 = Buffer.readChannel(s,"C:/Users/user/Music/cello/634.wav",channels:1);
~b9 = Buffer.readChannel(s,"C:/Users/user/Music/cello/640.wav",channels:1);
~b10 = Buffer.readChannel(s,"C:/Users/user/Music/cello/643.wav",channels:1);
~b11 = Buffer.readChannel(s,"C:/Users/user/Music/cello/646.wav",channels:1);
~b12 = Buffer.readChannel(s,"C:/Users/user/Music/cello/650.wav",channels:1);
~b13 = Buffer.readChannel(s,"C:/Users/user/Music/cello/653.wav",channels:1);
~b14 = Buffer.readChannel(s,"C:/Users/user/Music/cello/655.wav",channels:1);
~b15 = Buffer.readChannel(s,"C:/Users/user/Music/cello/657.wav",channels:1);
~b16 = Buffer.readChannel(s,"C:/Users/user/Music/cello/661.wav",channels:1);
~b17 = Buffer.readChannel(s,"C:/Users/user/Music/cello/664.wav",channels:1);
~b18 = Buffer.readChannel(s,"C:/Users/user/Music/cello/667.wav",channels:1);
~b19 = Buffer.readChannel(s,"C:/Users/user/Music/cello/679.wav",channels:1);
~b20 = Buffer.readChannel(s,"C:/Users/user/Music/cello/694.wav",channels:1);
~b21 = Buffer.readChannel(s,"C:/Users/user/Music/cello/698.wav",channels:1);
~b22 = Buffer.readChannel(s,"C:/Users/user/Music/cello/702.wav",channels:1);
~b23 = Buffer.readChannel(s,"C:/Users/user/Music/cello/707.wav",channels:1);
~b24 = Buffer.readChannel(s,"C:/Users/user/Music/cello/711.wav",channels:1);
~b25 = Buffer.readChannel(s,"C:/Users/user/Music/cello/715.wav",channels:1);
~b26 = Buffer.readChannel(s,"C:/Users/user/Music/cello/719.wav",channels:1);
~b27 = Buffer.readChannel(s,"C:/Users/user/Music/cello/723.wav",channels:1);
~b28 = Buffer.readChannel(s,"C:/Users/user/Music/cello/727.wav",channels:1);
~b29 = Buffer.readChannel(s,"C:/Users/user/Music/cello/731.wav",channels:1);
~b30 = Buffer.readChannel(s,"C:/Users/user/Music/cello/735.wav",channels:1);
~b31 = Buffer.readChannel(s,"C:/Users/user/Music/cello/739.wav",channels:1);
~b32 = Buffer.readChannel(s,"C:/Users/user/Music/cello/751.wav",channels:1);
~b33 = Buffer.readChannel(s,"C:/Users/user/Music/cello/755.wav",channels:1);
~b34 = Buffer.readChannel(s,"C:/Users/user/Music/cello/759.wav",channels:1);
~b35 = Buffer.readChannel(s,"C:/Users/user/Music/cello/763.wav",channels:1);
~b36 = Buffer.readChannel(s,"C:/Users/user/Music/cello/767.wav",channels:1);
)
(
(SynthDef.new(\buffer1,{
	arg buf;
	var sig1,env;
	sig1 = PlayBuf.ar(1,buf);
	env= EnvGen.kr(Env.perc(1,4),doneAction:2);
	Out.ar(0,sig1*env);
}).add;
);
(SynthDef.new(\buffer2,{
	arg buf1;
	var sig2,env;
	sig2 = PlayBuf.ar(1,buf1);
	env= EnvGen.kr(Env.perc(1,4),doneAction:2);
	Out.ar(1,sig2*env);
}).add;
);
(SynthDef.new(\buffer3,{
	arg buf2;
	var sig3,env;
		sig3 = PlayBuf.ar(1,buf2);
	env= EnvGen.kr(Env.perc(1,4),doneAction:2);
	Out.ar(2,sig3*env);
}).add;
);
(SynthDef.new(\buffer4,{
	arg buf3;
	var sig4,env;
		sig4 = PlayBuf.ar(1,buf3);

	env= EnvGen.kr(Env.perc(1,4),doneAction:2);
	Out.ar(3,sig4*env);
}).add;
);
)

(
Tdef(\pattern_buffer,
      {
		1.do({((

a= Pdef(\buffer_p1,

 Pbind(*[
    instrument: \buffer1,
					\dur,Pexprand(0.5,1.5,inf),
					\buf,Prand([~b0.bufnum,~b1.bufnum,~b2.bufnum,~b3.bufnum,~b4.bufnum,~b5.bufnum,~b6.bufnum,~b7.bufnum,~b8.bufnum,~b9.bufnum,~b10.bufnum,~b11.bufnum,~b12.bufnum,~b13.bufnum,~b14.bufnum,~b15.bufnum,~b16.bufnum,~b17.bufnum,~b18.bufnum,~b19.bufnum,~b20.bufnum,~b21.bufnum,~b22.bufnum,~b23.bufnum,~b24.bufnum,~b25.bufnum,~b26.bufnum,~b27.bufnum,~b28.bufnum,~b29.bufnum,~b30.bufnum,~b31.bufnum,~b32.bufnum,~b33.bufnum,~b34.bufnum,~b35.bufnum,~b36.bufnum],inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\buffer_p2,

 Pbind(*[
    instrument: \buffer2,
					\dur,Pexprand(0.5,1.5,inf),
					\buf1,Prand([~b0.bufnum,~b1.bufnum,~b2.bufnum,~b3.bufnum,~b4.bufnum,~b5.bufnum,~b6.bufnum,~b7.bufnum,~b8.bufnum,~b9.bufnum,~b10.bufnum,~b11.bufnum,~b12.bufnum,~b13.bufnum,~b14.bufnum,~b15.bufnum,~b16.bufnum,~b17.bufnum,~b18.bufnum,~b19.bufnum,~b20.bufnum,~b21.bufnum,~b22.bufnum,~b23.bufnum,~b24.bufnum,~b25.bufnum,~b26.bufnum,~b27.bufnum,~b28.bufnum,~b29.bufnum,~b30.bufnum,~b31.bufnum,~b32.bufnum,~b33.bufnum,~b34.bufnum,~b35.bufnum,~b36.bufnum],inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\buffer_p3,

 Pbind(*[
    instrument: \buffer3,
					\dur,Pexprand(0.5,1.5,inf),
					\buf2,Prand([~b0.bufnum,~b1.bufnum,~b2.bufnum,~b3.bufnum,~b4.bufnum,~b5.bufnum,~b6.bufnum,~b7.bufnum,~b8.bufnum,~b9.bufnum,~b10.bufnum,~b11.bufnum,~b12.bufnum,~b13.bufnum,~b14.bufnum,~b15.bufnum,~b16.bufnum,~b17.bufnum,~b18.bufnum,~b19.bufnum,~b20.bufnum,~b21.bufnum,~b22.bufnum,~b23.bufnum,~b24.bufnum,~b25.bufnum,~b26.bufnum,~b27.bufnum,~b28.bufnum,~b29.bufnum,~b30.bufnum,~b31.bufnum,~b32.bufnum,~b33.bufnum,~b34.bufnum,~b35.bufnum,~b36.bufnum],inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

a= Pdef(\buffer_p4,

 Pbind(*[
    instrument: \buffer4,
					\dur,Pexprand(0.5,1.5,inf),
					\buf3,Prand([~b0.bufnum,~b1.bufnum,~b2.bufnum,~b3.bufnum,~b4.bufnum,~b5.bufnum,~b6.bufnum,~b7.bufnum,~b8.bufnum,~b9.bufnum,~b10.bufnum,~b11.bufnum,~b12.bufnum,~b13.bufnum,~b14.bufnum,~b15.bufnum,~b16.bufnum,~b17.bufnum,~b18.bufnum,~b19.bufnum,~b20.bufnum,~b21.bufnum,~b22.bufnum,~b23.bufnum,~b24.bufnum,~b25.bufnum,~b26.bufnum,~b27.bufnum,~b28.bufnum,~b29.bufnum,~b30.bufnum,~b31.bufnum,~b32.bufnum,~b33.bufnum,~b34.bufnum,~b35.bufnum,~b36.bufnum],inf);

])

).play(quant:1)
)); 0.yield});
	}
)
)
Tdef(\pattern_buffer).play
Tdef(\pattern_buffer).stop
Tdef(\pattern_buffer).pause
Tdef(\pattern_buffer).reset