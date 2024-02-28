uses crt,dos;
var
k,i,num,j,n,t,x,y:integer;
h,m,s,s1,min,ms:word;
a:array[1..100]of integer;
b:array[1..100,1..100] of integer;
ch:char;
procedure randomm;
begin
clrscr;
write('adad ra vared konid:');
readln(n);
randomize;
i:=1;
while i<n*n do
begin
t:=0;
num:=random(n*n);
for j:=1 to i do
if a[j]=num then
t:=t+1;
if t=0 then
begin
a[i]:=num;
i:=i+1;
end;
end;
{for i:=1 to n*n do
write(a[i],' ');}
for i:=1 to n do
for j:=1 to n do
begin
k:=k+1;
b[i,j]:=a[k];
end;
end;{proc}
{*************************}
procedure chaap;
begin
clrscr;
for i:=1 to n do
begin
for j:=1 to n do
begin
if b[i,j]=0 then
write('    ')
else
write(b[i,j]:4);

end;
writeln;
end;
end; {proc}
{***************************************}
procedure timem;
begin
     gettime(h,m,s1,ms);
     gotoxy(40,5);
     write(min,':',s1);
     if s1=59 then
        min:=min+1;
end;
{******************************}
procedure arrowkey;
begin
while ord(ch)<>27 do
begin
while not(keypressed)  do
      timem;
ch:=readkey;
if( ord(ch)=80 ) and(x<>1) then
begin
b[x,y]:=b[x-1,y];
b[x-1,y]:=0;
x:=x-1;
chaap;
end
else if(ord(ch)=72) and (x<>n) then
begin
b[x,y]:=b[x+1,y];
b[x+1,y]:=0;
x:=x+1;
chaap;
end
else
if (ord(ch)=75) and (y<>n) then
begin
b[x,y]:=b[x,y+1];
b[x,y+1]:=0;
y:=y+1;
chaap;
end
else
if (ord(ch)=77) and (y<>1) then
begin
b[x,y]:=b[x,y-1];
b[x,y-1]:=0;
y:=y-1;
chaap;
end;
end;
end;
{**********************************}
begin
     randomm;
     chaap;
     x:=n;
     y:=n;
     gettime(h,m,s,ms);
     settime(h,m,1,1);
     arrowkey;
end.





