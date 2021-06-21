 (
   s.options.numBuffers = 1024 * 256;
   s.options.memSize = 8192 * 16;
   s.options.maxNodes = 1024 * 32;
   s.options.numOutputBusChannels = 4; // total number of channels output
   s.options.numInputBusChannels = 2;

   s.waitForBoot {
       ~dirt = SuperDirt(4, s); // pan across four channels
       ~dirt.loadSoundFiles;
       ~dirt.start(57120, [0, 0, 0, 0, 0, 0]);
   };
   s.latency = 0.3;
 );