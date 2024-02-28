uses    crt;
var     a:array [1..100] of string;
        b:array [1..100] of word;
        i,n,index:word;
        name:string;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter Name: ');
             readln(a[i]);
             write('Enter Average: ');
             readln(b[i]);
        end;
        write('Enter a name: ');
        readln(name);
        for i:=1 to n do
            if a[i]=name then
               index:=i;
        if index<>0 then
           write(b[index])
        else
           write('not found');

        readln;
end.
