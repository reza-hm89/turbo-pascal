const n=10;
var   a:array [1..n] of integer;
      i,temp:integer;
      find:boolean;
begin
      writeln('Enter 10 ID:');
      for i:=1 to n do
          readln(a[i]);
      write('Enter Your Number for search:');
      readln(temp);
      find:=false;
      for i:=1 to n do
          if a[i]=temp then
                      begin
                           find:=true;
                           break;
                      end;
     if find then writeln('Number ',temp,' is exist')
     else         writeln('Number ',temp,' is not exist');
     readln;
end.