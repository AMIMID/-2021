(
SynthDef(\sp1,
	{
		arg  freq1, fr1;
		var audio;



		#w, x, y, z = PanB.ar(SinOsc.ar(fr1)* AmpComp.kr(fr1, 1,0.1), SinOsc.kr(freq1), 0.1);

		audio =   DecodeB2.ar(18, w, x, y, 1);

		Out.ar(0,audio);
}).add
)

s.makeWindow
s.scope
///////////////////////////////synths

(
(
 Synth.new(\sp1, [\gate,1, \fr1,1, \freq1,1*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,4, \freq1,4*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,9, \freq1,9*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,25, \freq1,25*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,64, \freq1,64*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,169, \freq1,169*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,441, \freq1,441*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1156, \freq1,1156*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,3025, \freq1,3025*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,7921, \freq1,7921*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,20736, \freq1,20736*1/100]);
)

(
 Synth.new(\sp1, [\gate,1, \fr1,10, \freq1,1*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,20, \freq1,2*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,30, \freq1,3*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,50, \freq1,5*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,8*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,130, \freq1,13*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,21*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,340, \freq1,34*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,55*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,890, \freq1,89*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,144*1/100]);
)






)
(
(
 Synth.new(\sp1, [\gate,1, \fr1,40, \freq1,4*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,60, \freq1,6*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,80, \freq1,8*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,90, \freq1,9*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,100, \freq1,10*1/100]);
 Synth.new(\sp1, [\gate,1, \fr1,120, \freq1,12*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,140, \freq1,14*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,150, \freq1,15*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,160, \freq1,16*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,180, \freq1,18*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,200, \freq1,20*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,210, \freq1,21*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,220, \freq1,22*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,240, \freq1,23*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,250, \freq1,25*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,270, \freq1,27*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,280, \freq1,28*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,300, \freq1,30*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,320, \freq1,32*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,330, \freq1,33*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,350, \freq1,35*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,360, \freq1,36*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,400, \freq1,40*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,420, \freq1,42*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,440, \freq1,44*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,450, \freq1,45*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,480, \freq1,48*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,490, \freq1,49*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,500, \freq1,50*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,550, \freq1,55*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,560, \freq1,56*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,600, \freq1,60*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,640, \freq1,64*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,660, \freq1,66*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,700, \freq1,70*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,720, \freq1,72*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,770, \freq1,77*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,800, \freq1,80*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,810, \freq1,81*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,840, \freq1,84*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,880, \freq1,88*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,900, \freq1,90*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,960, \freq1,96*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,990, \freq1,99*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1000, \freq1,100*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1080, \freq1,108*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1100, \freq1,110*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1200, \freq1,120*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1210, \freq1,121*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1320, \freq1,132*1/100]);
Synth.new(\sp1, [\gate,1, \fr1,1440, \freq1,144*1/100]);

)


)






(




(
 Synth.new(\sp, [\gate,1, \fr1,40, \freq1,0.1,\freqq1,0.1]);
 Synth.new(\sp, [\gate,1, \fr1,80, \freq1,0.2,\freqq1,0.2]);
 Synth.new(\sp, [\gate,1, \fr1,120, \freq1,0.3,\freqq1,0.3]);
 Synth.new(\sp, [\gate,1, \fr1,160, \freq1,0.4,\freqq1,0.4]);
 Synth.new(\sp, [\gate,1, \fr1,200, \freq1,0.5,\freqq1,0.5]);
 Synth.new(\sp, [\gate,1, \fr1,240, \freq1,0.6,\freqq1,0.6]);
 Synth.new(\sp, [\gate,1, \fr1,280, \freq1,0.7,\freqq1,0.7]);
 Synth.new(\sp, [\gate,1, \fr1,320, \freq1,0.8,\freqq1,0.8]);
 Synth.new(\sp, [\gate,1, \fr1,360, \freq1,0.9,\freqq1,0.9]);
 Synth.new(\sp, [\gate,1, \fr1,400, \freq1,1,\freqq1,1]);
 Synth.new(\sp, [\gate,1, \fr1,480, \freq1,1.1,\freqq1,1.1]);
 Synth.new(\sp, [\gate,1, \fr1,560, \freq1,1.2,\freqq1,1.2]);
 Synth.new(\sp, [\gate,1, \fr1,600, \freq1,1.3,\freqq1,1.3]);
 Synth.new(\sp, [\gate,1, \fr1,640, \freq1,1.4,\freqq1,1.4]);
 Synth.new(\sp, [\gate,1, \fr1,680, \freq1,1.5,\freqq1,1.5]);
 Synth.new(\sp, [\gate,1, \fr1,720, \freq1,1.6,\freqq1,1.6]);
);

(
a = Synth.new(\sp, [\gate,1, \fr1,2880, \freq1,1.6,\freqq1,1.6]);
b = Synth.new(\sp, [\gate,1, \fr1,2560, \freq1,1.5,\freqq1,1.5]);
c = Synth.new(\sp, [\gate,1, \fr1,2240, \freq1,1.4,\freqq1,1.4]);
d = Synth.new(\sp, [\gate,1, \fr1,1960, \freq1,1.3,\freqq1,1.3]);
e = Synth.new(\sp, [\gate,1, \fr1,1920, \freq1,1.2,\freqq1,1.2]);
f = Synth.new(\sp, [\gate,1, \fr1,1680, \freq1,1.1,\freqq1,1.1]);
g = Synth.new(\sp, [\gate,1, \fr1,1600, \freq1,1,\freqq1,1]);
k = Synth.new(\sp, [\gate,1, \fr1,1440, \freq1,0.9,\freqq1,0.9]);
l = Synth.new(\sp, [\gate,1, \fr1,1400, \freq1,0.8,\freqq1,0.8]);
m = Synth.new(\sp, [\gate,1, \fr1,1280, \freq1,0.7,\freqq1,0.7]);
m = Synth.new(\sp, [\gate,1, \fr1,1200, \freq1,0.6,\freqq1,0.6]);
o = Synth.new(\sp, [\gate,1, \fr1,1120, \freq1,0.5,\freqq1,0.5]);
p = Synth.new(\sp, [\gate,1, \fr1,1000, \freq1,0.4,\freqq1,0.4]);
q = Synth.new(\sp, [\gate,1, \fr1,960, \freq1,0.3,\freqq1,0.3]);
r = Synth.new(\sp, [\gate,1, \fr1,840, \freq1,0.2,\freqq1,0.2]);
s = Synth.new(\sp, [\gate,1, \fr1,640, \freq1,0.1,\freqq1,0.1]);
)
)
a.set(\fr,300)
a.set(\freq,0)
a.set(\freq1,1)