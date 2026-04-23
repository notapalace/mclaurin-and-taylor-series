z = linspace(-1, 1, 10);

f_actual = exp(z);

f_approx = 1 + z + (z.^2)/2 + (z.^3)/6;

figure;
plot(z, f_actual, 'b-', 'LineWidth', 1.5); hold on;
plot(z, f_approx, 'g-', 'LineWidth', 1.5); 
grid on;

title('Maclaurin Series (a=0)');
xlabel('z');
ylabel('f(z)');
legend('Actual Function: e^z', 'Approximation', 'Location', 'northwest');

z2 = linspace(-0.5, 1.5, 10);

f2_actual = log(z2);

f2_approx = (z2 - 1) - ((z2 - 1).^2)/2 + ((z2 - 1).^3)/3;

figure;
plot(z2, f2_actual, 'b-', 'LineWidth', 1.5); hold on;
plot(z2, f2_approx, 'g-', 'LineWidth', 1.5);

plot(1, 0, 'kO', 'MarkerFaceColor', 'k', 'MarkerSize', 5); 
text(1, -0.2, 'Center a=1', 'HorizontalAlignment', 'center');

grid on;

title('Taylor Series (a not equal 0)');
xlabel('z');
ylabel('f(z)');
legend('Actual Function: ln(z)', 'Approximation', 'Center (a=1)', 'Location', 'northwest');