FoaXformDisplay.new(4)


(
{
var sig;
sig = Decay.ar(Dust.ar(20),0.01,WhiteNoise.ar(0.5));
sig = FoaEncode.ar(sig,FoaEncoderMatrix.newOmni);
	sig = FoaZoom.ar(sig,MouseX.kr(0,pi/2).poll,pi/4);
sig = FoaDecode.ar(sig, FoaDecoderMatrix.newPanto(4,'point','dual'));
Out.ar(0,sig);
}.play
)


~bus = Bus.audio(s,4)
~bus.index

(
{
var sig;
	sig = In.ar(~bus,4);
sig = FoaEncode.ar(sig,FoaEncoderMatrix.newOmni);

sig = FoaDecode.ar(sig, FoaDecoderMatrix.newPanto(4,'point','dual'));
Out.ar(0,sig);
}.play
)