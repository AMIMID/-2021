(
{
Out.ar(0,LFSaw.ar(MouseX.kr(25.5,440)));
Out.ar(1,SinOsc.ar(MouseY.kr(25.5,440)));
}.play
)



s.options.device_("ASIO : ASIO4ALL v2");

s.options.numOutputBusChannels= 4;



(
{	   // Out.ar(0,PanAz.ar(4,SinOsc.ar(MouseX.kr(12.525,880)),SinOsc.kr(1)));
		Out.ar(1,PanAz.ar(4,LFSaw.ar(MouseY.kr(12.525,880)),SinOsc.kr(100)));
}.play
)

(
{	    Out.ar(0,PanAz.ar(4,SinOsc.ar(MouseX.kr(12.525,880)),SinOsc.kr(1000)));
		//Out.ar(0,PanAz.ar(4,LFSaw.ar(MouseY.kr(12.525,880)),SinOsc.kr(1)));
}.play
)
