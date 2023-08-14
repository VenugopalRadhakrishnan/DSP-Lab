rain_jan= textread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment_1\RainFallIndia_Jan.txt")
rain_july=textread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment_1\RainFallIndia_July.txt")

figure;
histogram(rain_jan,100)
xlabel("January month")
ylabel("Measured rain")
figure;
histogram(rain_july,100)
xlabel("July month")
ylabel("Measured rain")
