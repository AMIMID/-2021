(
s.options.device_("ASIO : ASIO4ALL v2");
s.options.numOutputBusChannels=8;
TempoClock.default.tempo_(120/60);
MIDIClient.init;
MIDIIn.connectAll;
)
////////////////////////////////////////////////////////////////
(
SynthDef(\bell,
	{
		arg  freq1, fr1;
		var audio;



	//	#w, x, y, z = PanB.ar(SinOsc.ar(fr1)* AmpComp.kr(fr1, 128,0.1), SinOsc.kr(freq1));

		//audio =   DecodeB2.ar(32, w, x, y, 1);

		audio = PanAz.ar(2,SinOsc.ar(fr1)* AmpComp.kr(fr1,140,1.2),SinOsc.kr(freq1),0.5,MouseX.kr(1,2));

		Out.ar(0,audio);
}).add
)

s.makeWindow
s.scope
///////////////////////////////synths


(
Synth.new(\bell, [\gate,1, \fr1,256*1, \freq1,160*1*1/(256*1)]);
Synth.new(\bell, [\gate,1, \fr1,256*2, \freq1,256*2*1/256]);
Synth.new(\bell, [\gate,1, \fr1,256*(3/2), \freq1,256*(3/2)*1/256]);
Synth.new(\bell, [\gate,1, \fr1,256*(4/3), \freq1,256*(4/3)*1/256]);
)

(
Synth.new(\bell, [\gate,1, \fr1,160*1, \freq1,160*1*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*3, \freq1,160*3*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*2, \freq1,160*2*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(5/3), \freq1,160*(5/3)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(6/4), \freq1,160*(6/4)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(7/5), \freq1,160*(7/5)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(8/6), \freq1,160*(8/6)*1/(320*1)]);
)

(
Synth.new(\bell, [\gate,1, \fr1,160*1, \freq1,160*1*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*4, \freq1,160*4*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(5/2), \freq1,160*(5/2)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(6/3), \freq1,160*(6/3)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(7/4), \freq1,160*(7/4)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(8/5), \freq1,160*(8/5)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(9/6), \freq1,160*(9/6)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(10/7), \freq1,160*(10/7)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(11/8), \freq1,160*(11/8)*1/(320*1)]);
Synth.new(\bell, [\gate,1, \fr1,160*(12/9), \freq1,160*(12/9)*1/(320*1)]);
)
