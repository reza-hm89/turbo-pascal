const n=10;
var   a:array[1..10] of integer;
      i,p:integer;
procedure findmax;
var max,i:integer;
begin
     max:=a[1];
     for i:=2 to n do
         if a[i]>max then
                     begin
                           max:=a[i];
                           p:=i;
                     end;
     writeln('Max= ',max,'position= ',p);
end;
begin
     Writeln('Enter Number of Statment:');
     for i:=1 to n do
         readln(a[i]);
     findmax;
     readln;
end.

