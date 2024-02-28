const n=10;
var   a:array [1..n] of integer;
      i,j,temp:integer;
begin
     writeln('Enter 10 Numbers:');
     for i:=1 to n do
         readln(a[i]);
     for i:=1 to n do
     begin
         for j:=1 to n-1 do
             if a[j]>a[j+1] then
                               begin
                                    temp:=a[j];
                                    a[j]:=a[j+1];
                                    a[j+1]:=temp;
                               end;
     end;
     writeln('Sorted Numbers is: ');
     for i:=1 to n do
         write(a[i]:3);
     readln;
end.