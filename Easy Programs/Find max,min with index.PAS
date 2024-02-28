var  num,cntr,max,min,cntrmin,cntrmax:integer;

begin
     writeln('enter number');
     readln(num);
     cntr:=1;
     max:=num;
     min:=num;
     cntrmin:=1;
     cntrmax:=1;
     while (num<>-1) do
     begin;
     if (num>max) then max:=num;
     if (num<min) then
       begin;  min:=num;
               cntrmin:=cntr;
       end;
     writeln('enter number');
     readln(num);
     cntr:=cntr+1;
     end;
     if(min= -1) then writeln('empty list');
     else writeln('min=',min,'site=',cntrmin);
          writeln('max=',max,'site=',cntrmax);
     readln;
     readln;
end.
