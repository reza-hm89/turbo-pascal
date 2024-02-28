procedure A;         {rikhtane adade avali toye araye}
 var
 i:integer;
 box1:array [1..100]of integer;
    num1:string[100];
 begin
   readln(num1);
   i:=1;
   while(i < ord(num1[0]) ) do
 if ord(num1[i]) <> 32 then
 begin
   if( ord(num1[i]) >= ord('0')) and (ord(num1[i]) <= ord('9')) then
      box1[i]:=ord(num1[i])-48
     else
      writeln('enter digit character');
     writeln;
   i:=i+1;
 end;
 end;
procedure B;       {rikhtane adade dovom toye araye}
 var
    i:integer;
    box2:array[1..100]of integer;
     z:string[100];
  begin
    readln(z);
  for i:=1 to ord(z[0]) do
   begin
     if(ord(z[i]) >= ord('0')) and (ord(z[i]) <= ord('9')) then
     box2[i]:=ord(z[i])-48
      else
        write ('lotfan yek meghdare adadi vared konid');
    end;
  begin
    A;
    write(num1[i]);
    end;
    end.