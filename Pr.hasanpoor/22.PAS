uses    crt;
var     n,i,j,k,z,num:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        j:=0;
        k:=0;
        z:=0;
        for i:=1 to n do
        begin
                write('Enter number: ');
                readln(num);
                if (num>0) then
                        j:=j+1
                else if (num<0) then
                        k:=k+1
                else
                        z:=z+1;
        end;
        writeln('numbers of positives : ',j);
        writeln('numbers of negatives : ',k);
        writeln('numbers of zeroes : ',z);
        readln
end.