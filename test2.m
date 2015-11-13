x=0:pi/10:2*pi;
y=x.^2;
baseval=max(y);
H=area(x,y,baseval);
h=get(H,'children');
set(h,'FaceAlpha',0.5,'FaceColor',[0 1 0]);
axis tight