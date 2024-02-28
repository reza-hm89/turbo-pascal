uses crt;
var  a,b:longint;
begin
     clrscr;
     write('Enter a Number:');
     readln(a);
     textcolor(10);
     case a of
          1..9:writeln('Number ',a,' is 1 digit');
          10..99:writeln('Number ',a,' is 2 digits');
          100..999:writeln('Number ',a,' is 3 digits');
     else
         writeln('Number ',a,' is more than 3 digits ');
     end;
     textcolor(17);
     writeln;
     writeln('Press Enter Key to exit');
     readln;
end.
