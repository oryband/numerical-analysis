function ass3_q1_plot()
% Plot several predefined polynomials.

x = -pi/4:0.01:pi/4;

y1 = cos(2*x);

p2 = [-2 0 1];
y2 = polyval(p2, x);

p3 = [-(4/pi)^3 0 1];
y3 = polyval(p3, x);

p4 = [0.1708 0 -0.5549];
y4 = polyval(p4, x);

p5 = [-16.232389507 -5.252770519 7];
y5 = polyval(p5, x);


plot(x,y1,'color','b'); hold on;
plot(x,y2,'color','r'); hold on;
plot(x,y3,'color','g'); hold on;
% plot(x,y4,'color','k'); hold on;
% plot(x,y5,'color','k');
grid on
