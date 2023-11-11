function exp5q3_RECORD()
recObj = audiorecorder;
recDuration = 3;
disp("Begin speaking")
recordblocking(recObj,recDuration);
disp("End of recording")
play(recObj);
name = getaudiodata(recObj);
audiowrite('name.wav', name,10000)
