(
{Pan2.ar(
Normalizer.ar(
RLPF.ar(
RLPF.ar(Mix.new(Gendy3.ar(freq:[230, 419, 546, 789])),
MouseX.kr(10,10000,'exponential'),0.05),
MouseY.kr(10,10000,'exponential'),0.05)
,0.9)
,Lag.kr(LFNoise0.kr(1),0.5))}.play
)