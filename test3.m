x=0:pi/50:2*pi;
y1=x.^2;
y2=10+5*sin(3*x);
baseval1=20;
baseval2=3;
clf;
hold on;
H1=area(x,y1,baseval1);
H2=area(x,y2,baseval2);
hold off;
h=get(H1,'children');
set(h,'FaceAlpha',0.5,'FaceColor',[1 0.5 0]);
  % set color to orange, alpha to 0.5
h=get(H2,'children');
set(h,'FaceAlpha',0.5,'FaceColor',[0.85 1 0.25]);
  % set color to yellow-green, alpha to 0.5