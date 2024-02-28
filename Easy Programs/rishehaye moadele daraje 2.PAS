var     a,b,c:real;
        x1,x2:real;
        delta:real;
begin
     writeln('Enter a,b,c');
     readln(a,b,c);
     delta:=(b*b)-(4*a*c);
     x1:=(-b+sqrt(delta))/(2*a);
     x2:=(-b-sqrt(delta))/(2*a);
     writeln('x1=',x1:4:2);
     writeln('x2=',x2:4:2);
     readln;
     readln;
end.
