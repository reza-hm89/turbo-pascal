uses crt;
var  s:string;
     a:array[1..100] of real;
     ch:char;
     index:boolean;
     i,j,z,k,num,cntr,s1,r,sum,sum1,sum2:integer;
begin
     clrscr;
     repeat
     write('enter: ');
     readln(s);
     i:=1;
     sum:=0;
     cntr:=0;
     a[1]:=0;
     ch:=' ';
     while i<=length(s) do
     begin
          if (ord(s[i])>=48) and (ord(s[i])<=57) then
          begin
               num:=ord(s[i])-48;
               sum:=sum*10+num;
          end
          else if (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
               if (ord(s[i+1])>=48) and (ord(s[i+1])<=57) then
          BEGIN
          index:=false;
          if (s[i]='+') then
          begin
               j:=1;
               ch:=s[i];
               a[j]:=a[j]+sum;
               sum:=0;
               z:=1;
          end
          else if (s[i]='-') then
          begin
               j:=1;
               if (cntr=0)  then
               begin
                   ch:=s[i];
                   a[j]:=a[j]+sum;
                   sum:=0;
               end
               else
               begin
                    ch:=s[i];
                    a[j]:=a[j]-sum;
                    sum:=0;
               end;
               cntr:=cntr+1;
          end
          else if (s[i]='*') then
          begin
               j:=1;
               ch:=s[i];
               if z=0 then a[1]:=1;
               a[j]:=a[j]*sum;
               sum:=0;
               z:=1;
          end
          else if (s[i]='/') then
          begin
               j:=1;
               ch:=s[i];
               if z=0 then begin
               a[1]:=1;
               a[j]:=sum/a[j];
               end
               else
                  a[j]:=a[j]/sum;
               sum:=0;
               z:=1;
          end
          END
          else
          begin
              writeln('Syntax Error!');
              index:=true;
          end;
          if (i=length(s)) and (ch='+') then
             a[j]:=a[j]+sum
          else if (i=length(s)) and (ch='-') then
             a[j]:=a[j]-sum
          else if (i=length(s)) and (ch='*') then
             a[j]:=a[j]*sum
          else if (i=length(s)) and (ch='/') then
             a[j]:=a[j]/sum;
          i:=i+1;
     end;
     until index=false;
     write(a[1]:2:2);
     readln
end.