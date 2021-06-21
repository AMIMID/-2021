



[23,2,-5.0,3].squared


[7,13,3,5].plot;

[1.squared,2.squared,3.squared,4.squared,5.squared,6.squared].plot;

///

language vs language

5.isPrime;
3000.isPrime;


(1..100).select( { | x | x.isPrime} )


/////

s.scope(1)

-Some UGENs

{SinOsc.kr}.scope
{Pulse.kr(mul: 0.2) }.play
{LFTri.ar}.play
{Saw.ar}.play
{Blip.ar(200,Line.kr(1, 20, 10))}.play

(
{Blip.ar(200,MouseX.kr(1, 20))}.play
)





- Ugens inside Ugens

MouseX
Line




{SinOsc.ar(SinOsc.kr(10).range(100,200))}.play





//////



variables

local vs global






(	// assign a string
	a = "I will stick around";
)

(	// It persists
	a;
)

(	// Now declare a local variable of the same name
   //make sure to enter BOTH lines:
	var a;
	a = "I won't stick around";
)

(	// The interpreter variable was left unaffected
	a;
)


~yoi = 123

~yoi + 1

{SinOsc.ar(200, mul:0.5)}.draw







// practice

/////


I.Label every argument in every message.

	(
	{
		BPZ2.ar(WhiteNoise.ar(LFPulse.kr(LFPulse.kr(0.09, 0, 0.16, 10, 7), 0, 0.25, 0.1)))
	}.play
	)



(
{
BPZ2.ar(
	    in: WhiteNoise.ar(
				          mul: LFPulse.kr(
				                        freq: LFPulse.kr(
						                                  freq: 0.09, iphase: 0, width: 0.16, mul: 10, add: 7),

					                    iphase: 0, mul: 0.25, add: 0.1
				)
			)
		)
	}.play
)

 	//////////////////////////////////////////////////////////////////////////

	1.
	(
	{
		RLPF.ar(LFPulse.ar(SinOsc.kr(0.2, 0, 10, 21), 0, 0.1), 100,0.1).clip2(0.4)
	}.play
	)

	//////////////////////////////////////////////////////////////////////////
	2. (
	{
		var lfoDepth, lfoRate, freq, filtered ;

		lfoDepth = MouseY.kr(200, 8000, \exponential);

		lfoRate = MouseX.kr(4, 60, 'exponential');
		freq = LFSaw.kr(lfoRate, 0, lfoDepth, lfoDepth * 1.2);
		filtered = RLPF.ar(WhiteNoise.ar([0.03,0.03]), freq, 0.1);
		CombN.ar(filtered, 0.3, 0.3, 2, 1, filtered);
	}.play
	)


II. Make a list of each Class.

Here is an example:

	(
	// analog bubbles
	{ var freq, audio;
		freq = LFSaw.kr(0.4, 0, 24, LFSaw.kr([8,7.23], 0, 3, 80));
			// glissando function
		freq = freq.midicps;
		audio = SinOsc.ar(freq, 0, 0.04);
		CombN.ar(audio, 0.2, 0.2, 4)
			// echoing sine wave
	}.play
	)

	class		selector	arguments
	LFSaw			kr		freq: 0.4,		iphase: 0,		mul: 4 LFSaw.kr([8,7.23], 0, 3, 80)
	LFSaw			kr		freq: [8, 7.23]	iphase: 0,		mul: 3		add: 8
	SinOsc			ar		freq: freq, 	phase:	0, 		mul: 0.04
	CombN			ar		in: audio, 		maxdelay: 0.2, 	delay: 0.2, 	decay: 4
							    audio: SinOsc.ar(freq, 0, 0.04)

	//////////////////////////////////////////////////////////////////////////

	1. (
	{  var freq, audio, cutoff;
		freq = 	 SinOsc.kr(05, 0, 80, 160);
		cutoff = SinOsc.kr([0.6,0.7], 0, 3600, 4000);
		audio =  LFPulse.ar(freq, 0, 0.4, 0.05);
		audio =  RLPF.ar(audio, cutoff, 0.2);
		audio =  CombL.ar(audio, 0.3, [0.2,0.25], 2);
	}.play
	)

	//////////////////////////////////////////////////////////////////////////

	2. (
	{
		var audio, freq, cutoffFreq;
		freq = SinOsc.kr(0.05, 0, 80, 160);
		cutoffFreq = SinOsc.kr([0.6,0.7], 0, 3600, 4000);
		audio = LFPulse.ar(freq, 0, 0.4, 0.05);
		audio = RLPF.ar(audio, cutoffFreq, 0.2);
		audio = CombL.ar(audio, 0.3, [0.2, 0.25], 2);
	}.play
	)
	//////////////////////////////////////////////////////////////////////////






////
(
draw{Splay.ar(SinOsc.ar(9,SinOsc.ar(midicps((Sweep.ar(0,(33..3))%128&(Sweep.ar(0,(3..9))%(LFSaw.ar(3)*9+99)))+33),0,pi)))/3}
)

///

"http://www.graphviz.org/Download_macos.php"

Quarks.gui



s.scope(10)

a = (1..10).collect( { |x ,y | x*100 })

{ Pan2.ar( Mix( SinOsc.ar(a, mul:0.1)), SinOsc.kr(10).range(-1,1)) }.play


{WhiteNoise.ar(0.1)}.play


(
{ Pan2.ar( Mix( SinOsc.ar(a, mul:0.1)),
    LFNoise2.kr(10).range(-1,1))

}.play
)


{LFNoise0.ar( 200)}.play
{LFNoise1.ar( 200)}.play
{LFNoise2.ar(200)}.play

{SinOsc.ar( LFNoise1(MouseX.kr(1,20)).range(200,700))}.play





/////////

FranziskaBVogel@googlemail.com
petros9tria@gmail.com
walaa.elharouny@gmail.com
