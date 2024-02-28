uses    crt;
var     n,r,s,s1,s2,s3,s4,s5:integer;
begin
        clrscr;
        write('Enter your money: ');
        readln(n);
        while (n>0) do
        begin
             r:=n mod 50;
             s:=(n div 50)+s;
             n:=r;
             r:=n mod 20;
             s1:=(n div 20)+s1;
             n:=r;
             r:=n mod 10;
             s2:=(n div 10)+s2;
             n:=r;
             r:=n mod 5;
             s3:=(n div 5)+s3;
             n:=r;
             r:=n mod 2;
             s4:=(n div 2)+s4;
             s5:=(n mod 2)+s5;
             n:=0;
        end;
        write(s,' 50   ',s1,' 20   ',s2,' 10   ',s3,' 5   ',s4,' 2   ',s5,' 1');
        readln
end.