uses    crt;
var     a:array [1..100,1..4] of longint;
        i,j,x,k,z,n,m,r,y:word;
        id:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter ID (70-74): ');
             readln(id);
             r:=id div 10000;
             r:=r mod 10;
             case r of
                  1:begin
                         j:=j+1;
                         a[j][1]:=id;
                    end;
                  2:begin
                         k:=k+1;
                         a[k][2]:=id;
                  end;
                  3:begin
                         z:=z+1;
                         a[z][3]:=id;
                  end;
                  4:begin
                         m:=m+1;
                         a[m][4]:=id;
                  end;
             end;
        end;
        x:=1;
        clrscr;
        for i:=1 to 4 do
        begin
            for j:=1 to n do
            begin
                 gotoxy(x,y);
                write(a[j][i]);
                y:=y+1;
            end;
            x:=x+10;
            y:=1;
            gotoxy(x,y);
        end;
        readln;
end.
