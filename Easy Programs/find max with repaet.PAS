var     n,num,max,cntr,i:integer;

Begin
     write('Enter n:');
     readln(n);
     write('Enter number:');
     readln(num);
     max:=num;
     cntr:=1;
     i:=1;
     while i<n do
     begin;
           write('Enter number:');
           readln(num);
           if num=max then cntr:=cntr+1;
           if num>max then
           begin;
                 max:=num;
                 cntr:=1;
           end;
     i:=i+1;

     end;
     writeln('max=',max,' repeat=',cntr);
     readln;
     readln;
end.