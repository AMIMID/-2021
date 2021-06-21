

s.quit
s.boot

~playa = Buffer.read(s, "/Users/rafa/Desktop/Buffers/playa.wav");
~insects = Buffer.read(s, "/Users/rafa/Desktop/Buffers/insectos MONO.wav");

~playa.play

~playa.free
Buffer.freeAll


////

~playa.numFrames / s.sampleRate
~playa.sampleRate
~playa.duration
~playa.numChannels
~playa.bufnum

~playa.query




// sample rates

44 100
48 000
96 000


/////


~insects.query


(
{PlayBuf.ar( 1, 0,rate: -2.0)}.play
)


///


~sounds = Array.new;
~folder = PathName.new( "/Users/rafa/Desktop/Buffers/sebastian/" );
~folder.entries.do( { | path | ~sounds = ~sounds.add(Buffer.read(s,path.fullPath))});

~sounds.at(2).play


////


s.options.numAudioBusChannels;
s.options.numBuffers;


////



(
SynthDef(\player,
    {
        | audio_file, rate  = 1, doneA = 0, t_trig = 0, pos = 0|
        var audio;

        audio = PlayBuf.ar(2,bufnum: audio_file, rate: rate, doneAction: doneA, trigger: t_trig, startPos: pos);

        Out.ar(0,audio);
}).add
)



x = Synth(\player,[\audio_file, ~sounds.at(0), \doneA, 0, \rate, 1  ]  )

x.set(\t_trig,1)



~sounds.at(0).play
w = Synth(\player,[\audio_file, ~sounds.at(1)   ]  )
e = Synth(\player,[\audio_file, ~sounds.at(2)   ]  )
r = Synth(\player,[\audio_file, ~sounds.at(3)   ]  )


s.plotTree


//////
(
SynthDef(\player_2,
    {
        | audio_file, rate  = 1, doneA = 0, pos = 0, speed = 1|
        var audio, t_trig;

        t_trig = Impulse.kr(speed);
        audio = PlayBuf.ar(2,bufnum: audio_file, rate: rate, doneAction: doneA, trigger: t_trig, startPos: pos);

        Out.ar(0,audio);
}).add
)


x = Synth(\player_2,[\audio_file, ~sounds.at(0), \doneA, 0, \rate, 1, \pos, ~sounds.at(0).numFrames/2   ]  )

x.set(\pos, rrand(0, ~sounds.at(0).numFrames))
x.set(\speed, 10)
x.free



/////

~bike = Buffer.read(s, "/Users/rafa/Desktop/Buffers/bikeBell.wav")

~bike.sampleRate

////


x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 1.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 2.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 3.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 4.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 5.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 6.midiratio  ]  )
x = Synth(\player,[\audio_file, ~bike.bufnum, \doneA, 2, \rate, 7.midiratio  ]  )


//////


~fun = Group.new

x = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 1.midiratio  ], ~fun )
w = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 2.midiratio  ] ,~fun )
e = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 3.midiratio  ],~fun  )
r = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 4.midiratio  ] ,~fun )
t = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 5.midiratio  ] ,~fun )
y = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 6.midiratio  ] ,~fun )
u = Synth(\player_2,[\audio_file, ~bike.bufnum, \doneA, 0, \rate, 7.midiratio  ] ,~fun )


///control

x.set(\rate, 10.midiratio)
w.set(\rate, 20.midiratio)

~fun.set(\speed, 0.5)

~fun.free

s.plotTree
7.midiratio



////

FOr next session;

- The delay Synthdef
- 1 Synthdef that reads audio files in an unique way;
- 1 Clasic synthdef that creates sintetic sounds;
- Modify the Synthdef player_2 so that it does not produces the CLICK
- Start your own library of recorded sounds


///
().play







