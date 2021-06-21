	PitchShift.ar(
        SoundIn.ar(0),    // stereo audio input
        0.5,             // grain size
       freq3,    // mouse x controls pitch shift ratio
        0,                 // pitch dispersion
        0.004,            // time dispersion
		mul:harm3
    ),SinOsc.kr(harm3*speed),1.5, width);





play({FreqShift.ar( SinOsc.ar(440),146.6666)})
scope({Pitch.kr(FreqShift.ar( SinOsc.ar(440),440))})


Hilbert.ar()



(
play({
    z = SinOsc.ar(440);
    PitchShift.ar(z, 0.2, MouseX.kr(0.1,4), 0, 0.0001)
}))