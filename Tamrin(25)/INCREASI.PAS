program increasing;
const n=10;
var  a:array [1..20] of integer;
     i:integer;
procedure inc;
var  i,j,t:integer;
begin
     for i:=1 to n do
     begin
          for j:=1 to n-1 do
             if a[j]>a[j+1] then
                            begin
                                 t:=a[j];
                                 a[j]:=a[j+1];
                                 a[j+1]:=t;
                            end;
     end;
     for i:=1 to n do
         write(a[i]:5);
end;
begin
     writeln('Enter ',n,' Number:');
     readln(a[1]);
     for i:=2 to n do
          readln(a[i]);
     inc;
     readln;
end.