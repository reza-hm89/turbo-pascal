program test;
uses    crt;
var     name:string;
        ave:real;
        stno:integer;
        first:text;
begin
        assign(first,'h:\test.txt');
        rewrite(first);
        repeat
              write('Enter first:');
              readln(name);
              if length(name)>0 then
              begin
                   write('Enter average,stno:');
                   readln(ave,stno);
                   writeln(first,ave:5:2,' ',stno,' ',name);
              end;
        until length(name)=0;
        close(first);
end.