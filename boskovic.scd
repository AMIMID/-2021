(
(
{SinOsc.ar(1000,mul:(SinOsc.ar(1,mul:1)
	+
	SinOsc.ar(2,mul:1)
	+
	SinOsc.ar(3,mul:1)
	+
	SinOsc.ar(4,mul:1)
	+
	SinOsc.ar(5,mul:1)
	+
	SinOsc.ar(6,mul:1)
	+
	SinOsc.ar(7,mul:1)
	+
	SinOsc.ar(8,mul:1)
	+
	SinOsc.ar(9,mul:1)
	+
	SinOsc.ar(10,mul:1)
	+
	SinOsc.ar(11,mul:1)
	+
	SinOsc.ar(12,mul:1)
	+
	SinOsc.ar(13,mul:1)
	+
	SinOsc.ar(14,mul:1)
	+
	SinOsc.ar(15,mul:1)
	+
	SinOsc.ar(16,mul:1)
	+
	SinOsc.ar(17,mul:1)
	+
	SinOsc.ar(18,mul:1)
	+
	SinOsc.ar(19,mul:1)
	+
	SinOsc.ar(20,mul:1)
	+
	SinOsc.ar(21,mul:1)
	+
	SinOsc.ar(22,mul:1)
	+
	SinOsc.ar(23,mul:1)
	+
	SinOsc.ar(24,mul:1)
	+
	SinOsc.ar(25,mul:1)
	+
	SinOsc.ar(26,mul:1)
	+
	SinOsc.ar(27,mul:1)
	+
	SinOsc.ar(28,mul:1)
	+
	SinOsc.ar(29,mul:1)
	+
	SinOsc.ar(30,mul:1)
	+
	SinOsc.ar(31,mul:1)
	+
	SinOsc.ar(32,mul:1)
	+
	SinOsc.ar(33,mul:1)
	+
	SinOsc.ar(34,mul:1)
	+
	SinOsc.ar(35,mul:1)
	+
	SinOsc.ar(36,mul:1)
	+
	SinOsc.ar(37,mul:1)
	+
	SinOsc.ar(38,mul:1)
	+
	SinOsc.ar(39,mul:1)
	+
	SinOsc.ar(40,mul:1)
	+
	SinOsc.ar(41,mul:1)
	+
	SinOsc.ar(42,mul:1)
	+
	SinOsc.ar(43,mul:1)
	+
	SinOsc.ar(44,mul:1)
	+
	SinOsc.ar(45,mul:1)
	+
	SinOsc.ar(46,mul:1)
	+
	SinOsc.ar(47,mul:1)
	+
	SinOsc.ar(48,mul:1)
	+
	SinOsc.ar(49,mul:1)
	+
	SinOsc.ar(50,mul:1)
	+
	SinOsc.ar(51,mul:1)
	+
	SinOsc.ar(52,mul:1)
	+
	SinOsc.ar(53,mul:1)
	+
	SinOsc.ar(54,mul:1)
	+
	SinOsc.ar(55,mul:1)
	+
	SinOsc.ar(56,mul:1)
	+
	SinOsc.ar(57,mul:1)
	+
	SinOsc.ar(58,mul:1)
	+
	SinOsc.ar(59,mul:1)
	+
	SinOsc.ar(60,mul:1)
	+
	SinOsc.ar(61,mul:1)
	+
	SinOsc.ar(62,mul:1)
	+
	SinOsc.ar(63,mul:1)
	+
	SinOsc.ar(64,mul:1)
	+
	SinOsc.ar(65,mul:1)
	+
	SinOsc.ar(66,mul:1)
	+
	SinOsc.ar(67,mul:1)
	+
	SinOsc.ar(68,mul:1)
	+
	SinOsc.ar(69,mul:1)
	+
	SinOsc.ar(70,mul:1)
	+
	SinOsc.ar(71,mul:1)
	+
	SinOsc.ar(72,mul:1)
	+
	SinOsc.ar(73,mul:1)
	+
	SinOsc.ar(74,mul:1)
	+
	SinOsc.ar(75,mul:1)
	+
	SinOsc.ar(76,mul:1)
	+
	SinOsc.ar(77,mul:1)
	+
	SinOsc.ar(78,mul:1)
	+
	SinOsc.ar(79,mul:1)
	+
	SinOsc.ar(80,mul:1)
	+
	SinOsc.ar(81,mul:1)
	+
	SinOsc.ar(82,mul:1)
	+
	SinOsc.ar(83,mul:1)
	+
	SinOsc.ar(84,mul:1)
	+
	SinOsc.ar(85,mul:1)
	+
	SinOsc.ar(86,mul:1)
	+
	SinOsc.ar(87,mul:1)
	+
	SinOsc.ar(88,mul:1)
	+
	SinOsc.ar(89,mul:1)
	+
	SinOsc.ar(90,mul:1)
	+
	SinOsc.ar(91,mul:1)
	+
	SinOsc.ar(92,mul:1)
	+
	SinOsc.ar(93,mul:1)
	+
	SinOsc.ar(94,mul:1)
	+
	SinOsc.ar(95,mul:1)
	+
	SinOsc.ar(96,mul:1)
	+
	SinOsc.ar(97,mul:1)
	+
	SinOsc.ar(98,mul:1)
	+
	SinOsc.ar(99,mul:1)
	+
	SinOsc.ar(100,mul:1)

))
}
).play;
)
/////////////////////////////////////////////////////
(
({
    SinOsc.ar(1*100,mul:EnvGen.ar(Env.new([0,1,0],[1,1],\sin)))
	+
	SinOsc.ar(2*100,mul:EnvGen.ar(Env.new([0,1,0,1,0],[0.25,0.25,0.25,0.25],\sin)))
	+
	SinOsc.ar(3*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0],[0.333,0.333,0.333,0.333,0.333,0.333],\sin)))
	+
	SinOsc.ar(4*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0],[0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125],\sin)))
	+
	SinOsc.ar(5*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0],[0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2],\sin)))
	//+
	//SinOsc.ar(6*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0],[1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666],\sin)))
	//+
	//SinOsc.ar(7*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429],\sin)))
	//+
	//SinOsc.ar(8*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,],\sin)))
	//+
	//SinOsc.ar(9*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,],\sin)))
	//+
		//SinOsc.ar(10*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,],\sin)))
}
).play;
)

/////////////////////////////////////////////////////////
(
({
    SinOsc.ar(freq:440*EnvGen.ar(Env.new([1,0],[10],\sin)))
	+
	SinOsc.ar(freq:440*EnvGen.ar(Env.new([1,0,1,0],[3.333,3.333,3.333],\sin)))
	+
	SinOsc.ar(freq:440*EnvGen.ar(Env.new([1,0,1,0,1,0],[2,2,2,2,2],\sin)))
	+
	SinOsc.ar(freq:440*EnvGen.ar(Env.new([1,0,1,0,1,0,1,0],[1.428571428571429,1.428571428571429,1.428571428571429,1.428571428571429,1.428571428571429,1.428571428571429,1.428571428571429],\sin)))
	+
	SinOsc.ar(freq:440*EnvGen.ar(Env.new([1,0,1,0,1,0,1,0,1,0],[1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,1.111111111111111‬,],\sin)))
	//+
	//SinOsc.ar(6*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0],[1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666,1.666],\sin)))
	//+
	//SinOsc.ar(7*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429,1,428571428571429],\sin)))
	//+
	//SinOsc.ar(8*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,1.25,],\sin)))
	//+
	//SinOsc.ar(9*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,1.111,],\sin)))
	//+
		//SinOsc.ar(10*100,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,],\sin)))
}
).play;
)

/////////////////////////////////////////////////////////


(
({
    SinOsc.ar(1*440,mul:EnvGen.ar(Env.new([0,10],[10],\sin)))
	+
	SinOsc.ar(2*440,mul:EnvGen.ar(Env.new([0,9],[10],\sin)))
	+
	SinOsc.ar(3*440,mul:EnvGen.ar(Env.new([0,8],[10],\sin)))
	+
	SinOsc.ar(4*440,mul:EnvGen.ar(Env.new([0,7],10,\sin)))
	+
	SinOsc.ar(5*440,mul:EnvGen.ar(Env.new([0,6],10,\sin)))
	+
	SinOsc.ar(6*440,mul:EnvGen.ar(Env.new([0,5],[10],\sin)))
	+
	SinOsc.ar(7*440,mul:EnvGen.ar(Env.new([0,4],[10],\sin)))
	+
	SinOsc.ar(8*440,mul:EnvGen.ar(Env.new([0,3],[10],\sin)))
	+
	SinOsc.ar(9*440,mul:EnvGen.ar(Env.new([0,2],[10],\sin)))
	+
	SinOsc.ar(10*440,mul:EnvGen.ar(Env.new([0,1],[10],\sin)))

}
).play;
)
////////////////////////////////
(
(
{	var a;
	a = Line.ar(0, 1pi, 8);


	a=a.cos*(-1);


	SinOsc.ar(1*440,mul:a)

}
).play;
)
///////////////////////////////////////////////////////
(
(
{
	SinOsc.ar(440,mul:1);
}
).play;
)
//////////////////////
(
({
    SinOsc.ar(1*440,mul: SinOsc.ar(1*1,mul:1)
	+
	SinOsc.ar(2*1,mul:1)
	+
	SinOsc.ar(3*1,mul:1)
	+
	SinOsc.ar(4*1,mul:1)
	+
	SinOsc.ar(5*1,mul:1)
	+
	SinOsc.ar(6*1,mul:1)
	+
	SinOsc.ar(7*1,mul:1)
	+
	SinOsc.ar(8*1,mul:1)
	+
	SinOsc.ar(9*1,mul:1)
	+
	SinOsc.ar(10*1,mul:1)

	)
	+
	SinOsc.ar(2*440,mul:
		SinOsc.ar(1*2,mul:1)
	+
	SinOsc.ar(2*2,mul:1)
	+
	SinOsc.ar(3*2,mul:1)
	+
	SinOsc.ar(4*2,mul:1)
	+
	SinOsc.ar(5*2,mul:1)
	+
	SinOsc.ar(6*2,mul:1)
	+
	SinOsc.ar(7*2,mul:1)
	+
	SinOsc.ar(8*2,mul:1)
	+
	SinOsc.ar(9*2,mul:1)
	+
	SinOsc.ar(10*2,mul:1)
	)
	+
	SinOsc.ar(3*440,mul:
		SinOsc.ar(1*3,mul:1)
	+
	SinOsc.ar(2*3,mul:1)
	+
	SinOsc.ar(3*3,mul:1)
	+
	SinOsc.ar(4*3,mul:1)
	+
	SinOsc.ar(5*3,mul:1)
	+
	SinOsc.ar(6*3,mul:1)
	+
	SinOsc.ar(7*3,mul:1)
	+
	SinOsc.ar(8*3,mul:1)
	+
	SinOsc.ar(9*3,mul:1)
	+
	SinOsc.ar(10*3,mul:1)
	)
	+
	SinOsc.ar(4*440,mul:
		SinOsc.ar(1*4,mul:1)
	+
	SinOsc.ar(2*4,mul:1)
	+
	SinOsc.ar(3*4,mul:1)
	+
	SinOsc.ar(4*4,mul:1)
	+
	SinOsc.ar(5*4,mul:1)
	+
	SinOsc.ar(6*4,mul:1)
	+
	SinOsc.ar(7*4,mul:1)
	+
	SinOsc.ar(8*4,mul:1)
	+
	SinOsc.ar(9*4,mul:1)
	+
	SinOsc.ar(10*4,mul:1)
	)
	+
	SinOsc.ar(5*440,mul:
		SinOsc.ar(1*5,mul:1)
	+
	SinOsc.ar(2*5,mul:1)
	+
	SinOsc.ar(3*5,mul:1)
	+
	SinOsc.ar(4*5,mul:1)
	+
	SinOsc.ar(5*5,mul:1)
	+
	SinOsc.ar(6*5,mul:1)
	+
	SinOsc.ar(7*5,mul:1)
	+
	SinOsc.ar(8*5,mul:1)
	+
	SinOsc.ar(9*5,mul:1)
	+
	SinOsc.ar(10*5,mul:1)
	)
	+
	SinOsc.ar(6*440,mul:
		SinOsc.ar(1*6,mul:1)
	+
	SinOsc.ar(2*6,mul:1)
	+
	SinOsc.ar(3*6,mul:1)
	+
	SinOsc.ar(4*6,mul:1)
	+
	SinOsc.ar(5*6,mul:1)
	+
	SinOsc.ar(6*6,mul:1)
	+
	SinOsc.ar(7*6,mul:1)
	+
	SinOsc.ar(8*6,mul:1)
	+
	SinOsc.ar(9*6,mul:1)
	+
	SinOsc.ar(10*6,mul:1)
	)
	+
	SinOsc.ar(7*440,mul:
		SinOsc.ar(1*7,mul:1)
	+
	SinOsc.ar(2*7,mul:1)
	+
	SinOsc.ar(3*7,mul:1)
	+
	SinOsc.ar(4*7,mul:1)
	+
	SinOsc.ar(5*7,mul:1)
	+
	SinOsc.ar(6*7,mul:1)
	+
	SinOsc.ar(7*7,mul:1)
	+
	SinOsc.ar(8*7,mul:1)
	+
	SinOsc.ar(9*7,mul:1)
	+
	SinOsc.ar(10*7,mul:1)
	)
	+
	SinOsc.ar(8*440,mul:
		SinOsc.ar(1*8,mul:1)
	+
	SinOsc.ar(2*8,mul:1)
	+
	SinOsc.ar(3*8,mul:1)
	+
	SinOsc.ar(4*8,mul:1)
	+
	SinOsc.ar(5*8,mul:1)
	+
	SinOsc.ar(6*8,mul:1)
	+
	SinOsc.ar(7*8,mul:1)
	+
	SinOsc.ar(8*8,mul:1)
	+
	SinOsc.ar(9*8,mul:1)
	+
	SinOsc.ar(10*8,mul:1)
	)
	+
	SinOsc.ar(9*440,mul:
		SinOsc.ar(1*9,mul:1)
	+
	SinOsc.ar(2*9,mul:1)
	+
	SinOsc.ar(3*9,mul:1)
	+
	SinOsc.ar(4*9,mul:1)
	+
	SinOsc.ar(5*9,mul:1)
	+
	SinOsc.ar(6*9,mul:1)
	+
	SinOsc.ar(7*9,mul:1)
	+
	SinOsc.ar(8*9,mul:1)
	+
	SinOsc.ar(9*9,mul:1)
	+
	SinOsc.ar(10*9,mul:1)
	)
	+
	SinOsc.ar(10*440,mul:
		SinOsc.ar(1*10,mul:1)
	+
	SinOsc.ar(2*10,mul:1)
	+
	SinOsc.ar(3*10,mul:1)
	+
	SinOsc.ar(4*10,mul:1)
	+
	SinOsc.ar(5*10,mul:1)
	+
	SinOsc.ar(6*10,mul:1)
	+
	SinOsc.ar(7*10,mul:1)
	+
	SinOsc.ar(8*10,mul:1)
	+
	SinOsc.ar(9*10,mul:1)
	+
	SinOsc.ar(10*10,mul:1)
	)

}
).play;
)
///////////////////////////////////


Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[1],\sine).test.plot;
(
{SinOsc.ar(220,mul:EnvGen.ar(Env.new([0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],[0.0454545454545455],\sine)))}.play
)

(
{SinOsc.ar(36.71*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
+
		SinOsc.ar(38.89*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
+
		SinOsc.ar(43.65*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
+
		SinOsc.ar(49.00*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
+
		SinOsc.ar(55.00*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
		+
	SinOsc.ar(58.27*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))

	+
	SinOsc.ar(65.41*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))

	+
	SinOsc.ar(73.42*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
			+
	SinOsc.ar(77.78*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
			+
	SinOsc.ar(87.31*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
			+
	SinOsc.ar(98.00*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
					+
	SinOsc.ar(110.00*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
			+
	SinOsc.ar(116.54*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
		+
		SinOsc.ar(130.81*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
+
	SinOsc.ar(146.83*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/16)))
		+
	SinOsc.ar(155.56*4,mul:TExpRand.ar(1/16,1,Impulse.ar(1/1)))


}.play;
)
////////////////////////////////////////
(
{SinOsc.ar(MouseX.kr(20,20000),mul:SinOsc.ar(MouseX.kr(20,20000)))}.play
)
s.record(numChannels:1);


(
{

    SinOsc.ar(16.35,mul:1/108)
	+
	SinOsc.ar(18.35,mul:1/108)
	+
	SinOsc.ar(20.60,mul:1/108)
	+
	SinOsc.ar(21.83,mul:1/108)
	+
	SinOsc.ar(24.50,mul:1/108)
	+
	SinOsc.ar(27.50,mul:1/108)
	+
	SinOsc.ar(30.87,mul:1/108)
	+
	SinOsc.ar(32.70,mul:1/108)
	+
	SinOsc.ar(36.71,mul:1/108)
    +
	SinOsc.ar(41.20	,mul:1/108)
	+
	SinOsc.ar(43.65	,mul:1/108)
    +
	SinOsc.ar(49.00	,mul:1/108)
	+
	SinOsc.ar(55.00	,mul:1/108)
	+
	SinOsc.ar(61.74	,mul:1/108)
	+
	SinOsc.ar(65.41	,mul:1/108)
	+
	SinOsc.ar(73.42	,mul:1/108)
	+
	SinOsc.ar(82.41	,mul:1/108)
	+
	SinOsc.ar(87.31	,mul:1/108)
	+
	SinOsc.ar(98.00	,mul:1/108)
	+
	SinOsc.ar(110.00	,mul:1/108)
+
	SinOsc.ar(123.47	,mul:1/108)
+
	SinOsc.ar(130.81	,mul:1/108)
+
	SinOsc.ar(146.83	,mul:1/108)
+
	SinOsc.ar(164.81	,mul:1/108)
+
	SinOsc.ar(174.61	,mul:1/108)
+
	SinOsc.ar(196.00	,mul:1/108)
+
	SinOsc.ar(220.00	,mul:1)
+
	SinOsc.ar(246.94	,mul:1/108)
+
	SinOsc.ar(261.63	,mul:1/108)
+
	SinOsc.ar(293.66	,mul:1/108)
+
	SinOsc.ar(329.63	,mul:1/108)
+
	SinOsc.ar(349.23	,mul:1/108)
+
	SinOsc.ar(392.00	,mul:1/108)
+
	SinOsc.ar(440.00	,mul:1/108)
+
	SinOsc.ar(493.88	,mul:1/108)
+
	SinOsc.ar(523.25	,mul:1/108)
+
	SinOsc.ar(587.33	,mul:1/108)
+
	SinOsc.ar(659.25	,mul:1/108)
+
	SinOsc.ar(698.46	,mul:1/108)
+
	SinOsc.ar(783.99	,mul:1/108)
+
	SinOsc.ar(880.00	,mul:1/108)
+
	SinOsc.ar(987.77	,mul:1/108)
+
	SinOsc.ar(1046.50	,mul:1/108)
+
	SinOsc.ar(1174.66	,mul:1/108)
+
	SinOsc.ar(1318.51	,mul:1/108)
+
	SinOsc.ar(1396.91	,mul:1/108)
+
	SinOsc.ar(1567.98	,mul:1/108)
+
	SinOsc.ar(1760.00	,mul:1/108)
+
	SinOsc.ar(1975.53	,mul:1/108)
+
	SinOsc.ar(2093.00	,mul:1/108)
+
	SinOsc.ar(2349.32	,mul:1/108)
+
	SinOsc.ar(2637.02	,mul:1/108)
+
	SinOsc.ar(2793.83	,mul:1/108)
+
	SinOsc.ar(3135.96	,mul:1/108)
+
	SinOsc.ar(3520.00	,mul:1/108)
+
	SinOsc.ar(3951.07	,mul:1/108)
+
	SinOsc.ar(4186.01	,mul:1/108)
+
	SinOsc.ar(4698.63	,mul:1/108)

+
	SinOsc.ar(5274.04	,mul:1/108)
+
	SinOsc.ar(5587.65	,mul:1/108)

+
	SinOsc.ar(6271.93	,mul:1/108)
+
	SinOsc.ar(7040.00	,mul:1/108)

+
	SinOsc.ar(7902.13,mul:1/108)


}.play;
)
///////////////////////////////////////////////
(
{SinOsc.ar(1*2000,mul:1/16)
+
		SinOsc.ar(1/2*2000,mul:1/16)
+
		SinOsc.ar(1/3*2000,mul:1/16)
+
		SinOsc.ar(1/4*2000,mul:1/16)
+
		SinOsc.ar(1/5*2000,mul:1/16)
		+
	SinOsc.ar(1/6*2000,mul:1/16)

	+
	SinOsc.ar(1/7*2000,mul:1/16)

	+
	SinOsc.ar(1/8*2000,mul:1/1)
	+
	SinOsc.ar(1/9*2000,mul:1/16)
+
		SinOsc.ar(1/10*2000,mul:1/16)
+
		SinOsc.ar(1/11*2000,mul:1/16)
+
		SinOsc.ar(1/12*2000,mul:1/16)
+
		SinOsc.ar(1/13*2000,mul:1/16)
		+
	SinOsc.ar(1/14*2000,mul:1/16)

	+
	SinOsc.ar(1/15*2000,mul:1/16)

	+
	SinOsc.ar(1/16*2000,mul:1/16)


}.play;
)





















