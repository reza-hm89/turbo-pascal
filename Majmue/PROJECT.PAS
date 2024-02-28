uses crt;
var
       choice,xa,xb,xc,temp,x,i,j,k,number,x1,y1:integer;
       a:array [1..100] of integer;
       b:array [1..100] of integer;
       c:array [1..100] of integer;
       d:array [1..200] of integer;
       e:array [1..100] of integer;
       f:array [1..200] of integer;
       cntr,ch:char;

(*-----------------------------------------------------------------*)
procedure a1;
begin
     clrscr;
     for i:=1 to 100 do
         a[i]:=0;
     writeln('tedad azaye A=');
     readln(xa);
     writeln('azaye A ra vared konid, tekrari nabashand!');
     readln(a[1]);
     k:=1;

     while k<xa do
     begin
          readln(temp);
          for i:=1 to k do
               if a[i]<>temp then
                  j:=j+1;
          if j=k then
            begin
                   k:=k+1;
                   a[k]:=temp;
                   j:=0;
            end
          else
             begin
             writeln('adad tekrari bood');
             j:=0;
             end;
     end;
     write('a={');
     for i:=1 to xa do
         write(a[i]:3);
     write('}':3);
     readln;
end;
(*-----------------------------------------------------------------------*)
procedure b1;
begin
     clrscr;
     for i:=1 to 100 do
         b[i]:=0;
     writeln('tedad ozvhaye B: ');
     readln(xb);
     writeln('azaye B ra vared konid,tekrari nabashand!');
     readln(b[1]);
     k:=1;
     while k<xb do
     begin
          readln(temp);
          for i:=1 to k do
               if b[i]<>temp then
                  j:=j+1;
          if j=k then
             begin
                   k:=k+1;
                   b[k]:=temp;
                   j:=0;
             end
          else
          begin
             writeln('adad tekrari bood');
             j:=0;
          end;
     end;
     write('b={');
     for i:=1 to xb do
     write(b[i]:3);
     write('}':3);
     readln;
end;
(*--------------------------------------------------------------------------*)
procedure c1;
begin
            clrscr;
            for i:=1 to 100 do
              c[i]:=0;
            x:=0;
            for i:=1 to xa do
                for j:=1 to xb do
                 if a[i]=b[j] then
                    begin
                      x:=x+1;
                      c[x]:=a[i];
                    end;
            write('eshterak={');
            for i:=1 to x do
              write(c[i]:4);
            writeln('   }');
            readln;
end;
(*-------------------------------------------------------------------------*)
procedure  d1;
begin
        clrscr;
        for i:=1 to 200 do
          d[i]:=0;
        x:=0;
        for i:=1 to xa do
           begin
             x:=x+1;
             d[x]:=a[i];
           end;
        k:=0;
        for i:=1 to xb do
           begin
             for j:=1 to x do
                if b[i]<>d[j] then
                k:=k+1;
             if k=x then
               begin
                  x:=x+1;
                  d[x]:=b[i];
                  k:=0;
               end
             else k:=0;
           end;
        write('A U B={');
        for i:=1 to x do
        write(d[i]:3);
        writeln('  }');
        readln;
    end;
(*------------------------------------------------------------------------*)
procedure e1;
    begin
       clrscr;
       for i:=1 to 100 do
            e[i]:=0;
       k:=0;
       x:=0;
       for i:=1 to xa do
          begin
               for j:=1 to xb do
                  if a[i]<>b[j] then
                      k:=k+1;
               if k=xb then
                  begin
                     x:=x+1;
                     e[x]:=a[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('A-B={');
       for i:=1 to x do
       write(e[i]:4);
       writeln('}':4);
       readln;
    end;
(*------------------------------------------------------------------*)
procedure f1;
    begin
       clrscr;
       for i:=1 to 100 do
            f[i]:=0;
       k:=0;
       x:=0;
       for i:=1 to xb do
          begin
               for j:=1 to xa do
                  if b[i]<>a[j] then
                      k:=k+1;
               if k=xa then
                  begin
                     x:=x+1;
                     f[x]:=b[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('B-A={');
       for i:=1 to x do
       write(f[i]:4);
       writeln('}':4);
       readln;
    end;
(*------------------------------------------------------------*)
function menu:integer;
begin
     clrscr;
     gotoxy(10,2);
     writeln('1.Anasore majmooe A');
     gotoxy(10,3);
     writeln('2.Anasore majmooe B');
     gotoxy(10,4);
     writeln('3.Eshterak');
     gotoxy(10,5);
     writeln('4.(A U B)');
     gotoxy(10,6);
     writeln('5.(A-B)');
     gotoxy(10,7);
     writeln('6.(B-A)');
     gotoxy(10,8);
     gotoxy(5,2);
     write('-->');
     ch:=readkey;
     x1:=5;
     y1:=2;
     while ord(ch)<>27 do
     begin
     if ord(ch)=80 then
     begin
          gotoxy(x1,y1);
          write('   ');
          y1:=y1+1;
          if y1>7 then y1:=2;
          gotoxy(x1,y1);
          write('-->');
     end
     else if ord(ch)=72 then
     begin
          gotoxy(x1,y1);
          write('   ');
          y1:=y1-1;
          if y1<2 then y1:=7;
          gotoxy(x1,y1);
          write('-->');
     end
     else if ord(ch)=13 then
     begin
          menu:=y1;
          break;
     end;
     ch:=readkey;
     end;
end;
(*-----------------------------------------------------*)
begin
     repeat
     choice:=menu;
     case choice of
     2:a1;
     3:b1;
     4:c1;
     5:d1;
     6:e1;
     7:f1;
     end;
     until (choice=8) or (ord(ch)=27);
end.