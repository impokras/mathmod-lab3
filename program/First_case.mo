model First_case
  Real x(start = 21000);
  Real y (start = 9850);
  Real a = 0.44;
  Real b = 0.83;
  Real c = 0.45;
  Real h = 0.71;
  Real t = time;
  equation
  der(x)= -a*x-b*y+cos(t);
  der(y)= -c*x-h*y+sin(t);
end First_case;

