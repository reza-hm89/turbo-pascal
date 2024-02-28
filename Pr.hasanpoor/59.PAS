uses    crt;
var     n,m,s,sum,i,j,id,g,u:integer;
        avg:real;
        ans:char;
begin
        clrscr;
        ans:='y';
        while ans='y' do
        begin
             write('Enter your id: ');
             readln(id);
             write('Enter numbers of droos: ');
             readln(n);
             sum:=0;
             s:=0;
             for i:=1 to n do
             begin
                  write('Enter your grade and unit: ');
                  readln(g,u);
                  sum:=g*u+sum;
                  s:=s+u;
             end;
             avg:=sum/s;
             if avg>17 then
                j:=j+1;
             writeln('Average: ',avg:2:2);
             write('Do youn want to continue:(y/n)?');
             readln(ans);
             clrscr;
        end;
        write('Numbers of students that their average is >17: ',j);
        readln
end.