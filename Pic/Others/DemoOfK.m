x = [2, 5, 10, 15, 20, 25, 30, 35, 40];
y = [2.132, 2.102, 2.083, 2.084, 2.086, 2.081, 2.087, 2.091, 2.089];

close all;
figure; hold on;
xlabel('k');
ylabel('EPE');
xlim([-2, 42]);
ylim([2.06, 2.20]);

box on;
grid on;
plot(x, y, 'LineWidth', 1);
plot(x, y, 'b.');

x = [0];
y = [2.19];

plot(x, y, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 5);
text(x+1, y, 'FlowNetC');

fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperSize = [3 1.7];
fig.PaperPosition = [0 0 3 1.7];
print('K_Demo','-dpdf','-r0')