uses
    WinCrt;
var
   ans,key:char;
procedure sum;
var
    a,b:string;
    l,m,list1,list2:array [1..100]of longint;
    i,j,n1,n2,max,k,help,p,help2:longint;
    found:boolean;
begin
     Write('adade morede nazar ravared konid:');
     readln(a);
     found:=true;
     for i:=1 to ord(a[0]) do
     begin
          While a[i]=' 'do
                found:=false;
          if found=false then break;
     end;
     if found=true then
        begin
             Write('adade morede nazar dovom ravared konid:');
             readln(b)
        end;
     if found=false then
     begin
          b[0]:=chr(ord(a[0])-i);
          j:=1;
          for k:=1 to ord(b[0])do
          begin
               b[j]:=a[j+1];
               j:=j+1;
          end;
          help2:=k;
          i:=ord(a[0]);
          p:=i;
          for k:=1 to p-help do
              for i:=j to ord(a[0]) do
                  a[i]:=a[i+1];
     end;
     n1:=ord(a[0]);
     if found=true
        then n2:=ord(b[0])
     else n2:=k;
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
     if ord(a[0])>ord(b[0])
        then max:=ord(a[0])
     else max:=ord(b[0]);
     list1[1]:=0;
     for i:=1 to max do
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
        for i:=1 to max do
            Write(list2[i]);
        Writeln;
     if found=false then
        for i:=1 to max-2 do
            Write(list2[i]);
        Writeln;
end;
procedure paragraf;
var
   a:string;
   n,i:integer;
begin
     Writeln('jomle khod ra type namaid:');
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
begin
     ans:='y';
     While ans='y' do
     begin
          Write('baraye jame 2 adad klide 1 ya A va baraye tashihe matn kelide 2 ya B');
          Writeln('va baraye khorooj klide 3 ya Q ra bezanid:');
          readln(key);
          case key of
               '1','a','A':sum;
               '2','b','B':paragraf;
               '3','c','c':break;
               else readkey;
          end;
          Writeln('aya edame midahid  y/n:');
          readln(ans);
          clrscr;
     end;
end.