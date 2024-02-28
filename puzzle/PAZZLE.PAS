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
   fz:file of score;
   as:score;
procedure arrowkey(n:integer);forward;
procedure draw(n:integer);forward;
procedure chaap(n:integer);forward;
procedure rand(n:integer);forward;
procedure timer;forward;
procedure menu;forward;
{***************************************************************************}
procedure save_score;
var
   fp:file of score;
   sc:score;
   sc2:score;
   i:integer;
begin
     assign(fp,'c:\score.dat');
     reset(fp);
     read(fp,sc);
     for i:=2 to 8 do
     begin
          sc2.sco[1][i]:=sc.sco[1][i];
          sc2.sco[2][i]:=sc.sco[2][i];
     end;
     case n of
     2:begin
          if (min<=sc.sco[1][2]) and (s<sc.sco[2][2])or ((sc.sco[1][2]=0) and (sc.sco[2][2]=0))then begin
             sc2.sco[1][2]:=min;
             sc2.sco[2][2]:=s
             end;
          end;
     3:begin
            if (min<=sc.sco[1][3]) and (s<sc.sco[2][3])or((sc.sco[1][3]=0) and (sc.sco[2][3]=0)) then begin
             sc2.sco[1][3]:=min;
             sc2.sco[2][3]:=s
             end;
            end;
     4:begin
            if (min<=sc.sco[1][4]) and (s<sc.sco[2][4])or((sc.sco[1][4]=0) and (sc.sco[2][4]=0)) then begin
             sc2.sco[1][4]:=min;
             sc2.sco[2][4]:=s
             end;
            end;
     5:begin
            if (min<=sc.sco[1][5]) and (s<sc.sco[2][5])and(sc.sco[1][5]<>0) and (sc.sco[2][5]<>0) then begin
             sc2.sco[1][5]:=min;
             sc2.sco[2][5]:=s
             end;
            end;
     6:begin
            if (min<=sc.sco[1][6]) and (s<sc.sco[2][6])and(sc.sco[1][6]<>0) and (sc.sco[2][6]<>0) then begin
             sc2.sco[1][6]:=min;
             sc2.sco[2][6]:=s
             end;
            end;
     7:begin
            if (min<=sc.sco[1][7]) and (s<sc.sco[2][7])and(sc.sco[1][7]<>0) and (sc.sco[2][7]<>0) then begin
             sc2.sco[1][7]:=min;
             sc2.sco[2][7]:=s
             end;
            end;
     8:begin
            if (min<=sc.sco[1][8]) and (s<sc.sco[2][8])and (sc.sco[1][8]<>0) and (sc.sco[2][8]<>0) then begin
             sc2.sco[1][8]:=min;
             sc2.sco[2][8]:=s
             end;
            end;
     end;
     rewrite(fp);
     write(fp,sc2);
     close(fp);
end;
{***************************************************************************}
procedure high_score;
var
   fp:file of score;
   sc:score;
   i:integer;
begin
     restorecrtmode;
     textmode(LASTMODE);
     clrscr;
     textcolor(1);
     assign(fp,'c:\score.dat');
     reset(fp);
     read(fp,sc);
     for i:=2 to 8 do
     begin
          gotoxy(5,5+(2*i));
          write('n=',i);
          gotoxy(20,5+(2*i));
          if sc.sco[2][i]<>0 then
          begin
             if sc.sco[1][i]<>0 then
                textcolor(15);
              write(sc.sco[1][i],':',sc.sco[2][i]);
             end
             else
                  write('No winner');
     end;
     close(fp);
     readln;
     menu;
end;
{***************************************************************************}
procedure load_game;
var
   i,j:integer;
   ar2:arr;
   fp:file of arr;
   fp2:file of param;
   p3:param;
begin
    cleardevice;
    setcolor(1);
    settextstyle(7,0,5);
    outtextxy(180,160,' Loading');
    delay(700);
    outtextxy(180,160,' Loading.');
    delay(700);
    outtextxy(180,160,' Loading..');
    delay(700);
    outtextxy(180,160,' Loading...');
    delay(500);
    settextstyle(0,0,0);
    assign(fp,'c:\data.dat');
    reset(fp);
    read(fp,ar2);
    for i:=1 to 15 do
        for j:=1 to 15 do
        b[i][j]:=ar2.arsl[i][j];
    close(fp);
    assign(fp2,'c:\n.dat');
    reset(fp2);
    read(fp2,p3);
    n:=p3.a[1];
    min:=p3.a[2];
    s:=p3.a[3];
    close(fp2);
end;
{***************************************************************************}
procedure entern;
begin
    { closegraph; }
     restorecrtmode;
     textmode(LASTMODE);
     clrscr;
     gotoxy(15,10);
     textcolor(9);
     write('Enter N for playing a kind of N*N Pazzle(2<=n<=8):');
     readln(n);
end;
{***************************************************************************}
procedure menu;
var
   ch:char;
   y:integer;
begin
     initgraph(driver,mode,'c:\tp\bgi');
     bar(1,1,639,7);
     bar(1,1,5,479);
     bar(635,7,639,479);
     bar(1,479,639,475);
     setfillstyle(1,1);
     fillellipse(200,420,50,15);
     fillellipse(300,450,100,20);
     setcolor(15);
     outtextxy(160,417,'Writer:');
     outtextxy(220,448,' Elias Naranjee Sani');
     setcolor(1);
     settextstyle(4,0,9);
     outtextxy(140,50,'PAZZLE');
     settextstyle(0,0,0);
     outtextxy(290,230,'New game');
     setcolor(15);
     outtextxy(287,270,'Load game');
     outtextxy(280,310,'High scores');
     outtextxy(310,350,'Exit');
     y:=230;
     while ord(ch)<>27 do
     begin
          ch:=readkey;
          if (ord(ch)=80) or (ord(ch)=72) then
          begin
               setcolor(15);
               outtextxy(290,230,'New game');
               outtextxy(287,270,'Load game');
               outtextxy(280,310,'High scores');
               outtextxy(310,350,'Exit');
          end;
          setcolor(1);
          if ord(ch)=80 then
          begin
               y:=y+40;
               if y>350 then
                    y:=230;
          end
          else if ord(ch)=72 then
          begin
               y:=y-40;
               if y<230 then
                    y:=350;
          end;
          case y of
               230:outtextxy(290,y,'New game');
               270:outtextxy(287,y,'Load game');
               310:outtextxy(280,y,'High scores');
               350:outtextxy(310,y,'Exit');
          end;
          if ((ord(ch)=13) and (y=350)) then
               halt(1)
          else if ((ord(ch)=13) and (y=230)) then begin
               entern;
               rand(n);
               draw(n);
               chaap(n);
               GetTime(h,m,s3,hund);
               settime(h,m,1,1);
               while not(keypressed) do
                     timer;
               arrowkey(n);
               end
               else if ((ord(ch)=13) and (y=270)) then begin
               load_game;
               draw(n);
               chaap(n);
               gettime(h,m,s3,hund);
               settime(h,m,s,1);
               while not(keypressed) do
               timer;
               arrowkey(n);
               end
               else if ((ord(ch)=13) and (y=310)) then
                    high_score;
     end;
end;
{***************************************************************************}
{procedure high_score(n:integer;m,s:word;);
begin{
{***************************************************************************}
procedure save;
var
i,j:integer;
ar2:arr;
fp:file of arr;
fp2:file of param;
p3:param;
begin
     for i:=1 to 15 do
         for j:=1 to 15 do
             ar2.arsl[i][j]:=b[i][j];

     assign(fp,'c:\data.dat');
     rewrite(fp);
     write(fp,ar2);
     close(fp);
     assign(fp2,'c:\n.dat');
     rewrite(fp2);
     p3.a[1]:=n;
     p3.a[2]:=min;
     p3.a[3]:=s;
     write(fp2,p3);
     close(fp2);
     outtextxy(300,380,'Saving');
     delay(800);
     outtextxy(300,380,'Saving.');
     delay(800);
     outtextxy(300,380,'Saving..');
     delay(800);
     outtextxy(300,380,'Saving...');
     delay(800);
     menu;
end;
{***************************************************************************}
procedure exit_board;
var
   ch:char;
begin
        setcolor(1);
	setfillstyle(1,0);
	bar(195,200,445,270);
	setcolor(6);
	rectangle(195,200,445,270);
	outtextxy(205,210,'DO YOU WANT TO SAVE GAME?(Y/N)');
	setfillstyle(1,6);
	rectangle(240,240,290,260);
	rectangle(350,240,400,260);
	setcolor(6);
	outtextxy(246,247,' YES');
	outtextxy(359,247,' NO');
        ch:='n';
        while (true) do
        begin
             ch:=readkey;
             if (ch='y') or (ch='Y') then
                save
             else if (ch='n') or (ch='N') then
                  menu;
        end;
end;

{***************************************************************************}
procedure timer;
var
  h, m, s2,hund,a1,a2: word;
begin
     gettime(h,m,s2,hund);
     if (s2>s) or (s=59) or (s=0) then
     begin
       setfillstyle(1,0);
       bar(300,1,639,200);
       setcolor(1);
       a1:=s2 mod 10;
       a2:=(s2 div 10)mod 10;
       settextstyle(1,horizdir,40);
       outtextxy(400,2,chr(min+48));
       outtextxy(470,2,':');
       outtextxy(495,2,chr(a2+48));
       outtextxy(565,2,chr(a1+48));
       settextstyle(0,0,0);
       if (s2=59) then
       begin
          min:=min+1;
          delay(1000);
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
        setcolor(1);
        settextstyle(defaultfont,horizdir,2);
        outtextxy(150,425,'You Are The Winner!!!');
        outtextxy(150,455,' Press ENTER To Exit');
        sound(100);
        delay(1000);
        nosound;
        save_score;
        readln;
        menu;
     end;
end;
{***************************************************************************}
procedure chaap(n:integer);
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
procedure draw(n:integer);
var
   x,y:integer;
begin
     setgraphmode(getgraphmode);
     bar(193-192,113-112,433-192,353-112);
     setcolor(0);
     line(223-192,113-112,223-192,353-112);
     line(253-192,113-112,253-192,353-112);
     line(283-192,113-112,283-192,353-112);
     line(313-192,113-112,313-192,353-112);
     line(343-192,113-112,343-192,353-112);
     line(373-192,113-112,373-192,353-112);
     line(403-192,113-112,403-192,353-112);
     line(193-192,143-112,433-192,143-112);
     line(193-192,173-112,433-192,173-112);
     line(193-192,203-112,433-192,203-112);
     line(193-192,233-112,433-192,233-112);
     line(193-192,263-112,433-192,263-112);
     line(193-192,293-112,433-192,293-112);
     line(193-192,323-112,433-192,323-112);
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
     {x:=((j-1)*30)+12;
     y:=((i-1)*30)+12; }
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
                       chaap(n);
                       b[i2-1][j2]:=0;
                       i2:=i2-1;
                       i:=i-1;
                       end;
                   end;
               72:begin
                       if i<n then
                       begin
                       b[i2][j2]:=b[i2+1][j2];
                       chaap(n);
                       b[i2+1][j2]:=0;
                       i2:=i2+1;
                       i:=i+1;
                       end;
                  end;
               75:begin
                       if j<n then
                       begin
                       b[i2][j2]:=b[i2][j2+1];
                       chaap(n);
                       b[i2][j2+1]:=0;
                       j2:=j2+1;
                       j:=j+1;
                       end;
                   end;
               77:begin
                       if j>1 then
                       begin
                       b[i2][j2]:=b[i2][j2-1];
                       chaap(n);
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
          exit_board;
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
    { assign(fz,'c:\score.dat');
     rewrite(fz);
     write(fz,as);
     close(fz);   }
     menu;
     {rand(n);
     draw(n);
     chaap(n);
     arrowkey(n);}
end.