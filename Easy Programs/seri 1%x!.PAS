var     n,j,i,cntr:integer;
        fact,sum:real;

begin
        writeln('Enter n:');
        j:=2;
        i:=1;
        while i<n do
        begin;
              fact:=1;
              cntr:=1;
              while cntr<=j do
              begin;
                    fact:=cntr*fact;
                    cntr:=cntr+1;
              end;
              sum:=sum+1+(1/fact);
              i:=i+1;
              j:=j+1;
        end;
        writeln(sum);
        readln;
        readln;
end.
