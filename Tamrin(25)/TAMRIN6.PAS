program Tamrin6;
uses    crt;
var     n,i,j,cntr,k:integer;
begin
        clrscr;
        textcolor(7);
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        cntr:=1;
        j:=1;
        k:=n;
        while cntr<=n do
          begin
                write('':k-1);
                for i:=1 to j do
                      write('*');
                k:=k-1;
                j:=j+2;
                cntr:=cntr+1;
                writeln;
          end;
          k:=1;
          while cntr>=1 do
          begin
                write('':k);
                for i:=(2*n)-3 downto 1 do
                    write('*');
                writeln;
                n:=n-1;
                cntr:=cntr-1;
                k:=k+1;
          end;
          textcolor(17);
          writeln;
          write('Press any Key to exit');
          readln;
end.