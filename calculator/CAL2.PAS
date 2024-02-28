uses    crt,graph;
var driver,mode,sw,number:integer;
    sum:real;
function menu:byte; forward;
procedure calculate; forward;
procedure board; forward;
procedure setting; forward;
(***************************************************)
procedure calculate;
var     i,i1,j1,j,k1:word;
        sum1,sum2,sum3:real;
        ch:char;
        num,cntr,index,pbaz,pbaste:integer;
        a:array [1..17] of string;
        s:string;
begin
        a[1]:='+';a[2]:='-';a[3]:='*';a[4]:='/';a[5]:='(';a[6]:=')';
        a[7]:='0';a[8]:='1';a[9]:='2';a[10]:='3';a[11]:='4';a[12]:='5';
        a[13]:='6';a[14]:='7';a[15]:='8';a[16]:='9';a[17]:=' ';
        i:=1;
             repeat
                       gotoxy(20,26);
                       write('                               ');
                       gotoxy(20,27);
                       write('                               ');
                       gotoxy(20,26);
                       readln(s);
                       index:=1;
                       pbaz:=0;
                       pbaste:=0;
                       i:=1;
                       while i<=length(s) do
                       begin
                            for j:=1 to 17 do
                                if s[i]=a[j] then
                                   break;
                            if j=17 then
                            begin
                                 index:=0;
                                 break;
                            end;
                            if s[i]='(' then
                               pbaz:=pbaz+1;
                            if s[i]=')' then
                               pbaste:=pbaste+1;
                       if  (s[1]='*') or (s[1]='/') or (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
if(s[i-1]='+')or(s[i-1]='-')or(s[i-1]='*')or(s[i-1]='/')or(s[i+1]='+')or(s[i+1]='-')or(s[i+1]='*')or(s[i+1]='/')then
                       index:=0;
                       i:=i+1;
                       end;
                       sum3:=pbaz-pbaste;
                       if (index=0) or (sum3<>0) then
                       begin
                            gotoxy(25,27);
                            write('Syntax error!');
                            readkey;
                       end
                       else
                           index:=2;
                 until index=2;
                       sum1:=0;
                       for i:=1 to length(s) do
                            begin
                                if (ord(s[i])>=48) and (ord(s[i])<=57) then
                                begin
                                     num:=ord(s[i])-48;
                                     sum1:=sum1*10+num;
                                end
                                else
                                    break;
                            end;
                       sum:=sum1;
                       i1:=1;
                       i:=1;
                       cntr:=0;
                 while (i<=length(s)) do
                       begin
                       if  (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                            begin
                                 cntr:=cntr+1;
                                 ch:=s[i];
                                 j1:=i;
                            end
                            else ch:=' ';
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
                                end
                                else
                                    break;
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
                                end
                                else
                                    break;
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
                                end
                                else
                                    break;
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
                                end
                                else
                                    break;
                            end;
                            sum2:=sum2/sum1;
                            sum:=sum2
                       end;
                       if (cntr>1) and (ch='+') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum+sum1;
                       end
                       else if (cntr>1) and (ch='-') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum-sum1;
                       end
                       else if (cntr>1) and (ch='*') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum*sum1;
                       end
                       else if (cntr>1) and (ch='/') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum/sum1;
                       end;
                       i:=i+1;
     end;{while}
     gotoxy(18,30);
             write('                               ');
end;
(***************************************************)
procedure board;
var     i,j,x,y,x1,y1:word;
        ch:char;
begin
        {restorecrtmode;   }
        textmode(lastmode);
        clrscr;
        textbackground(1);
        textcolor(1);
        for i:=1 to 80 do
             for j:=1 to 50 do
                 begin
                      gotoxy(i,j);
                      write('Û');
                 end;
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
             end
             else if (ord(ch)=13) then
             begin
        if sum>9999999 then
        begin
        gotoxy(18,30);
        write('                               ');
        sum:=0;
        end;
        if (x1=1) and (y1=1) then
        begin
             sum:=sin(sum*pi/180);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=2) and (y1=1) then
        begin
             sum:=cos(sum*pi/180);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=3) and (y1=1) then
        begin
             sum:=(sin(sum*pi/180))/(cos(sum*pi/180));
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=4) and (y1=1) then
        begin
             sum:=(cos(sum*pi/180))/(sin(sum*pi/180));
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=5) and (y1=1) then
        begin
             sum:=1/sin(sum*pi/180);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=6) and (y1=1) then
        begin
             sum:=1/cos(sum*pi/180);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=7) and (y1=1) then
        begin
             sum:=arctan(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=8) and (y1=1) then
        begin
             sum:=1/arctan(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=1) and (y1=2) then
        begin
             sum:=sqr(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=2) and (y1=2) then
        begin
             sum:=sqrt(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=3) and (y1=2) then
        begin
             sum:=abs(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=4) and (y1=2) then
        begin
             sum:=round(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=5) and (y1=2) then
        begin
             sum:=ln(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=6) and (y1=2) then
        begin
             sum:=exp(sum);
             gotoxy(18,30);
             write('                               ');
             gotoxy(18,30);
             write(sum:2:number);
        end
        else if (x1=7) and (y1=2)  then
        begin
              calculate;
              gotoxy(18,30);
              write(sum:2:number);
        end
        else
            break;
        end;
        ch:=readkey;
        end;
end;
(********************************************************)
function menu:byte;
const a:array[1..10] of integer=(140,50,150,60,150,340,140,350,140,50);
      b:array[1..10] of integer=(500,60,510,50,510,350,500,340,500,60);
      c:array[1..10] of integer=(140,50,150,60,500,60,510,50,140,50);
      d1:array[1..10] of integer=(140,350,150,340,500,340,510,350,140,350);
var y:integer;
    ch:char;
begin
     setgraphmode(getgraphmode);
     cleardevice;
     setbkcolor(lightblue);
     line(140,50,510,50);
     line(150,60,500,60);
     line(150,340,500,340);
     line(140,350,510,350);
     line(140,50,140,350);
     line(150,60,150,340);
     line(510,50,510,350);
     line(500,60,500,340);
     line(140,50,150,60);
     line(500,60,510,50);
     line(140,350,150,340);
     line(500,340,510,350);
     setcolor(14);
     settextstyle(7,0,2);
     setfillstyle(6,8);
     fillpoly(5,a);
     fillpoly(5,b);
     setfillstyle(6,7);
     fillpoly(5,c);
     fillpoly(5,d1);
     setcolor(14);
     outtextxy(275,90,'Calculator');
     setcolor(1);
     outtextxy(285,180,'Setting');
     outtextxy(295,270,'Exit');
     ch:=readkey;
     y:=1;
     while ord(ch)<>27 do
     begin
     case (y) of
          1:    begin
                setcolor(1);
                outtextxy(275,90,'Calculator');
                end;
          2:    begin
                setcolor(1);
                outtextxy(285,180,'Setting');
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
                setcolor(14);
                outtextxy(275,90,'Calculator');
                end;
          2:    begin
                setcolor(14);
                outtextxy(285,180,'Setting');
                end;
          3:    begin
                setcolor(14);
                outtextxy(295,270,'Exit');
                end;
     end;
          ch:=readkey;
     end;
end;
(*****************************************)
procedure setting;
var       i,j:integer;
begin
     for i:=200 to 470 do
          for j:=70 to 320 do
              putpixel(i,j,lightblue);
     settextstyle(7,0,1);
     setcolor(blue);
     outtextxy(163,100,'Enter a number for Real Range');
     outtextxy(295,123,'(1-9)');
     setcolor(7);
     rectangle(270,150,370,180);
     setcolor(8);
     rectangle(269,149,371,181);
     repeat
     setfillstyle(1,lightblue);
     bar(271,151,369,179);
     gotoxy(40,11);
     readln(number);
     until number<=9;
end;
(*****************************************)
begin
     initgraph(driver,mode,'C:\tpascal7\bgi');
     repeat
     sw:=menu;
     case sw of
          1:board;
          2:setting;
     end;
     until (sw=3);
end.