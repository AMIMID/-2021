(
{Out.ar(0,SinOsc.ar(200*(3/2),pi,2/3))}.play;
{Out.ar(1,SinOsc.ar(200*(4/3),LFSaw.ar(MouseX.kr(0.11,10)),3/4))}.play;
//
)


s.options.numOutputBusChannels=36;


{LFSaw.ar(MouseX.kr(0.1,1000))}.play