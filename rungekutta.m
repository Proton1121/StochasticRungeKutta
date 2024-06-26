## Project 1
## Antoni Misztal & Marcin Socha
## nr 417741 & nr 418253

function [t, x, info] = rungekutta (a, tau, sigma, T, N)

## compute the Runge-Kutta approximation of solution x of equation
## dx = -(1 / tau)(xln(x) - ax)dt + x(sqrt(2) * sigma / sqrt(tau))dW_t
## where W_t is a Wiener process, [0, T] is an interval for which we want to 
## find a solution and N is the number of points for which we want to find 
## Runge-Kutta approximation
## INPUT
## a - positive constant
## tau - time constant
## sigma - noise amplitude
## T - end time
## N - number of points used for approximation
## OUTPUT
## t - time vector
## x - approximated values vector
## info - exit code - zero for succes and nonzero for failure

info = 0;
t = zeros (1, N);
x = zeros (1, N);
 
if (a <= 0)
  info = -1;
  disp ("Warning: a is not positive");
  return;
endif

if (tau <= 0)
  info = -1;
  disp ("Warning: tau is not positive");
  return;
endif

if (sigma <= 0)
  info = -1;
  disp ("Warning: sigma is not positive");
  return;
endif

if (T <= 0)
  info = -1;
  disp ("Warning: T is not positive");
  return;
endif

if (N < 2)
  info = -1;
  disp ("Warning: N is too small (<2)");
  return;
endif
 
h = T / (N-1);
x(1) = a / 2;
dW = sqrt (h) * randn (1, N);
ttau = 1 / tau;
ssigma = (sqrt (2) * sigma) / sqrt (tau);
y = zeros (1, N);
for n = 2:N
  t(n) = (n-1) * h;
  y(n-1) = x(n-1) - ttau * (x(n-1) * log (x(n-1)) - a * x(n-1)) * h ...
  + x(n-1) * ssigma * sqrt (h);
  x(n) = x(n-1) - ttau * (x(n-1) * log (x(n-1)) - a * x(n-1)) * h ...
  + x(n-1) * ssigma * dW(n-1) + 0.5 * (y(n-1) * ssigma - x(n-1) * ssigma) ...
  * (dW(n-1) * dW(n-1) - h) / sqrt (h);	
endfor
endfunction