program tamrin12;
var  a:array[1..100] of integer;
     i,k,n,temp,j,s:integer;
begin
     write('Tedad jomle ra vared konid:');
     readln(n);
     for i:=1 to n do
         read(a[i]);
     writeln('adade morede nazar ra vared konid:');
     readln(temp);
     j:=0;
     for i:=1 to n do
         if temp=a[i] then j:=j+1;
     writeln('tedade tekrar --> ',j);
     k:=0;
     s:=0;
     while k<=n do
     begin
          k:=k+2;
          s:=a[k]+s;
     end;
     writeln('majmoo anasor zoj: ',k);
     readln;
end.