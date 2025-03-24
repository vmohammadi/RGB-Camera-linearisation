function [out] = getlincam(p,RGB,graphs)
% function [out] = getlincam(p,RGB,graphs)
% function to compute polynomial fits for camera
% grey-scale data. The inputs are p (a set of n by
% 1 mean reflectance values) and RGB ( a set of 3 by
% n RGB triplets). If graphs is set to 'on' then
% a plot of the fits is generated
r = RGB(1,:)/255;
g = RGB(2,:)/255;
b = RGB(3,:)/255;
ref = p/100;
if nargin<3
plotgraphs = 0;
else
plotgraphs = strcmp('on',graphs);
end

% fit the low-order polynomials
[pr1,sr1]=polyfit(r,ref,3);
[pg1,sg1]=polyfit(g,ref,3);
[pb1,sb1]=polyfit(b,ref,3);

% plot graphs if the plotgraphs variable is set
if (plotgraphs)
figure
subplot(3,2,1)
plot(r,ref,'ko');
[pr1,sr1]=polyfit(r,ref,3);
x = linspace(0,1,11);
y = polyval(pr1,x);

hold on

plot(x,y,'k-');
ylabel('Y')
xlabel('R channel');
axis([0 1 0 1])
subplot(3,2,2)
py = polyval(pr1,r);
plot(ref,py,'ko');

hold on

plot([0 1], [0 1], 'k-');
axis([0 1 0 1])
disp(255*py')
subplot(3,2,3)
plot(g,ref,'ko');
x = linspace(0,1,11);
y = polyval(pg1,x);

hold on

plot(x,y,'k-');
ylabel('Y')
xlabel('G channel');
axis([0 1 0 1])
subplot(3,2,4)
py = polyval(pg1,g);
plot(ref,py,'ko');

hold on

plot([0 1], [0 1], 'k-');
axis([0 1 0 1])
disp(255*py')
subplot(3,2,5)
plot(b,ref,'ko');
x = linspace(0,1,11);
y = polyval(pb1,x);

hold on

plot(x,y,'k-');
ylabel('Y')
xlabel('B channel');
axis([0 1 0 1])
subplot(3,2,6)
py = polyval(pb1,b);
plot(ref,py,'bo');

hold on

plot([0 1], [0 1], 'k-');
axis([0 1 0 1])
disp(255*py')
end
out = [pr1; pg1; pb1];