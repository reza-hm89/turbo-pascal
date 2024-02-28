uses    crt;
var     i,n,code:integer;
        a,b:array [1..100] of longint;
        gh:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter code azmayesh: ');
             readln(code);
             write('Enter gheymate azmayesh: ');
             readln(gh);
             a[i]:=code;
             b[i]:=gh;
        end;
        write('Enter your code: ');
        readln(code);
        for i:=1 to n do
            if code=a[i] then
               write('gheymat: ',b[i]);
        readln
end.