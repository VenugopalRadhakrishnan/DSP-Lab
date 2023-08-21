song=audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-2\Track002.wav")
k=2;

y1=song(1:2:length(song));
audiowrite("Song_2.wav",y1,48000/2)
y2=song(1:3:length(song));
audiowrite("Song_3.wav",y2,48000/2)
y3=song(1:4:length(song));
audiowrite("Song_4.wav",y3,48000/2)
y4=song(1:20:length(song));
audiowrite("Song_5.wav",y4,48000/2)