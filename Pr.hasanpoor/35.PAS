uses    crt;
var     i,n,sum,s,max:longint;
        avg:real;
        name,maxname:string;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
                write('Enter your salary and name: ');
                readln(s,name);
                sum:=sum+s;
                if (s>max) then
                begin
                     max:=s;
                     maxname:=name;
                end;
        end;
        avg:=sum/n;
        writeln('Average: ',avg:2:2);
        writeln('Max with name: ',max:5,maxname);
        readln
end.
