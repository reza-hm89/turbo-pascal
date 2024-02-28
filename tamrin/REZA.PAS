uses crt;
const   n=4;
var     a:array[1..20] of integer;
        b:array[1..20] of string;
        i,sum:integer;
        avg:real;
begin
     clrscr;
     sum:=0;
     for i:=1 to n do
     begin
          writeln('Enter average and name (0<avg<20) :');
          read(a[i]);
          readln(b[i]);
          if (a[i]>20) or (a[i]<0) then
          begin
               writeln('Namber ',a[i],' is invalid !!!');
               read(a[i]);
               readln(b[i]);
          end;
          sum:=sum+a[i];
     end;
     avg:=sum/n;
     writeln('Average is: ',avg:4:1);
     for i:=1 to n do
         if a[i]<avg then
                     begin
                         write('Averages less than ',avg:2:1,' is ',a[i]);
                         writeln(' And name is: ',b[i]);
                     end;
     readln;
end.

