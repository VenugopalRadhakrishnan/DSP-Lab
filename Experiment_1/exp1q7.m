song=audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment_1\Track002.wav")
text=textread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment_1\ConvFile2.txt")
both=conv(song,text)
sound(both,10000,16)
