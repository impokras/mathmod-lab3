model Second_case
  Real x(start = 21000);
  Real y (start = 9850);
  Real a = 0.31;
  Real b = 0.78;
  Real c = 0.25;
  Real h = 0.71;
  Real t = time;
  equation
  der(x)= -a*x-b*y+abs(cos(2*t));
  der(y)= -c*x*y-h*y+abs(sin(4*t));
end Second_case;
