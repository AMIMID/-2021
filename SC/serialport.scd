ServerOptions.inDevices
s.freeAll
SerialPort.devices;
o.hardwareBufferSize
o = Server.local.options;
o = Server.options;
MOTU AVB USB ASIO
s.quit
o.memSize
o.numOutputBusChannels.postln;
o.numOutputBusChannels = 18;
o.devices
o.device ="MOTU AVB USB ASIO";
s.me
s.makeWindow;
s.scope
o.numAudioBusChannels
s.boot
s.meter
v = s.volume;
s.record
s.stopRecording


(
Pbind(\note, Pavaroh(
            Pseq([1, 2, 3, 2, 5, 4, 3, 4, 2, 1], 2),
            #[0, 2, 3, 6, 7, 9],
            #[0, 1, 3, 7, 8, 11]
        ),
    \dur, 0.25
).play;
)



m = Synth.new(\1, [\gate,1, \fr1,100,\pi,1,  \freq1,1,\freqq1,1,\p,1,\amp1,1]);
m = Synth.new(\1, [\gate,1, \fr1,120,\pi,1,  \freq1,1.1,\freqq1,1.1,\p,1.21,\amp1,1]);
o = Synth.new(\1, [\gate,1, \fr1,140,\pi,1,  \freq1,1.2,\freqq1,1.2,\p,1.44,\amp1,1]);
p = Synth.new(\1, [\gate,1, \fr1,150,\pi,1,  \freq1,1.3,\freqq1,1.3,\p,1.69,\amp1,1]);
q = Synth.new(\1, [\gate,1, \fr1,160,\pi,1,  \freq1,1.4,\freqq1,1.4,\p,1.96,\amp1,1]);
r = Synth.new(\1, [\gate,1, \fr1,180,\pi,1,  \freq1,1.5,\freqq1,1.5,\p,2.25,\amp1,1]);
s = Synth.new(\1, [\gate,1, \fr1,200,\pi,1,  \freq1,1.6,\freqq1,1.6,\p,2.56,\amp1,1]);



(
a = Synth.new(\1, [\gate,1, \fr1,20, \freq1,0.1,\freqq1,0.1,\p,0.01, \amp1,1]);
b = Synth.new(\1, [\gate,1, \fr1,40, \freq1,0.2,\freqq1,0.2,\p,0.02,\amp1,1]);
c = Synth.new(\1, [\gate,1, \fr1,60, \freq1,0.3,\freqq1,0.3,\p,0.09,\amp1,1]);
d = Synth.new(\1, [\gate,1, \fr1,80, \freq1,0.4,\freqq1,0.4,\p,0.16,\amp1,1]);
e = Synth.new(\1, [\gate,1, \fr1,100, \freq1,0.5,\freqq1,0.5,\p,0.25,\amp1,1]);
f = Synth.new(\1, [\gate,1, \fr1,120, \freq1,0.6,\freqq1,0.6,\p,0.36,\amp1,1]);
g = Synth.new(\1, [\gate,1, \fr1,140, \freq1,0.7,\freqq1,0.7,\p,0.49,\amp1,1]);
k = Synth.new(\1, [\gate,1, \fr1,160, \freq1,0.8,\freqq1,0.8,\p,0.64,\amp1,1]);
l = Synth.new(\1, [\gate,1, \fr1,180, \freq1,9,\freqq1,0.9,\p,0.81,\amp1,1]);
m = Synth.new(\1, [\gate,1, \fr1,200, \freq1,1,\freqq1,1,\p,1,\amp1,1]);
m = Synth.new(\1, [\gate,1, \fr1,240, \freq1,1.1,\freqq1,1.1,\p,1.21,\amp1,1]);
o = Synth.new(\1, [\gate,1, \fr1,280, \freq1,1.2,\freqq1,1.2,\p,1.44,\amp1,1]);
p = Synth.new(\1, [\gate,1, \fr1,300, \freq1,1.3,\freqq1,1.3,\p,1.69,\amp1,1]);
q = Synth.new(\1, [\gate,1, \fr1,320, \freq1,1.4,\freqq1,1.4,\p,1.96,\amp1,1]);
r = Synth.new(\1, [\gate,1, \fr1,360, \freq1,1.5,\freqq1,1.5,\p,2.25,\amp1,1]);
s = Synth.new(\1, [\gate,1, \fr1,400, \freq1,1.6,\freqq1,1.6,\p,2.56,\amp1,1]);
)

(
a = Synth.new(\1, [\gate,1, \fr1,40, \freq1,0.1,\freqq1,0.1,\p,0.01, \amp1,1]);
b = Synth.new(\1, [\gate,1, \fr1,80, \freq1,0.2,\freqq1,0.2,\p,0.02,\amp1,1]);
c = Synth.new(\1, [\gate,1, \fr1,120, \freq1,0.3,\freqq1,0.3,\p,0.09,\amp1,1]);
d = Synth.new(\1, [\gate,1, \fr1,160, \freq1,0.4,\freqq1,0.4,\p,0.16,\amp1,1]);
e = Synth.new(\1, [\gate,1, \fr1,200, \freq1,0.5,\freqq1,0.5,\p,0.25,\amp1,1]);
f = Synth.new(\1, [\gate,1, \fr1,240, \freq1,0.6,\freqq1,0.6,\p,0.36,\amp1,1]);
g = Synth.new(\1, [\gate,1, \fr1,280, \freq1,0.7,\freqq1,0.7,\p,0.49,\amp1,1]);
k = Synth.new(\1, [\gate,1, \fr1,320, \freq1,0.8,\freqq1,0.8,\p,0.64,\amp1,1]);
l = Synth.new(\1, [\gate,1, \fr1,360, \freq1,9,\freqq1,0.9,\p,0.81,\amp1,1]);
m = Synth.new(\1, [\gate,1, \fr1,400, \freq1,1,\freqq1,1,\p,1,\amp1,1]);
m = Synth.new(\1, [\gate,1, \fr1,480, \freq1,1.1,\freqq1,1.1,\p,1.21,\amp1,1]);
o = Synth.new(\1, [\gate,1, \fr1,560, \freq1,1.2,\freqq1,1.2,\p,1.44,\amp1,1]);
p = Synth.new(\1, [\gate,1, \fr1,600, \freq1,1.3,\freqq1,1.3,\p,1.69,\amp1,1]);
q = Synth.new(\1, [\gate,1, \fr1,640, \freq1,1.4,\freqq1,1.4,\p,1.96,\amp1,1]);
r = Synth.new(\1, [\gate,1, \fr1,720, \freq1,1.5,\freqq1,1.5,\p,2.25,\amp1,1]);
s = Synth.new(\1, [\gate,1, \fr1,800, \freq1,1.6,\freqq1,1.6,\p,2.56,\amp1,1]);
)
s.quit
s.quit
s.makeWindow
s.stopRecording

s.makeWindow

(
a = Synth.new(\1, [\gate,1, \fr1,1,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,2,\pa,4,\freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,3,\pa,9,\freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,4,\pa,16, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,5,\pa,25,  \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,6,\pa,36,  \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,7,\pa,49,  \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,8,\pa,64,  \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,9,\pa,81,  \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,1,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,2,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,3,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,4,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,5,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,6,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,7,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,8,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,9,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);

(
a = Synth.new(\1, [\gate,1, \fr1,10000,\pa,100000, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,20000,\pa,400000,\freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,30000,\pa,900000,\freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,40000,\pa,1600000, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,50000,\pa,2500000,  \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,60000,\pa,3600000,  \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,70000,\pa,4900000,  \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,80000,\pa,6400000,  \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,90000,\pa,8100000,  \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,10000,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,20000,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,30000,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,40000,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,50000,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,60000,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,70000,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,80000,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,90000,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);





(
a = Synth.new(\1, [\gate,1, \fr1,10,\pa,100, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,20,\pa,400,\freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,30,\pa,900,\freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,40,\pa,1600, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,50,\pa,2500,  \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,60,\pa,3600,  \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,70,\pa,4900,  \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,80,\pa,6400,  \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,90,\pa,8100,  \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,10,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,20,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,30,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,40,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,50,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,60,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,70,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,80,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,90,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);

(
a = Synth.new(\1, [\gate,1, \fr1,1000,\pa,10000, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
b = Synth.new(\1, [\gate,1, \fr1,2000,\pa,40000,\freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
c = Synth.new(\1, [\gate,1, \fr1,3000,\pa,90000,\freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
d = Synth.new(\1, [\gate,1, \fr1,4000,\pa,160000, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
e = Synth.new(\1, [\gate,1, \fr1,5000,\pa,250000,  \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
f = Synth.new(\1, [\gate,1, \fr1,6000,\pa,360000,  \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
g = Synth.new(\1, [\gate,1, \fr1,7000,\pa,490000,  \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
k = Synth.new(\1, [\gate,1, \fr1,8000,\pa,640000,  \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
l = Synth.new(\1, [\gate,1, \fr1,9000,\pa,810000,  \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);
(
m = Synth.new(\1, [\gate,1, \fr1,1000,\pa,1, \freq1,1,\freqq1,1,\p,1, \amp1,0.1]);
n = Synth.new(\1, [\gate,1, \fr1,2000,\pa,1, \freq1,2,\freqq1,2,\p,2,\amp1,0.1]);
o = Synth.new(\1, [\gate,1, \fr1,3000,\pa,1, \freq1,3,\freqq1,3,\p,9,\amp1,0.1]);
p = Synth.new(\1, [\gate,1, \fr1,4000,\pa,1, \freq1,4,\freqq1,4,\p,16,\amp1,0.1]);
q = Synth.new(\1, [\gate,1, \fr1,5000,\pa,1, \freq1,5,\freqq1,5,\p,25,\amp1,0.1]);
r = Synth.new(\1, [\gate,1, \fr1,6000,\pa,1, \freq1,6,\freqq1,6,\p,36,\amp1,0.1]);
s = Synth.new(\1, [\gate,1, \fr1,7000,\pa,1, \freq1,7,\freqq1,7,\p,49,\amp1,0.1]);
t = Synth.new(\1, [\gate,1, \fr1,8000,\pa,1, \freq1,8,\freqq1,8,\p,64,\amp1,0.1]);
u = Synth.new(\1, [\gate,1, \fr1,9000,\pa,1, \freq1,9,\freqq1,9,\p,81,\amp1,0.1]);

);