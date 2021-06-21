{SinOsc.ar(880 + SinOsc.ar(110*SinOsc.kr(1/4),mul:110 *2* SinOsc.kr(1/2,mul:SinOsc.ar(1/2+1/2))))}.play



FreqScope.new(1000, 600, 0, server: s);

{SinOsc.ar(440)}.play


{SinOsc.ar(440 + SinOsc.ar(220+ SinOsc.ar(880,mul:880 *0.1),mul:880 *0.1))}.play

{SinOsc.ar(512 + SinOsc.ar(287,mul:287 *MouseX.kr(0.01,11)))}.play

{SinOsc.ar(880 + SinOsc.ar(110,mul:110 *MouseX.kr(0.1,1)))}.play