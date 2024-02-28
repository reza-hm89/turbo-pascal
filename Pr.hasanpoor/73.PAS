uses    crt;
var     a:array [1..100] of integer;
        i,n,id,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter ID: ');
             readln(a[i]);
        end;
        write('Enter Your ID: ');
        readln(id);
        for i:=1 to n do
             if id=a[i] then
                  index:=i;
        if index<>0 then
           write('Yes ,in', index,' location')
        else
            write('Not found');
        readln
end.