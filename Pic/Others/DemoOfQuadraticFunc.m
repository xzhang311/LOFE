x1 = 0:0.01:2;
y1 = 3*x1 + 2*sin(2*x1)-1;

x2 = 2:0.01:5;
y2 = x2 + sin(2*x2)+5.6;

x3 = 5:0.01:10;
y3 = 2*x3 + 3*sin(0.9*x3) - 1;

x = [x1, x2, x3];
y = [y1, y2, y3];

%%
figure;
hold on;
box on;
grid on;
grid minor;
xlim([-1 11])
ylim([-5 26])
plot(x1, y1, 'LineWidth', 2);
plot(x2, y2, 'LineWidth', 2);
plot(x3, y3, 'LineWidth', 2);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperSize = [3 2];
fig.PaperPosition = [0 0 3 2];
print('FitDemo_1','-dpdf','-r0')

%%
% Fit line
p_line = polyfit(x, y, 1);
x_line = 0:0.01:10;
y_line = polyval(p_line, x_line);

close all;
figure;
hold on;
box on;
grid on;
grid minor;
xlim([-1 11])
ylim([-5 26])
plot(x1, y1, 'LineWidth', 2);
plot(x2, y2, 'LineWidth', 2);
plot(x3, y3, 'LineWidth', 2);
plot(x_line, y_line, 'k', 'LineWidth', 1.5);
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperSize = [3 2];
fig.PaperPosition = [0 0 3 2];
print('FitDemo_2','-dpdf','-r0')
%%
% Fit curves
close all;
figure;
hold on;
box on;
grid on;
grid minor;
xlim([-1 11])
ylim([-5 26])
plot(x1, y1, 'LineWidth', 2);
plot(x2, y2, 'LineWidth', 2);
plot(x3, y3, 'LineWidth', 2);

p1_curve = polyfit(x1, y1, 2);
x1_curve = 0:0.01:2;
y1_curve = polyval(p1_curve, x1_curve);
plot(x1_curve, y1_curve, 'k', 'LineWidth', 1.5);

p2_curve = polyfit(x2, y2, 2);
x2_curve = 2:0.01:5;
y2_curve = polyval(p2_curve, x2_curve);
plot(x2_curve, y2_curve, 'k', 'LineWidth', 1.5);

p3_curve = polyfit(x3, y3, 2);
x3_curve = 5:0.01:10;
y3_curve = polyval(p3_curve, x3_curve);
plot(x3_curve, y3_curve, 'k', 'LineWidth', 1.5);

plot([2, 2], [-5, 25], '-.b');
plot([5, 5], [-5, 25], '-.b');
plot([10, 10], [-5, 25], '-.b');
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperSize = [3 2];
fig.PaperPosition = [0 0 3 2];
print('FitDemo_3','-dpdf','-r0')