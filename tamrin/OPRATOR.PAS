uses crt;
var  a,b:integer;
     op:char;
begin
     clrscr;
     write('Enter two Numbers:');
     readln(a,b);
     writeln('Enter oprator:');
     readln(op);
     textcolor(10);
     case op of
          '+':writeln('sum of ',a,' + ',b,':',a+b:4);
          '-':writeln('subtract ',a,' - ',b,':',a-b:4);
          '/':writeln('Divition ',a,' / ',b,':',a/b:4:1);
          '*':writeln('multiply ',a,' * ',b,':',a*b:4);
     else
         writeln('oprator not invalid');
     end;
     textcolor(17);
     writeln('Press Enter Key to exit');
     readln;
end.
