uses    crt;
var     i,x,y:word;
        ch:char;
begin
        clrscr;
        textcolor(15);
        for i:=20 to  60 do
        begin
                gotoxy(i,5);
                write('€');
                gotoxy(i,8);
                write('‹');
                gotoxy(i,20);
                write('‹');
                gotoxy(i,10);
                write('‹');
                gotoxy(i,12);
                write('‹');
                gotoxy(i,14);
                write('‹');
                gotoxy(i,16);
                write('‹');
                gotoxy(i,18);
                write('‹');
        end;
        for i:=5 to 20 do
        begin
                gotoxy(20,i);
                write('€');
                gotoxy(60,i);
                write('€');
        end;
        for i:=9 to 20 do
        begin
                gotoxy(25,i);
                write('€');
                gotoxy(30,i);
                write('€');
                gotoxy(35,i);
                write('€');
                gotoxy(40,i);
                write('€');
        end;
        gotoxy(22,9);
        write('sin');
        gotoxy(27,9);
        write('cos');
        gotoxy(32,9);
        write('tan');
        gotoxy(37,9);
        write('x!');
        gotoxy(22,11);
        write('ArS');
        gotoxy(27,11);
        write('ArC');
        gotoxy(32,11);
        write('ArT');
        gotoxy(37,11);
        write('/\');
        gotoxy(37,13);
        write('/');
        gotoxy(32,13);
        write('9');
        gotoxy(27,13);
        write('8');
        gotoxy(22,13);
        write('7');
        gotoxy(22,15);
        write('4');
        gotoxy(27,15);
        write('5');
        gotoxy(32,15);
        write('6');
        gotoxy(37,15);
        write('*');
        gotoxy(37,17);
        write('-');
        gotoxy(32,17);
        write('3');
        gotoxy(27,17);
        write('2');
        gotoxy(22,17);
        write('1');
        gotoxy(37,19);
        write('+');
        gotoxy(32,19);
        write('=');
        gotoxy(27,19);
        write('.');
        gotoxy(22,19);
        write('0');
        x:=22;
        y:=8;
        textcolor(lightred);
        gotoxy(x,y);
        write('‹‹');
        gotoxy(x,y+2);
        write('‹‹');
        ch:=readkey;
        while ord(ch)<>27 do
        begin
             if ord(ch)=72 then
             begin
                  textcolor(15);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
                  y:=y-2;
                  if y<8 then y:=18;
                  textcolor(lightred);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
             end
             else if ord(ch)=80 then
             begin
                  textcolor(15);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
                  y:=y+2;
                  if y>18 then y:=8;
                  textcolor(lightred);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
             end
             else if ord(ch)=75 then
             begin
                  textcolor(15);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
                  x:=x-5;
                  if x<22 then x:=37;
                  textcolor(lightred);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
             end
             else if ord(ch)=77 then
             begin
                  textcolor(15);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
                  x:=x+5;
                  if x>37 then x:=22;
                  textcolor(lightred);
                  gotoxy(x,y);
                  write('‹‹');
                  gotoxy(x,y+2);
                  write('‹‹');
             end
             else if (ord(ch)=13) then
             begin
                  textcolor(15);
                  if  (x=32) and (y=12) then
                  begin
                      gotoxy(22,6);
                      write('9');
                  end;
                  if  (x=27) and (y=12) then
                  begin
                      gotoxy(22,6);
                      write('8');
                  end;
                  if  (x=22) and (y=12) then
                  begin
                      gotoxy(22,6);
                      write('7');
                  end;
                  if  (x=32) and (y=14) then
                  begin
                      gotoxy(22,6);
                      write('6');
                  end;
                  if  (x=27) and (y=14) then
                  begin
                      gotoxy(22,6);
                      write('5');
                  end;
                  if  (x=22) and (y=14) then
                  begin
                      gotoxy(22,6);
                      write('4');
                  end;
                  if  (x=32) and (y=16) then
                  begin
                      gotoxy(22,6);
                      write('3');
                  end;
                  if  (x=27) and (y=16) then
                  begin
                      gotoxy(22,6);
                      write('2');
                  end;
                  if  (x=22) and (y=16) then
                  begin
                      gotoxy(22,6);
                      write('1');
                  end;
                  if  (x=22) and (y=18) then
                  begin
                      gotoxy(22,6);
                      write('0');
                  end;
                  if  (x=27) and (y=18) then
                  begin
                      gotoxy(22,6);
                      write('.');
                  end;
             end;
        ch:=readkey;
        end;
end.