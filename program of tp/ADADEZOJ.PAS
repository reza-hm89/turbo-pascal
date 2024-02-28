uses crt;
var     i,l,k,temp:integer;
begin
     clrscr;
     i:=0;
     write('enter L,K:');
     readln(l,k);
     if l>k then
            begin
                 temp:=l;
                 l:=k;
                 k:=temp;
            end;
     i:=l;
     while i<k do
     begin
          if i mod 2=0 then write(i:5);
          i:=i+1;
     end;
     readln;
end.