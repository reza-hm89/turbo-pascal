uses crt;
const n=2;
      m=2;
var b,a:array [1..n,1..m] of integer;
    i,j:integer;
begin
     clrscr;
     writeln('Enter matrix [',n,',',m,']:');
     for i:=1 to n do
         for j:=1 to m do
             begin
                  write('Enter [',i,',',j,']:');
                  readln(a[i,j]);
             end;
     for i:=1 to n do
     begin
         for j:=1 to m do
         begin
                b[i,j]:=a[j,i];
                write(b[i,j]:3);
         end;
         writeln;
     end;
     readln;
end.