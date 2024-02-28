uses Crt;
var
   ans,key:char;
procedure sum;
var
    z,b:string;
    l,m,list1,list2:array [1..100]of longint;
    i,j,n1,n2,max,k,help,p,help2:longint;
    found:boolean;
begin
     Write('**Please Enter first Number:**');
     readln(z);
     found:=true;
     for i:=1 to ord(z[0]) do
     begin
          While z[i]=' 'do
                found:=false;
          if found=false then break;
     end;
     if found=true then
        begin
             Write('**Please Enter second Number:**');
             readln(b)
        end;
     if found=false then
     begin
          b[0]:=chr(ord(z[0])-i);
          j:=1;
          for k:=1 to ord(b[0])do
          begin
               b[j]:=z[j+1];
               j:=j+1;
          end;
          help2:=k;
          i:=ord(z[0]);
          p:=i;
          for k:=1 to p-help do
              for i:=j to ord(z[0]) do
                  z[i]:=z[i+1];
     end;
     n1:=ord(z[0]);
     if found=true
        then n2:=ord(b[0])
     else n2:=k;
     for i:=1 to ord(z[0]) do
     begin
         l[i]:=ord(z[n1])-48;
         n1:=n1-1;
     end;
     for i:=1 to ord(b[0]) do
     begin
          m[i]:=ord(b[n2])-48;
          n2:=n2-1;
     end;
     if ord(z[0])>ord(b[0])
        then max:=ord(z[0])
     else max:=ord(b[0]);
     list1[1]:=0;
     for i:=2 to max do
     begin
         list1[i+1]:=(l[i]+m[i]+list1[i])div 10;
         list1[i]:=(l[i]+m[i]+list1[i])mod 10;
     end;
     n1:=max;
     for i:=1 to max do
     begin
          list2[i]:=list1[n1];
          n1:=n1-1;
     end;
     if found=true then
        for i:=1 to max
       do
            Write(list2[i]);
        Writeln;
     if found=false then
        for i:=1 to max-2 do
            Write(list2[i]);
        Writeln;
end;
{**************************************************************************************}
procedure paragraf;
var
   z:string;
   n,i:integer;
begin
     Writeln('**Please Enter a statment**:');
     readln(z);
     n:=ord(z[0]);
     if (ord(z[i])>96) and (ord(z[i])<123)
        then Write(chr(ord(z[1])-32));
     for i:=2 to n do
     begin
          if z[i-1]=' 'then
          begin
               if (ord(z[i])>96) and (ord(z[i])<123)
                  then Write(chr(ord(z[i])-32))
               else Write(z[i]);
          end;
          if z[i-1]<>' 'then
          begin
               if (ord(z[i])>64) and (ord(z[i])<91)
                  then Write(chr(ord(z[i])+32))
               else Write(z[i]);
          end;
     end;
     Writeln;
end;
{****************************************************************************************}
begin{begin of main}

     ans:='y';
     While ans='y' do
     begin
          clrscr;
          Write(' Program by');
          textcolor(18);
          writeln('    Reza Hosseini Masoum');
          Writeln;
          textcolor(9);
          Writeln(' Sum of Two Number press "1"' );
          writeln(' Checking the Statment press "2"');
          Writeln(' for Exit press "3"');
          readln(key);
          case key of
               '1':sum;
               '2':paragraf;
               '3':break;
               else readkey;
          end;
          Writeln('Do You want to contine  y/n:');
          readln(ans);
          clrscr;
     end;
end.