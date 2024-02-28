uses    crt,graph;
var d,m,sw,tool:integer;
function menu:byte; forward;
procedure calculate; forward;
procedure option; forward;
(***************************************************)
procedure calculate;
const   cnt=999999999;
var     i,i1,j1,k1,x,y,sw,x1,y1,r:word;
        sum,sum1,sum2:real;
        ch,ch1:char;
        num,cntr:integer;
        a:array [1..100] of real;
        s:string;
begin
        restorecrtmode;
        textmode(lastmode);
        clrscr;
        textcolor(15);
        for i:=10 to 40 do
        begin
                gotoxy(20,i);
                write('Û');
                gotoxy(60,i);
                write('Û');
        end;
        for i:=20 to 60 do
        begin
                gotoxy(i,10);
                write('Û');
                gotoxy(i,40);
                write('Û');
        end;
        for i:=20 to 60 do
        begin
                gotoxy(i,20);
                write('Û');
                gotoxy(i,25);
                write('Û');
                gotoxy(i,30);
                write('Û');
                gotoxy(i,35);
                write('Û');
                gotoxy(i,40);
                write('Û');
        end;
        for i:=20 to 40 do
        begin
                gotoxy(20,i);
                write('Û');
                gotoxy(30,i);
                write('Û');
                gotoxy(40,i);
                write('Û');
                gotoxy(50,i);
                write('Û');
                gotoxy(60,i);
                write('Û');
        end;
        for i:=21 to 59 do
        begin
             gotoxy(i,17);
             write('-');
        end;
        gotoxy(22,12);
        write('Enter: ');
        gotoxy(22,18);
        write('Sum: ');
        gotoxy(24,23);
        write('sin');
        gotoxy(34,23);
        write('cos');
        gotoxy(44,23);
        write('tan');
        gotoxy(54,23);
        write('cot');
        gotoxy(23,28);
        write('Arcsin');
        gotoxy(33,28);
        write('Arccos');
        gotoxy(43,28);
        write('Arctan');
        gotoxy(53,28);
        write('Arccot');
        gotoxy(23,33);
        write('Round');
        gotoxy(34,33);
        write('ABS');
        gotoxy(44,33);
        write('SQR');
        gotoxy(53,33);
        write('SQRT');
        gotoxy(24,38);
        write('LN');
        gotoxy(34,38);
        write('EXP');
        gotoxy(44,38);
        write(':=');
        gotoxy(53,38);
        write('Insert');
        {=========================}
        x:=20;
        y:=20;
        x1:=1;
        y1:=1;
        textcolor(lightred);
        for i:=20 to 30 do
        begin
        gotoxy(i,y);
        write('Û');
        gotoxy(i,y+5);
        write('Û');
        end;
        for i:=20 to 25 do
        begin
        gotoxy(x,i);
        write('Û');
        gotoxy(x+10,i);
        write('Û');
        end;
        sw:=0;
        sum:=0;
        sum1:=0;
        sum2:=0;
        ch:=readkey;
        while ord(ch)<>27 do
        begin
             if ord(ch)=72 then
             begin
                  y1:=y1-1;
                  if y1<1 then y1:=4;
                  textcolor(15);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
                  y:=y-5;
                  if y<20 then y:=35;
                  textcolor(lightred);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
             end
             else if ord(ch)=80 then
             begin
                  y1:=y1+1;
                  if y1>4 then y1:=1;
                  textcolor(15);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
                  y:=y+5;
                  if y>35 then y:=20;
                  textcolor(lightred);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
             end
             else if ord(ch)=75 then
             begin
                  x1:=x1-1;
                  if x1<1 then x1:=4;
                  textcolor(15);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
                  x:=x-10;
                  if x<20 then x:=50;
                  textcolor(lightred);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
             end
             else if ord(ch)=77 then
             begin
                  x1:=x1+1;
                  if x1>4 then x1:=1;
                  textcolor(15);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
                  x:=x+10;
                  if x>50 then x:=20;
                  textcolor(lightred);
                  for i:=x to x+10 do
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
                          gotoxy(x+10,i);
                          write('Û');
                  end;
             end
             else if (ord(ch)=13) then
             begin
                  if sum>9999999 then sum:=0;
                  if (x1=1) and (y1=1) then
                      sum:=sin(a[1]*pi/180)
                  else if (x1=2) and (y1=1) then
                      sum:=cos(sum*pi/180)
                  else if (x1=3) and (y1=1) then
                      sum:=(sin(sum*pi/180))/(cos(sum*pi/180))
                  else if (x1=4) and (y1=1) then
                      sum:=(cos(sum*pi/180))/(sin(sum*pi/180))
                  else if (x1=1) and (y1=2) then
                      sum:=1/sin(sum*pi/180)
                  else if (x1=2) and (y1=2) then
                      sum:=1/cos(sum*pi/180)
                  else if (x1=3) and (y1=2) then
                      sum:=arctan(sum)
                  else if (x1=4) and (y1=2) then
                      sum:=1/arctan(sum)
                  else if (x1=1) and (y1=3) then
                      sum:=round(sum)
                  else if (x1=2) and (y1=3) then
                      sum:=abs(sum)
                  else if (x1=3) and (y1=3) then
                      sum:=sqr(sum)
                  else if (x1=4) and (y1=3) then
                      sum:=sqrt(sum)
                  else if (x1=1) and (y1=4) then
                      sum:=ln(sum)
                  else if (x1=2) and (y1=4) then
                      sum:=exp(sum)
                  else if (x1=3) and (y1=4)  then
                  begin
                       gotoxy(26,18);
                       write('                            ');
                       gotoxy(26,18);
                       write(sum:2:tool);
                       if sum>cnt then sum:=0;
                       sw:=0;
                  end
                  else if (x1=4) and (y1=4)  then
                  begin
                       i1:=1;
                       sum1:=0;
                       sw:=1;
                       a[1]:=0;
                       cntr:=0;
                       gotoxy(22,13);
                       write('                                 ');
                       gotoxy(22,14);
                       write('                                 ');
                       gotoxy(22,13);
                       readln(s);
                       while (i1<=length(s)) do
                       begin
                            if  (s[i1]='+') or (s[i1]='-') or (s[i1]='*') or (s[i1]='/') then
                            begin
                                 cntr:=cntr+1;
                                 ch:=s[i1];
                                 j1:=i1;
                            end;
                            i1:=i1+1;
                       end;
                       if (cntr=1) and (ch='+') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end;
                            end;
                            sum2:=sum2+sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='-') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end;
                            end;
                            sum2:=sum2-sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='*') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end;
                            end;
                            sum2:=sum2*sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='/') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end;
                            end;
                            sum2:=sum2/sum1;
                            sum:=sum2
                       end
                       else
                       begin
                            gotoxy(22,14);
                            write('Syntax Error!');
                       end;
                  end;{if 13}

              end;
        ch:=readkey;
        end;
end;
(********************************************************)
function menu:byte;
var       d,y,m:integer;
          ch:char;
begin
     setgraphmode(getgraphmode);
     cleardevice;
     setbkcolor(yellow);
     setfillstyle(1,8);
     setcolor(8);
     fillellipse(190,200,5,150);
     fillellipse(450,200,5,150);
     fillellipse(320,50,130,5);
     fillellipse(320,350,130,5);
     setcolor(5);
     settextstyle(8,0,3);
     outtextxy(290,90,'Start');
     setcolor(1);
     outtextxy(282,180,'Option');
     outtextxy(295,270,'Exit');
     ch:=readkey;
     y:=1;
     while ord(ch)<>27 do
     begin
     case (y) of
          1:    begin
                setcolor(1);
                outtextxy(290,90,'Start');
                end;
          2:    begin
                setcolor(1);
                outtextxy(282,180,'Option');
                end;
          3:    begin
                setcolor(1);
                outtextxy(295,270,'Exit');
                end;
     end;
     if ord(ch)=72 then
          begin
                y:=y-1;
                if y<1 then y:=3;
          end
     else if ord(ch)=80 then
          begin
               y:=y+1;
               if y>3 then y:=1;
          end
     else if ord(ch)=13 then
     begin
             menu:=y;
             break;
     end;
     case (y) of
          1:    begin
                setcolor(5);
                outtextxy(290,90,'Start');
                end;
          2:    begin
                setcolor(5);
                outtextxy(282,180,'Option');
                end;
          3:    begin
                setcolor(5);
                outtextxy(295,270,'Exit');
                end;
     end;
          ch:=readkey;
     end;

end;
(*****************************************)
procedure option;
var       num:byte;
begin
        restorecrtmode;
        textmode(lastmode);
        repeat
        clrscr;
        textcolor(15);
        write('Enter tool namyesh motaghayer(0-9): ');
        readln(num);
        until num<10;
        if num<10 then
           tool:=num;
end;
(*****************************************)
begin
     initgraph(d,m,'C:\tpascal7\bgi');
     repeat
     sw:=menu;
     case sw of
          1:calculate;
          2:option;
     end;
     until (sw=3);
end.