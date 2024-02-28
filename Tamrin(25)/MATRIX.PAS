uses crt;
const n=3;
      m=3;
var   a:array [1..n,1..m] of integer;
      i,j,sum:integer;
begin
     clrscr;
     writeln('Enter Number of array a[',n,',',m,']:');
     for i:=1 to n do
         for j:=1 to m do
         begin
                write('[',i,',',j,']: ');
                readln(a[i,j]);
         end;
     for i:=1 to n do
     begin
     sum:=0;
          for j:=1 to m do
              sum:=sum+a[i,j];
     textcolor(5);
     writeln('Sum of row ',i,' =',sum);
     end;
     writeln;
     sum:=0;
     for i:=1 to n do
         for j:=1 to m do
             sum:=sum+a[i,j];
     textcolor(10);
     writeln('Sum of all: ',sum);
     writeln;
     sum:=0;
     for i:=1 to n do
         for j:=1 to m do
             if i=j then sum:=sum+a[i,j];
     textcolor(11);
     writeln('Sum of ghotr:',sum);
     writeln;
     textcolor(27);
     writeln('press any key to exit');
     readln;
end.