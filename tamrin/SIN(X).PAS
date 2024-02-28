uses crt;
var  n,x,j,cntr,sign,p,fact,power:integer;
     sum:real;
begin
     clrscr;
     write('Enter number of statement:');
     readln(n);
     write('Enter a Number:');
     readln(x);
     j:=2*n-1;
     while j<>0 do
     begin
          fact:=1;
          p:=j;
          cntr:=1;
          sign:=1;
          sum:=0;
          while p<>1 do
          begin
                for p:=j downto 1 do
                    power:=x*x;
                p:=j;
                for cntr:=1 to p do
                    fact:=cntr*fact;
          end;
          sum:=sum+((power/fact)*sign);
          j:=j-2;
    end;
    writeln('Sun of sin',x,':',sum);
    readln;
end.