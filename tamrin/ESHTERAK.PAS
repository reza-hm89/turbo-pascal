uses crt;
const n=10;
var   a,b,c:array [1..n] of integer;
      i,j,k:integer;
      find:boolean;
begin
     clrscr;
     writeln('Enter first 10 Numbers:');
     for i:=1 to n do
         readln(a[i]);
     writeln('Enter second 10 Numbers:');
     for i:=1 to n do
         readln(b[i]);
     k:=1;
     find:=false;
     for i:=1 to n do
         for j:=1 to n do
             if a[i]=b[j] then
                           begin
                                c[k]:=a[i];
                                k:=k+1;
                                find:=true;
                           end;
     if find then
             begin
                  writeln('A eshterak B:');
                  for i:=1 to k-1 do
                      write(c[i]:4);
             end
     else writeln('A eshterake B vojod nadarad!');
     readln;
end.