uses    crt;
var     i,j,k,code:integer;
        a,b:array [1..100] of longint;
        mon,sh:longint;
        ans:char;
begin
        clrscr;
        ans:='y';
        while ans='y' do
        begin
             write('Enter shomare hesab: ');
             readln(sh);
             write('Enter mojoodi hesab: ');
             readln(mon);
             write('Enter      1:jari     2:pas andaz    : ');
             readln(code);
             if code=1 then
             begin
                  i:=i+1;
                  a[i]:=mon;
             end
             else if code=2 then
             begin
                  j:=j+1;
                  b[j]:=mon;
             end;
             write('Do you want to continue(y/n): ');
             readln(ans);
             clrscr;
        end;
        clrscr;
        writeln('Hesabhaye Jari:');
        for k:=1 to i do
            write(a[i]:10);
        writeln;
        writeln('Hesabhaye pasandaz:');
        for k:=1 to j do
            write(b[j]:10);
        readln
end.