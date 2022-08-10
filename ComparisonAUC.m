% clc;
% clf;
% clear;
filepath="C:\Users\alexh\OneDrive\Documents\data for research\day 3 YFP\";
filepath2="C:\Users\alexh\OneDrive\Documents\data for research\day 3 hm4di\";
%filepath3="C:\Users\alexh\OneDrive\Documents\data for research\day 17 ch1 hm4di\";
%filepath4="C:\Users\alexh\OneDrive\Documents\data for research\day 17 ch2 hm4di\";
filename = dir(filepath+"*.mat"); %read the files into matlab
filename2 = dir(filepath2+"*.mat");
%filename3 = dir(filepath3+"*.mat");
%filename4 = dir(filepath4+"*.mat");
num_files = length(filename); %record how many files have been found
sorted = sort({filename.name});
averages = zeros(num_files,1)
averages2 = zeros(num_files,1)
%averages3 = zeros(num_files,1)
%averages4 = zeros(num_files,1)
for i = 1:length(filename)
   if i==14
   i
   end
    avg1 = plotAUC(filepath+filename(i).name,false)
   averages(i)=avg1
   avg2 = plotAUC(filepath2+filename2(i).name,false)
   averages2(i)=avg2
    %avg3 = plotAUC(filepath3+filename3(i).name,false)
   %averages3(i)=avg3
    %avg4 = plotAUC(filepath4+filename4(i).name,false)
   %averages4(i)=avg4
   
end
computeavg=mean(averages)
save('computeavg')
computeavg2=mean(averages2)
save('computeavg2')   
%computeavg3=mean(averages3)
%save('computeavg3')  
%computeavg4=mean(averages4)
%save('computeavg4')
figure
%boxchart([averages,averages2,averages3,averages4])
boxchart([averages,averages2])
set(gca,'XTickLabel',{"day 3 YFP", "day 3 hm4di"})
%set(gca,'XTickLabel',{"day 17 CH1 YFP", "day 17 CH2 YFP","day 17 CH1 hm4di","day 17 CH1 hm4di"});