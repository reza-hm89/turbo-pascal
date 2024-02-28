uses crt;
var  a:array [1..20] of integer;
     i,j,k:integer;
     find:boolean;
begin
     clrscr;
     writeln('Brrasiy adade aval(0<n<20):');
     a[1]:=2;
     a[2]:=3;
     i:=4;
     k:=3;
     j:=2;
     find:=true;
     while i<=20 do
     begin
          while j<i  do
            begin
                   if (i mod j)=0 then find:=false
                   else    j:=j+1;
            end;
          if find=true then
          begin
               a[k]:=i;
               k:=k+1;
               i:=i+1;
          end;
     end;
     for j:=1 to k do
         write(a[k]:3);
     readln;
end.

