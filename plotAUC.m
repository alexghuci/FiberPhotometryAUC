function avg = plotAUC(filename,figs)
%filepath="C:\Users\alexh\OneDrive\Documents\data for research";
%filename=uigetfile('*','Select file');

A = load(filename);
x = A.sig_405_RS;
y = A.timeFP_RS;
z = A.sig_472_RS;
CalcNorm = z-min(z(100:end));
figure
pControl = plot(y,x,'b');
hold on
pGCAMP = plot(y,z,'black');
grid on
pNormal = plot(y,CalcNorm);
xlabel('signal'); 
ylabel('time');
legend([pGCAMP pControl pNormal],{'GCAMP','Control','normalized'})
grid on;
title('signal vs time:'+filename);

figure 
AreaNorm=trapz(y,CalcNorm);
bz=bar(AreaNorm);
legend((bz),{'normalized'})
ylabel("area")
title(filename)
avg = AreaNorm
if ~figs
    close all
end
end

 