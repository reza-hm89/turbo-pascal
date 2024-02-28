uses    crt;
var     i,j,x,y,x1,y1:word;
        ch:char;
begin
        clrscr;
        textbackground(1);
        textcolor(15);
        for i:=10 to 20 do
        begin
                gotoxy(12,i);
                write('Û');
                gotoxy(19,i);
                write('Û');
                gotoxy(26,i);
                write('Û');
                gotoxy(33,i);
                write('Û');
                gotoxy(40,i);
                write('Û');
                gotoxy(47,i);
                write('Û');
                gotoxy(54,i);
                write('Û');
                gotoxy(61,i);
                write('Û');
                gotoxy(68,i);
                write('Û');
        end;
        for i:=12 to 68 do
        begin
                gotoxy(i,10);
                write('Û');
                gotoxy(i,15);
                write('Û');
                gotoxy(i,20);
                write('Û');
        end;
        for i:=13 to 67 do
        begin
             gotoxy(i,25);
             write('Í');
             gotoxy(i,33);
             write('Í');
             gotoxy(i,29);
             write('Í');
        end;
        for i:=25 to 33 do
        begin
             gotoxy(12,i);
             write('º');
             gotoxy(68,i);
             write('º');
        end;
        gotoxy(12,25);
        write('É');
        gotoxy(68,25);
        write('»');
        gotoxy(12,33);
        write('È');
        gotoxy(68,33);
        write('¼');
        gotoxy(12,29);
        write('Ì');
        gotoxy(68,29);
        write('¹');
        gotoxy(13,26);write('Enter: ');
        gotoxy(13,30);write('Sum: ');
        gotoxy(14,13);write('sinx');
        gotoxy(21,13);write('cosx');
        gotoxy(28,13);write('tanx');
        gotoxy(35,13);write('cotx');
        gotoxy(42,13);write('Asin');
        gotoxy(49,13);write('Acos');
        gotoxy(56,13);write('Atan');
        gotoxy(63,13);write('Acot');
        gotoxy(15,18);write('SQR');
        gotoxy(21,18);write('SQRT');
        gotoxy(29,18);write('ABS');
        gotoxy(35,18);write('Round');
        gotoxy(43,18);write('LN');
        gotoxy(49,18);write('EXP');
        gotoxy(57,18);write('=');
        gotoxy(63,18);textcolor(lightred);write('EXIT');
        {=========================}
        x:=12;
        y:=10;
        x1:=1;
        y1:=1;
        textcolor(green);
        for i:=x to x+7 do
        begin
        gotoxy(i,y);
        write('Û');
        gotoxy(i,y+5);
        write('Û');
        end;
        for i:=y to y+5 do
        begin
        gotoxy(x,i);
        write('Û');
        gotoxy(x+7,i);
        write('Û');
        end;
        ch:=readkey;
        while ord(ch)<>27 do
        begin
             if ord(ch)=72 then
             begin
                  textcolor(white);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
                  y1:=1;
                  y:=10;
                  textcolor(green);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
             end
             else if ord(ch)=80 then
             begin
                  textcolor(white);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
                  y1:=2;
                  y:=15;
                  textcolor(green);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
             end
             else if ord(ch)=75 then
             begin
                  textcolor(white);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
                  x1:=x1-1;
                  if x1<1 then x1:=8;
                  x:=x-7;
                  if x<12 then x:=61;
                  textcolor(green);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
             end
             else if ord(ch)=77 then
             begin
                  textcolor(white);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
                  x1:=x1+1;
                  if x1>8 then x1:=1;
                  x:=x+7;
                  if x>61 then x:=12;
                  textcolor(green);
                  for i:=x to x+7 do
                  begin
                       gotoxy(i,y);
                       write('Û');
                       gotoxy(i,y+5);
                       write('Û');
                  end;
                  for i:=y to y+5 do
                  begin
                       gotoxy(x,i);
                       write('Û');
                       gotoxy(x+7,i);
                       write('Û');
                  end;
             end;
             ch:=readkey;
        end;
end.