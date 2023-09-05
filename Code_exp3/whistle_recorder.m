function whistle_recorder()
recObj = audiorecorder;
recDuration = 3;
disp("Begin whistling")
recordblocking(recObj,recDuration);
disp("End of recording")
play(recObj);
whistle = getaudiodata(recObj);
audiowrite('whistle.wav', whistle, 11000)
