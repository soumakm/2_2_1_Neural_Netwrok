x=0:pi/10:2*pi;
y=x.^2;
y2=max(y)*ones(size(y));
hold on
H1=area(x,y2);
H2=area(x,y);
set(H2,'FaceColor',[1 1 1]);
axis tight