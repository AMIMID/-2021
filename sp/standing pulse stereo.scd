s.options.device_("ASIO : ASIO4ALL v2");

o=s.options

o.memSize;

o.memSize = 2.pow(16);

s.options.numOutputBusChannels=3
////////////////////////////////
//////////////////////////////////////////////////////

(
SynthDef(\sp1,
	{
		arg  freq1, fr1;
		var audio;

		#w, x, y, z = PanB.ar(SinOsc.ar(fr1)* AmpComp.kr(fr1, fr1,0.1),SinOsc.kr(freq1),gain:0.05);

		audio =   DecodeB2.ar(16, w, x, y, 1);

		Out.ar(2,audio);
}).add
);



///////////////////////////////synths

/////////////////////////////////////////////////////////////////////////
(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,0.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,1.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,2.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,2.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,2.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,2.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,2.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,2.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,2.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,2.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,2.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,3.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,3.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,3.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,3.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,3.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,3.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,3.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,3.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,4.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,4.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,4.3*1/4]);

)


)
/////////////////////////////////////////////////////////12

(
(
 Synth.new(\sp1, [\gate,1, \fr1,40*1/2, \freq1,0.01*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,60*1/2, \freq1,0.02*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80*1/2, \freq1,0.03*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,90*1/2, \freq1,0.04*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,100*1/2, \freq1,0.05*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120*1/2, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,140*1/2, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,150*1/2, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,160*1/2, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,180*1/2, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,200*1/2, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,210*1/2, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,220*1/2, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,240*1/2, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,250*1/2, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,270*1/2, \freq1,0.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280*1/2, \freq1,0.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,300*1/2, \freq1,0.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320*1/2, \freq1,1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,330*1/2, \freq1,1.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,350*1/2, \freq1,1.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360*1/2, \freq1,1.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400*1/2, \freq1,1.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,420*1/2, \freq1,1.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,440*1/2, \freq1,1.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,450*1/2, \freq1,1.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480*1/2, \freq1,1.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,490*1/2, \freq1,1.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,500*1/2, \freq1,2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,550*1/2, \freq1,2.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560*1/2, \freq1,2.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600*1/2, \freq1,2.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640*1/2, \freq1,2.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,660*1/2, \freq1,2.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,700*1/2, \freq1,2.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720*1/2, \freq1,2.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,770*1/2, \freq1,2.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,800*1/2, \freq1,2.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,810*1/2, \freq1,3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,840*1/2, \freq1,3.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,880*1/2, \freq1,3.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,900*1/2, \freq1,3.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,960*1/2, \freq1,3.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,990*1/2, \freq1,3.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1000*1/2, \freq1,3.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1080*1/2, \freq1,3.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1100*1/2, \freq1,3.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1200*1/2, \freq1,4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1210*1/2, \freq1,4.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1320*1/2, \freq1,4.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1440*1/2, \freq1,4.3*1/4]);
)


)

/////////////////////////////////////////////////////////////////////12 *10
(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*10]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*10]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*10]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*10]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*10]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*10]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*10]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*10]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*10]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*10]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*10]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*10]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,0.4*10]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.5*10]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.6*10]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,0.7*10]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.8*10]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.9*10]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,1*10]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,1.1*10]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1.2*10]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.3*10]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.4*10]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.5*10]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.6*10]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*10]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.8*10]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.9*10]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,2*10]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,2.1*10]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,2.2*10]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,2.3*10]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,2.4*10]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,2.5*10]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,2.6*10]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,2.7*10]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,2.8*10]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,2.9*10]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,3*10]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,3.2*10]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,3.3*10]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,3.4*10]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,3.5*10]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,3.6*10]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,3.7*10]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,3.8*10]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,3.9*10]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,4*10]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,4.1*10]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,4.2*10]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,4.3*10]);
)


)

////////////////////////////////////////////////////////////////////reverse order

(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,4.3*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,4.2*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,4.1*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,4*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,3.9*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,3.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,3.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,3.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,3.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,3.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,3.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,3.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,2.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,2.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,2.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,2.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,2.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,2.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,2.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,2.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,2.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,1.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,1.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,1.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,1.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,0.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,0.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,0.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,0.05*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,0.04*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,0.03*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,0.02*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,0.01*1/4]);
)


)


///////////////////////////////////////////////////////////////////8
(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*1/2]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.8*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,0.9*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.1*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.2*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.3*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.4*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.5*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,1.6*1/2]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,1.7*1/2]);
);


)
/////////////////////////////////////old patch
(
(
 Synth.new(\sp1, [\gate,1, \fr1,40*1/2, \freq1,0.01*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80*1/2, \freq1,0.02*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120*1/2, \freq1,0.03*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,160*1/2, \freq1,0.04*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,200*1/2, \freq1,0.05*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,240*1/2, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280*1/2, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320*1/2, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360*1/2, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400*1/2, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480*1/2, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560*1/2, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600*1/2, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640*1/2, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,680*1/2, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720*1/2, \freq1,0.7*1/4]);
);

(
										a = Synth.new(\sp1, [\gate,1, \fr1,2880*1/2, \freq1,2.2*1/4]);
										b = Synth.new(\sp1, [\gate,1, \fr1,2560*1/2, \freq1,2.1*1/4]);
										c = Synth.new(\sp1, [\gate,1, \fr1,2240*1/2, \freq1,2*1/4]);
										d = Synth.new(\sp1, [\gate,1, \fr1,1960*1/2, \freq1,1.9*1/4]);
										e = Synth.new(\sp1, [\gate,1, \fr1,1920*1/2, \freq1,1.8*1/4]);
										f = Synth.new(\sp1, [\gate,1, \fr1,1680*1/2, \freq1,1.7*1/4]);
										g = Synth.new(\sp1, [\gate,1, \fr1,1600*1/2, \freq1,1.6*1/4]);
										k = Synth.new(\sp1, [\gate,1, \fr1,1440*1/2, \freq1,1.5*1/4]);
										l = Synth.new(\sp1, [\gate,1, \fr1,1400*1/2, \freq1,1.4*1/4]);
										m = Synth.new(\sp1, [\gate,1, \fr1,1280*1/2, \freq1,1.3*1/4]);
							        	m = Synth.new(\sp1, [\gate,1, \fr1,1200*1/2, \freq1,1.2*1/4]);
									    o = Synth.new(\sp1, [\gate,1, \fr1,1120*1/2, \freq1,1.1*1/4]);
										p = Synth.new(\sp1, [\gate,1, \fr1,1000*1/2, \freq1,1*1/4]);
										q = Synth.new(\sp1, [\gate,1, \fr1,960*1/2, \freq1,0.9*1/4]);
										r = Synth.new(\sp1, [\gate,1, \fr1,840*1/2, \freq1,0.8*1/4]);

)
)

//////////////////////////////////////////////////////////////////////////////

(
(SynthDef(\tria1,
	{   arg decay,mul,mul1;

		var sig1,env;

		env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig1= InFeedback.ar(2)*(Dust2.ar(mul));
		Out.ar(0,sig1*env);
}).add;
);
(SynthDef(\tria2,
	{   arg decay,mul,mul1;
		var sig2,env;

	env=EnvGen.kr(Env.new([0,1,1,0],[0,decay,0]),gate:1,doneAction:2);
		sig2=InFeedback.ar(2)*(Dust2.ar(mul));


		Out.ar(1,sig2*env);
}).add;
);

)
//////////////////
///*(SinOsc.ar(mul1,mul:3)* AmpComp.kr(mul1, 20,0.2))
///////////////////////
(
Tdef(\pattern_tria,
      {

		1.do({(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,0.01*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,0.02*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,0.03*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,0.04*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,0.05*1/4]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,0.06*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,0.07*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,0.08*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,0.09*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,0.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,0.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,0.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,0.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,0.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,0.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,0.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,0.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,0.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,1.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,1.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,1.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,1.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,1.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,1.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,1.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,1.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,1.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,2.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,2.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,2.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,2.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,2.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,2.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,2.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,2.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,2.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,3.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,3.3*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,3.4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,3.5*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,3.6*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,3.7*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,3.8*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,3.9*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,4*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,4.1*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,4.2*1/4]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,4.3*1/4]);

)


); 0.yield});
		1.do({((

y= Pdef(\p_tria1,
 Pbind(*[
    instrument: \tria1,
					\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000, 2000000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf),inf),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 0.yield});
		1.do({((

y= Pdef(\p_tria2,
 Pbind(*[
    instrument: \tria2,
							\dur,0.1,
					\decay,0.1,
					\mul, Pseg( Pseq([2000000, 2000], inf), Pseq([8, 8],inf), Pseq([\exp, \exp],inf),inf),
					\mul1,Pexprand(20,20000,inf);

])

).play(quant:1)
)); 0.yield});

	}
)
)
Tdef(\pattern_tria).play
Tdef(\pattern_tria).stop
Tdef(\pattern_ena).pause
Tdef(\pattern_ena).reset
y.play
y.stop
z.stop
////////////////
////////////////


(
s.latency= 0.05;
s.waitForBoot{
        l= 800;                                         //global window size
        b= Buffer.alloc(s, l, 4);

        SynthDef(\avTrk, {|in= 0, bufnum, rate= 40, sample= 1|
                var z= In.ar(in, 4);
                var trig= Impulse.ar(rate*0.92);        //compensate
                var index= Phasor.ar(trig, sample, 0, BufFrames.ir(bufnum)-1);
                BufWr.ar(z, bufnum, index, 0);
                SendTrig.ar(trig, 0, bufnum);
        }).add;

};
)
(
//--setup
var width= l+580, height= l;
var w= Window("18", Window.screenBounds).front.fullScreen;
var u= UserView(w, Rect(0, 0, width, height));

//--variables
var theta= 0;
var fps= 60;
var arr= Array.fill(l, 0);              //same as half windowsize above
var o= OSCFunc({|m|
        if(m[2]==0, {                   //redraw once for each cycle of amps
                b.getn(0, l-1, {|data| {arr= data; u.refresh}.defer});
        });
}, '/tr', s.addr);
var trk= Synth(\avTrk, [\in, 0, \bufnum, b, \rate, fps]);

//--interface
~trails= 1;
~speed= 0;
~sample= 1;
~amp= 0.5;
~version= 0;

//--main loop
u.drawFunc= {
        trk.set(\sample, ~sample);
        Pen.fillColor= Color.white(0, ~trails);
        Pen.fillRect(u.bounds);         //manually clear
        Pen.strokeColor= Color.black;
        switch(~version,
                2, {                    //line
                        Pen.rotate(theta, width/2, height/2);
                        Pen.translate(0, height*0.5);
                        arr.do{|y, x|
                                var p= Point(x, y*(height*~amp));
                                if(x==0, {Pen.moveTo(p)}, {Pen.lineTo(p)});
                        };
                        Pen.stroke;
                },
                0, {                    //warp
                        Pen.rotate(theta, width/2, height/2);
                        Pen.translate(width*0.5, height*0.45);
                        arr.do{|x, y|
                                var p= Point(x*~amp, y*~amp).rotate(x*2pi);
                                if(x==0, {Pen.moveTo(p)}, {Pen.lineTo(p)});
                        };
                        Pen.stroke;
                },
                1, {                    //flower
                        Pen.translate(width*0.5, height*0.5);
                        Pen.moveTo(Point(arr[0], 0)*arr[0]);
                        arr.do{|y, x|
                                var p= Point(y, x)*y;
                                var a= x%width/width*2pi+theta;
                                Pen.lineTo(p.rotate(a));
                        };
                        Pen.stroke;
                }
        );
        theta= theta+~speed;
};

//--window management
u.clearOnRefresh= false;        //do not erase - just draw on top of
w.onClose= {
        trk.free;
        o.free;
};
w.front;
CmdPeriod.doOnce({if(w.isClosed.not, {w.close})});
//note no animate_ here. the responder is driving the animation
)

//change these while the program is running
~sample= 2;
~sample= 10;
~sample= 1;
~trails= 0.2;
~speed= 0.1;
~speed= -0.05;
~trails= 0.01;
~amp= 2
~speed= pi*0.25;
~amp= 0.2;
~sample= 2;
~version= 0;
~trails= 0.2;
~version= 2;
~sample= 1;
~version= 1;
~speed= 2pi*1.001;
~amp= 0.5;
