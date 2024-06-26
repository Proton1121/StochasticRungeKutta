## Project 1 addendum
## Antoni Misztal & Marcin Socha
## nr 417741 & nr 418253

## first plot

[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
hold on;
[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
hold off;

## a plots

[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
hold on;
[t,x] = rungekutta (2, 1, 0.1, 15, 300);
plot(t, x, ";a = 2, tau = 1, sigma = 0.1;");
[t,x] = rungekutta (0.5, 1, 0.1, 15, 300);
plot(t, x, ";a = 0.5, tau = 1, sigma = 0.1;");
hold off;

## tau plots
[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
hold on;
[t,x] = rungekutta (1, 10, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 10, sigma = 0.1;");
[t,x] = rungekutta (1, 0.1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 0.1, sigma = 0.1;");
hold off;

## sigma plots
[t,x] = rungekutta (1, 1, 0.1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.1;");
hold on;
[t,x] = rungekutta (1, 1, 1, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 1;");
[t,x] = rungekutta (1, 1, 0.01, 15, 300);
plot(t, x, ";a = 1, tau = 1, sigma = 0.01;");
hold off;