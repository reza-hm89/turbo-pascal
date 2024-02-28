uses
    Crt;
var
   ans,key:char;
procedure sum;
var
    a,b:string;
    l,m:array [1..100]of longint;
    list1,list2:array [1..101]of longint;
    i,j,n1,n2,max,k,p:longint;
    found:boolean;
begin
     textcolor(5);
     Write('Enter Your Number:');
     readln(a);
     found:=true;
     for i:=1 to ord(a[0]) do
     begin
          if a[i]=' 'then
          begin
               found:=false;
               p:=1;
               for j:=i+1 to ord (a[0]) do
               begin
                    m[p]:=ord(a[j])-48;
                    p:=p+1;
               end;
               k:=i-1;
               for j:=1 to i-1 do
               begin
                    l[j]:=ord(a[k])-48;
                    k:=k-1;
               end;
          end;
          if found=false then break;
     end;
     if found=true then
     begin
          Write('Enter Second Number:');
          readln(b)
     end;
     if found=true
        then n1:=ord(a[0])
     else n1:=i-1;
     if found=true
        then n2:=ord(b[0])
     else n2:=p-1;
     if found=true then
     begin
          for i:=1 to ord(a[0]) do
          begin
               l[i]:=ord(a[n1])-48;
               n1:=n1-1;
          end;
          for i:=1 to ord(b[0]) do
          begin
               m[i]:=ord(b[n2])-48;
               n2:=n2-1;
          end;
     end;
     if found=true then
        if ord(a[0])>ord(b[0])
           then max:=ord(a[0])
        else max:=ord(b[0]);
     if found=false then
        if n2>n1
           then max:=n2
        else max:=n1;
     list1[1]:=0;
     for i:=1 to max+1 do
     begin
         list1[i+1]:=(l[i]+m[i]+list1[i])div 10;
         list1[i]:=(l[i]+m[i]+list1[i])mod 10;
     end;
     n1:=max;
     for i:=1 to max+1 do
     begin
          list2[i]:=list1[n1];
          n1:=n1-1;
     end;
     for i:=1 to max do
         Write(list2[i]);
     Writeln;
end;
{**************************************************************}
procedure paragraf;
var
   a:string;
   n,i:integer;
begin
     textcolor(6);
     Writeln('Enter the Statment:');
     readln(a);
     n:=ord(a[0]);
     if (ord(a[1])>96) and (ord(a[i])<123)
        then Write(chr(ord(a[1])-32));
     for i:=2 to n do
     begin
          if a[i-1]=' 'then
          begin
               if (ord(a[i])>96) and (ord(a[i])<123)
                  then Write(chr(ord(a[i])-32))
               else Write(a[i]);
          end;
          if a[i-1]<>' 'then
          begin
               if (ord(a[i])>64) and (ord(a[i])<91)
                  then Write(chr(ord(a[i])+32))
               else Write(a[i]);
          end;
     end;
     Writeln;
end;
{************************************************************************}
begin
     ans:='y';
     While ans='y' do
     begin
          clrscr;
          write('Program By:  ');
          textcolor(19);
          writeln('Reza Hosseini Masoum');
          Writeln;
          textcolor(7);
          Writeln('Sum of Two Number press"1"');
          writeln('Checking the Statment press"2"');
          Writeln('For Exit press"3":');
          readln(key);
          case key of
               '1':sum;
               '2':paragraf;
               '3':exit;
               else readkey;
          end;
          Writeln('Do You Want to contine  y/n:');
          readln(ans);
          if ans<>'y' then Write('The End...');
     end;
end.