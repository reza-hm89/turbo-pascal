uses graph,crt,dos;
type
    score=record
         sco:array[1..2,2..8] of integer;
    end;
    param=record
        a:array[1..3] of integer;
        end;
     arr= record
       arsl:array[1..15,1..15] of integer;
  end;
var
   driver,mode,n:integer;
   min,h,m,s,hund,s3:word;
   ch:char;
   b:array[1..15,1..15] of integer;
procedure arrowkey(n:integer);forward;
procedure rasm(n:integer);forward;
procedure print(n:integer);forward;
procedure rand(n:integer);forward;
procedure timer;forward;
procedure menu;forward;
{***************************************************************************}
procedure entern;
begin
     restorecrtmode;
     textmode(LASTMODE);
     clrscr;
     textcolor(14);
     gotoxy(1,1);
     write('Enter N for N*N Pazzle(2-8):');
     readln(n);
end;
{***************************************************************************}
procedure menu;
var
   ch:char;
   y:integer;
begin
     initgraph(driver,mode,'c:\tpascal7\bgi');
     cleardevice;

     setfillstyle(1,lightblue);
     setcolor(lightblue);
     fillellipse(190,200,5,150);
     fillellipse(450,200,5,150);
     fillellipse(320,50,130,5);
     fillellipse(320,350,130,5);
     setcolor(yellow);
     settextstyle(8,0,3);
     outtextxy(290,90,'Start');
     setcolor(1);
     outtextxy(292,180,'Load');
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
                outtextxy(292,180,'Load');
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
     else if (ord(ch)=13) and (y=1) then begin
               entern;
               rand(n);
               rasm(n);
               print(n);
               GetTime(h,m,s3,hund);
               settime(h,m,1,1);
               while not(keypressed) do
                     timer;
               arrowkey(n);
               menu;
               cleardevice;
               setfillstyle(1,8);
               settextstyle(8,0,3);
               end
          else if (ord(ch)=13) and (y=3) then
               halt(1);
     case (y) of
          1:    begin
                setcolor(yellow);
                outtextxy(290,90,'Start');
                end;
          2:    begin
                setcolor(yellow);
                outtextxy(292,180,'Load');
                end;
          3:    begin
                setcolor(yellow);
                outtextxy(295,270,'Exit');
                end;
     end;
          ch:=readkey;
     end;
end;
{***************************************************************************}
procedure timer;
var
  h,m,s2,hund,a1,a2: word;
begin
     gettime(h,m,s2,hund);
     if (s2>s) or (s=59) or (s=0) then
     begin
       setfillstyle(1,0);
       bar(300,1,639,200);
       setcolor(4);
       a1:=s2 mod 10;
       a2:=(s2 div 10)mod 10;
       settextstyle(1,0,4);
       outtextxy(400,2,chr(min+48));
       outtextxy(470,2,':');
       outtextxy(495,2,chr(a2+48));
       outtextxy(565,2,chr(a1+48));
       settextstyle(0,0,0);
       if (s2=59) then
       begin
          min:=min+1;
          {delay(1000);}
       end;
          s:=s2;
     end;
end;
{***************************************************************************}
procedure check_win(n:integer);
var
   a:array[1..100] of integer;
   i,j,k:integer;
begin
     k:=1;
     for i:=n to (2*n)-1 do
         for j:=n  to (2*n)-1 do
         begin
              a[k]:=b[i][j];
              k:=k+1;
         end;
     k:=1;
     for i:=1 to (n*n)-2 do
         if a[i]>a[i+1] then
            k:=0;
     if (k=1) and (a[1]<>0) then
     begin
        setcolor(4);
        settextstyle(7,0,2);
        outtextxy(205,325,'*** You Win ***');
        outtextxy(160,355,' Press ENTER To Exit');
        readln;
        menu;
     end;
end;
{***************************************************************************}
procedure print(n:integer);
var
   x,y,i,j,temp,a1,a2:integer;
begin
x:=12;y:=12;
setcolor(0);
for i:=n to (2*n)-1 do
    for j:=n to (2*n)-1 do
    begin
        temp:=b[i][j] ;
        a1:=temp mod 10;
        temp:=temp div 10;
        a2:=temp mod 10;
        if (b[i][j]<=9) and (b[i][j]<>0) then
           outtextxy(x,y,chr(b[i][j]+48))
        else if b[i][j]<>0 then
        begin
            outtextxy(x-3,y,chr(a2+48));
            outtextxy(x+5,y,chr(a1+48));
        end;
        x:=x+30;
        if x>n*30 then
        begin
             x:=12;
             y:=y+30;
        end;
    end;
end;
{***************************************************************************}
procedure rasm(n:integer);
var
   x,y:integer;
begin
     setgraphmode(getgraphmode);
     bar(193-192,113-112,433-192,353-112);
     x:=241;
     y:=241;
     setfillstyle(1,0);
     bar(x-((8-n)*30),y-240,x,y);
     x:=1;y:=1;
     bar(x,y+(n*30),241,241);
end;
{***************************************************************************}
procedure arrowkey(n:integer);
var
   i,j,i2,j2:integer;
begin
     i2:=0;
     for i:=n to (2*n)-1 do
     begin
         for j:=n to (2*n)-1 do
            if b[i][j]=0 then
            begin
                  i2:=i;
                  j2:=j;
            end;
     end;
     i:=i2-n+1;j:=j2-n+1;
     while (true) do
     begin
          while ((not keypressed))and(ord(ch)<>27) do
                timer;
                ch:=readkey;
          case ord(ch) of
               80:begin
                       if i>1 then
                       begin
                       b[i2][j2]:=b[i2-1][j2];
                       print(n);
                       b[i2-1][j2]:=0;
                       i2:=i2-1;
                       i:=i-1;
                       end;
                   end;
               72:begin
                       if i<n then
                       begin
                       b[i2][j2]:=b[i2+1][j2];
                       print(n);
                       b[i2+1][j2]:=0;
                       i2:=i2+1;
                       i:=i+1;
                       end;
                  end;
               75:begin
                       if j<n then
                       begin
                       b[i2][j2]:=b[i2][j2+1];
                       print(n);
                       b[i2][j2+1]:=0;
                       j2:=j2+1;
                       j:=j+1;
                       end;
                   end;
               77:begin
                       if j>1 then
                       begin
                       b[i2][j2]:=b[i2][j2-1];
                       print(n);
                       b[i2][j2-1]:=0;
                       j2:=j2-1;
                       j:=j-1;
                       end;
                   end;
               27:break;
               end;{case}
               setfillstyle(1,15);
               bar((j*30)-25,(i*30)-18,(j*30),(i*30));
               check_win(n);
          end;{while}
end;
{*************************************************************************}
procedure rand(n:integer);
var
   i,num,k,j:integer;
   a:array[1..100] of integer;
begin
for i:=1 to 100 do
    a[i]:=100;
i:=1;
randomize;
while i<=(n*n)  do
begin
              num:=random(n*n);
              k:=0;
              for j:=1 to i do
                  if a[j]=num then
                     k:=1;
              if k=0 then
              begin
                 a[i]:=num;
                 i:=i+1;
              end;
end;
k:=1;
for i:=n to ((2*n)-1) do
     for j:=n to ((2*n)-1) do
     begin
         b[i][j]:=a[k];
         k:=k+1;
     end;
end;
{***************************************************************************}
begin
     menu;
end.