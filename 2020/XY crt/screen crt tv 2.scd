(
{Out.ar(1,SinOsc.ar(440,pi/2))}.play;
{Out.ar(0,SinOsc.ar(440,SinOsc.ar(MouseX.kr(1,1000))))}.play;
)