uses Graph,crt;
label 1,2,3;
type rec=record
             x,y,z:integer;
       end;
     r_array=array[1..3,1..3] of rec;
     r_ptr=^r_array;
     save_file=file of rec;
var  driver,mode,i,j,k,s_m1,s_m2,l,m,n,h,s,t,mc1,mc2,o: Integer;
     size,q,e:word;
     p,sp,mp:pointer;
     p1,p2,t1,t2:string[15];
     r1,r2,r3,tr:r_array;
     c,cu:char;
     rp,kp:r_ptr;
     save:save_file;
     chs:rec;
     sf:text;
     ta:array[1..10] of string[15];
procedure lastw_load;
begin
     assign(sf,'last.txt');
     reset(sf);
     i:=1;
     j:=1;
     while not eof(sf) do
     begin
          while not eoln(sf) do
          begin
               ta[i][0]:=chr(ord(ta[i][0])+1);
               read(sf,ta[i][j]);
               j:=j+1;
          end;
          readln(sf);
          i:=i+1;
     end;
end; {*** END OF LASTW_LOAD ***}
procedure lastw_save;
begin
     assign(sf,'last.txt');
     rewrite(sf);
     lastw_load;
     t1[0]:=ta[1][0];
     t1:=ta[1];
     if h=1 then
     begin
          ta[1][0]:=p1[0];
          ta[1]:=p1;
     end;
     if h=2 then
     begin
          ta[1][0]:=p2[0];
          ta[1]:=p2;
     end;
     for i:=1 to 10 do
     begin
          t2[0]:=ta[i+1][0];
          t2:=ta[i+1];
          ta[i+1][0]:=t1[0];
          ta[i+1]:=t1;
          t1[0]:=t2[0];
          t1:=t2;
     end;
     assign(sf,'last.txt');
     rewrite(sf);
     for i:=1 to 10 do
     begin
         for j:=1 to ord(ta[i][0]) do
             write(sf,ta[i][j]);
         writeln(sf);
     end;
end;  {*** END OF LASTW_SAVE ***}
procedure last_winners;
begin
     lastw_load;
     setfillstyle(1,red);
     bar(210,120,430,360);
     setfillstyle(1,lightred);
     bar(220,130,420,350);
     for i:=1 to 10 do
     begin
          setcolor(black);
          settextstyle(0,horizdir,1);
          if i=1 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,152,'1.');
               settextjustify(lefttext,centertext);
               outtextxy(261,152,ta[i]);
          end;
          if i=2 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,169,'2.');
               settextjustify(lefttext,centertext);
               outtextxy(261,169,ta[i]);
          end;
          if i=3 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,187,'3.');
               settextjustify(lefttext,centertext);
               outtextxy(261,187,ta[i]);
          end;
          if i=4 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,204,'4.');
               settextjustify(lefttext,centertext);
               outtextxy(261,204,ta[i]);
          end;
          if i=5 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,221,'5.');
               settextjustify(lefttext,centertext);
               outtextxy(261,221,ta[i]);
          end;
          if i=6 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,238,'6.');
               settextjustify(lefttext,centertext);
               outtextxy(261,238,ta[i]);
          end;
          if i=7 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,255,'7.');
               settextjustify(lefttext,centertext);
               outtextxy(261,255,ta[i]);
          end;
          if i=8 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,272,'8.');
               settextjustify(lefttext,centertext);
               outtextxy(261,272,ta[i]);
          end;
          if i=9 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,289,'9.');
               settextjustify(lefttext,centertext);
               outtextxy(261,289,ta[i]);
          end;
          if i=10 then
          begin
               settextjustify(righttext,centertext);
               outtextxy(259,306,'10.');
               settextjustify(lefttext,centertext);
               outtextxy(261,306,ta[i]);
          end;
     end; {*** END OF FOR ***}
     settextstyle(0,horizdir,2);
end; {*** END OF LAST_WINNERS ***}
procedure m_menu(var a,b:integer);
var d:char;
begin     {** Start of Main Meu **}
     s_m2:=0;
     for i:=1 to 639 do
         for j:=1 to 479 do
              putpixel(i,j,15);
     settextstyle(0,horizdir,3);
     setcolor(black);
     settextjustify(lefttext,centertext);
     outtextxy(200,50,'Main Menu');
     for i:=1 to 20 do
     begin
          setcolor(blue);
          circle(260,100,i);
          setcolor(red);
          circle(360,100,i);
     end;
     setfillstyle(1,red);
     bar(115,165,510,460);
     bar(95,185,530,440);
     setcolor(red);
     circle(115,185,20);
     floodfill(110,180,red);
     circle(510,185,20);
     circle(510,440,20);
     circle(115,440,20);
     floodfill(515,180,red);
     floodfill(515,445,red);
     floodfill(110,445,red);
     setfillstyle(1,lightred);
     bar(145,185,480,440);
     bar(125,205,500,420);
     setcolor(lightred);
     circle(145,205,20);
     circle(145,420,20);
     circle(480,205,20);
     circle(480,420,20);
     floodfill(140,200,lightred);
     floodfill(140,425,lightred);
     floodfill(485,200,lightred);
     floodfill(485,425,lightred);
     setfillstyle(1,white);
     bar(188,206,450,228);
     settextstyle(0,horizdir,2);
     setcolor(0);
     settextjustify(centertext,centertext);
     outtextxy(320,217,'Start a new game');
     bar(243,269,397,291);
     outtextxy(320,280,'Load game');
     bar(220,332,420,354);
     outtextxy(320,343,'Last winners');
     bar(282,395,352,417);
     outtextxy(320,406,'Exit');
     delay(500);
     setfillstyle(1,10);
     bar(188,206,450,228);
     outtextxy(320,217,'Start a new game');
     a:=1;
     c:=#0;
     while ord(c)<>13 do
     begin
          c:=readkey;
          if c=#0 then
          begin
               settextjustify(centertext,centertext);
               setfillstyle(1,15);
               c:=readkey;
               if ord(c)=80 then
               begin
                    if a=1 then
                    begin
                         bar(188,206,450,228);
                         outtextxy(320,217,'Start a new game');
                         setfillstyle(1,10);
                         bar(243,269,397,291);
                         outtextxy(320,280,'Load game');
                    end;
                    if a=2 then
                    begin
                         bar(243,269,397,291);
                         outtextxy(320,280,'Load game');
                         setfillstyle(1,10);
                         bar(220,332,420,354);
                         outtextxy(320,343,'Last winners');
                    end;
                    if a=3 then
                    begin
                         bar(220,332,420,354);
                         outtextxy(320,343,'Last winners');
                         setfillstyle(1,10);
                         bar(282,395,352,417);
                         outtextxy(320,406,'Exit');
                    end;
                    if a=4 then
                    begin
                         bar(282,395,352,417);
                         outtextxy(320,406,'Exit');
                         setfillstyle(1,10);
                         bar(188,206,450,228);
                         outtextxy(320,217,'Start a new game');
                         a:=0
                    end;
                    a:=a+1;
               end;
               if ord(c)=72 then
               begin
                    if a=1 then
                    begin
                         bar(188,206,450,228);
                         outtextxy(320,217,'Start a new game');
                         setfillstyle(1,10);
                         bar(282,395,352,417);
                         outtextxy(320,406,'Exit');
                         a:=5;
                    end;
                    if a=2 then
                    begin
                         bar(243,269,397,291);
                         outtextxy(320,280,'Load game');
                         setfillstyle(1,10);
                         bar(188,206,450,228);
                         outtextxy(320,217,'Start a new game');
                    end;
                    if a=3 then
                    begin
                         bar(220,332,420,354);
                         outtextxy(320,343,'Last winners');
                         setfillstyle(1,10);
                         bar(243,269,397,291);
                         outtextxy(320,280,'Load game');
                    end;
                    if a=4 then
                    begin
                         bar(282,395,352,417);
                         outtextxy(320,406,'Exit');
                         setfillstyle(1,10);
                         bar(220,332,420,354);
                         outtextxy(320,343,'Last winners');
                    end;
                    a:=a-1;
               end;
          end;  {*** END OF IF THEN ***}
          if (a=3) and (ord(c)=13) then
          begin
               size:=imagesize(210,120,430,360);
               getmem(p,size);
               getimage(210,120,430,360,p^);
               last_winners;
               c:=#0;
               while ord(c)<>13 do
                     c:=readkey;
               putimage(210,120,p^,normalput);
               c:=#0;
          end;
     end;  {*** END OF WHILE ***}
     if a=1 then
     begin
          settextjustify(centertext,centertext);
          setfillstyle(1,red);
          bar(115,165,510,460);
          bar(95,185,530,440);
          setcolor(red);
          circle(115,185,20);
          floodfill(110,180,red);
          circle(510,185,20);
          circle(510,440,20);
          circle(115,440,20);
          floodfill(515,180,red);
          floodfill(515,445,red);
          floodfill(110,445,red);
          setfillstyle(1,lightred);
          bar(145,185,480,440);
          bar(125,205,500,420);
          setcolor(lightred);
          circle(145,205,20);
          circle(145,420,20);
          circle(480,205,20);
          circle(480,420,20);
          floodfill(140,200,lightred);
          floodfill(140,425,lightred);
          floodfill(485,200,lightred);
          floodfill(485,425,lightred);
          setfillstyle(1,15);
          bar(230,232,410,254);
          setcolor(0);
          outtextxy(320,243,'Normal mode');
          bar(198,301,443,323);
          outtextxy(320,312,'Time trial mode');
          bar(136,370,492,392);
          outtextxy(316,381,'Limited movements mode');
          delay(300);
          setfillstyle(1,10);
          bar(230,232,410,254);
          outtextxy(320,243,'Normal mode');
          b:=1;
          d:=#0;
          while ord(d)<>13 do
          begin
               d:=readkey;
               if d=#0 then
               begin
                    settextjustify(centertext,centertext);
                    setfillstyle(1,15);
                    d:=readkey;
                    if ord(d)=80 then
                    begin
                         if b=1 then
                         begin
                              bar(230,232,410,254);
                              outtextxy(320,243,'Normal mode');
                              setfillstyle(1,10);
                              bar(198,301,443,323);
                              outtextxy(320,312,'Time trial mode');
                         end;
                         if b=2 then
                         begin
                              bar(198,301,443,323);
                              outtextxy(320,312,'Time trial mode');
                              setfillstyle(1,10);
                              bar(136,370,492,392);
                              outtextxy(316,381,'Limited movements mode');
                         end;
                         if b=3 then
                         begin
                              bar(136,370,492,392);
                              outtextxy(316,381,'Limited movements mode');
                              setfillstyle(1,10);
                              bar(230,232,410,254);
                              outtextxy(320,243,'Normal mode');
                              b:=0;
                         end;
                         b:=b+1;
                    end;
                    if ord(d)=72 then
                    begin
                         if b=1 then
                         begin
                              bar(230,232,410,254);
                              outtextxy(320,243,'Normal mode');
                              setfillstyle(1,10);
                              bar(136,370,492,392);
                              outtextxy(316,381,'Limited movements mode');
                              b:=4;
                         end;
                         if b=2 then
                         begin
                              bar(198,301,443,323);
                              outtextxy(320,312,'Time trial mode');
                              setfillstyle(1,10);
                              bar(230,232,410,254);
                              outtextxy(320,243,'Normal mode');
                         end;
                         if b=3 then
                         begin
                              bar(136,370,492,392);
                              outtextxy(316,381,'Limited movements mode');
                              setfillstyle(1,10);
                              bar(198,301,443,323);
                              outtextxy(320,312,'Time trial mode');
                         end;
                         b:=b-1;
                    end;
               end;
          end;
     end;
     if (a=1) or (a=2) then
     begin
          setfillstyle(1,red);
          bar(115,165,510,460);
          bar(95,185,530,440);
          setcolor(red);
          circle(115,185,20);
          floodfill(110,180,red);
          circle(510,185,20);
          circle(510,440,20);
          circle(115,440,20);
          floodfill(515,180,red);
          floodfill(515,445,red);
          floodfill(110,445,red);
          setfillstyle(1,lightred);
          bar(145,185,480,440);
          bar(125,205,500,420);
          setcolor(lightred);
          circle(145,205,20);
          circle(145,420,20);
          circle(480,205,20);
          circle(480,420,20);
          floodfill(140,200,lightred);
          floodfill(140,425,lightred);
          floodfill(485,200,lightred);
          floodfill(485,425,lightred);
          settextjustify(lefttext,toptext);
          setfillstyle(1,15);
          bar(155,205,470,420);
          settextstyle(0,horizdir,1);
          setcolor(blue);
          outtextxy(230,245,'Player 1: ');
          window(40,16,50,16);
          textcolor(blue);
          clrscr;
          textcolor(white);
          readln(p1);
          textcolor(blue);
          clrscr;
          setcolor(15);
          outtextxy(314,245,p1);
          setcolor(red);
          outtextxy(230,292,'Player 2: ');
          gotoxy(40,19);
          window(40,19,50,19);
          textcolor(red);
          clrscr;
          textcolor(white);
          readln(p2);
          textcolor(red);
          window(40,19,50,19);
          clrscr;
          setcolor(white);
          outtextxy(314,292,p2);
          for i:=640 downto 0 do
              for j:=0 to 480 do
                  putpixel(i,j,green);
          window(1,1,1,1);
          textbackground(green);
          textcolor(green);
          clrscr;
          setcolor(darkgray);
          settextjustify(righttext,centertext);
          outtextxy(100,472,'Arrow keys=');
          outtextxy(340,472,'Esc=');
          outtextxy(520,472,'Enter=');
          setcolor(black);
          settextjustify(lefttext,centertext);
          outtextxy(100,472,'Move around the table');
          outtextxy(340,472,'Game menu');
          outtextxy(520,472,'Select');
          setcolor(8);
          line(0,460,640,460);
     end;
end;   {*** END OF MAIN MENU ***}
procedure check_r(n:integer);
begin
     if n=1 then rp:=@r1;
     if n=2 then rp:=@r2;
     if n=3 then rp:=@r3;
end; {** END OF CHECK_R **}
procedure save_g;
begin
     assign(save,'save.dat');
     rewrite(save);
     if s_m2=1 then chs.x:=1;
     if s_m2=2 then chs.x:=2;
     if s_m2=3 then
     begin
          chs.x:=3;
          chs.y:=mc1;
          chs.z:=mc2;
     end;
     write(save,chs);
     for i:=1 to 3 do
         for j:=1 to 3 do
             write(save,r1[i,j]);
     for i:=1 to 3 do
         for j:=1 to 3 do
             write(save,r2[i,j]);
     for i:=1 to 3 do
         for j:=1 to 3 do
             write(save,r3[i,j]);
     close(save);
end;
procedure load_g;
begin
     assign(save,'save.dat');
     reset(save);
     read(save,chs);
     for i:=1 to 3 do
         for j:=1 to 3 do
             read(save,r1[i,j]);
     for i:=1 to 3 do
         for j:=1 to 3 do
             read(save,r2[i,j]);
     for i:=1 to 3 do
         for j:=1 to 3 do
             read(save,r3[i,j]);
     close(save);
end;
procedure move_cursor;
begin
       c:=#0;
       j:=0;
       t:=0;
       check_r(n);
       while ord(c)<>13 do
       begin
            if (s_m2=2) and (t=0) then c:='A';
            c:=readkey;
            putimage(rp^[l,m].x-20,rp^[l,m].y-20,p^,normalput);
            if c=#0 then
            begin
                 c:=readkey;
                 if (ord(c)<>72) and (ord(c)<>75)
                 and (ord(c)<>77) and (ord(c)<>80) then continue;
                 if j=1 then putimage(rp^[l,m].x-20,rp^[l,m].y-20,sp^,normalput);
                 j:=0;
                 if ord(c)=77 then
                 begin
                      if m=2 then
                      begin
                           if l=1 then
                           begin
                                if n=1 then
                                begin
                                     n:=1;
                                     l:=3;
                                end;
                                n:=n-1;
                           end;
                           if l=3 then
                           begin
                                if n=3 then
                                begin
                                     size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                     getmem(sp,size);
                                     getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                     j:=1;
                                     n:=n-1;
                                end;
                                n:=n+1;
                           end;
                      end;
                      if (m=1) or (m=3) then
                      begin
                           if (l=3) and (n=3) then
                           begin
                                size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                getmem(sp,size);
                                getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                j:=1;
                                l:=l-1;
                           end else if (l=3) and (n<>3) then
                           begin
                                n:=n+1;
                                l:=l-1;
                           end;
                           l:=l+1;
                      end;
                 check_r(n);
                 end else
                 if ord(c)=80 then
                 begin
                      if l=2 then
                      begin
                           if m=1 then
                           begin
                                if n=1 then
                                begin
                                     n:=1;
                                     m:=3;
                                end;
                                n:=n-1;
                           end;
                           if m=3 then
                           begin
                                if n=3 then
                                begin
                                     size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                     getmem(sp,size);
                                     getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                     j:=1;
                                     n:=n-1;
                                end;
                                n:=n+1;
                           end;
                      end;
                      if (l=1) or (l=3) then
                      begin
                           if (m=3) and (n=3) then
                           begin
                                size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                getmem(sp,size);
                                getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                j:=1;
                                m:=m-1;
                           end else if (n<>3) and (m=3) then
                           begin
                                n:=n+1;
                                m:=m-1;
                           end;
                           m:=m+1;
                      end;
                 check_r(n);
                 end else
                 if ord(c)=75 then
                 begin
                      if m=2 then
                      begin
                           if l=3 then
                           begin
                                if n=1 then
                                begin
                                     n:=1;
                                     l:=1;
                                end;
                                n:=n-1;
                           end;
                           if l=1 then
                           begin
                                if n=3 then
                                begin
                                     size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                     getmem(sp,size);
                                     getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                     j:=1;
                                     n:=n-1;
                                end;
                                n:=n+1;
                           end;
                      end;
                      if (m=1) or (m=3) then
                      begin
                           if (l=1) and (n=3) then
                           begin
                                size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                getmem(sp,size);
                                getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                j:=1;
                                l:=l+1;
                           end else if (l=1) and (n<>3) then
                           begin
                                n:=n+1;
                                l:=l+1;
                           end;
                           l:=l-1;
                      end;
                 check_r(n);
                 end else
                 if ord(c)=72 then
                 begin
                      if l=2 then
                      begin
                           if m=3 then
                           begin
                                if n=1 then
                                begin
                                     n:=1;
                                     m:=1;
                                end;
                                n:=n-1;
                                check_r(n);
                           end;
                           if m=1 then
                           begin
                                if n=3 then
                                begin
                                     size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                     getmem(sp,size);
                                     getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                     j:=1;
                                     n:=n-1;
                                end;
                                n:=n+1;
                                check_r(n);
                           end;
                      end;
                      if (l=1) or (l=3) then
                      begin
                           if (m=1) and (n=3) then
                           begin
                                size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                                getmem(sp,size);
                                getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,sp^);
                                j:=1;
                                m:=m+1;
                           end else if (m=1) and (n<>3) then
                           begin
                                n:=n+1;
                                m:=m+1;
                           end;
                           m:=m-1;
                           check_r(n);
                      end;
                 check_r(n);
                 end;
            end;     {*** END of first IF THEN ***}
            if ord(c)=27 then
            begin
                 size:=imagesize(240,170,400,330);
                 getmem(mp,size);
                 getimage(240,170,400,330,mp^);
                 setfillstyle(1,brown);
                 bar(240,170,400,330);
                 setfillstyle(1,lightred);
                 bar(250,180,390,320);
                 setcolor(black);
                 settextjustify(centertext,centertext);
                 settextstyle(0,horizdir,1);
                 setfillstyle(1,lightgreen);
                 bar(293,205,347,215);
                 outtextxy(320,210,'Resume');
                 setfillstyle(1,15);
                 bar(280,240,360,250);
                 outtextxy(320,245,'Save Game');
                 bar(280,275,360,285);
                 outtextxy(320,280,'Exit Game');
                 cu:=#0;
                 o:=1;
                 while ord(cu)<>13 do
                 begin
                      cu:=readkey;
                      setfillstyle(1,15);
                      if cu=#0 then
                      begin
                           cu:=readkey;
                           if ord(cu)=72 then
                           begin
                                if o=1 then
                                begin
                                     bar(293,205,347,215);
                                     outtextxy(320,210,'Resume');
                                     setfillstyle(1,lightgreen);
                                     bar(280,275,360,285);
                                     outtextxy(320,280,'Exit Game');
                                     o:=4;
                                end;
                                if o=2 then
                                begin
                                     bar(280,240,360,250);
                                     outtextxy(320,245,'Save Game');
                                     setfillstyle(1,lightgreen);
                                     bar(293,205,347,215);
                                     outtextxy(320,210,'Resume');
                                end;
                                if o=3 then
                                begin
                                     bar(280,275,360,285);
                                     outtextxy(320,280,'Exit Game');
                                     setfillstyle(1,lightgreen);
                                     bar(280,240,360,250);
                                     outtextxy(320,245,'Save Game');
                                end;
                                o:=o-1;
                           end;
                           if ord(cu)=80 then
                           begin
                                if o=1 then
                                begin
                                     bar(293,205,347,215);
                                     outtextxy(320,210,'Resume');
                                     setfillstyle(1,lightgreen);
                                     bar(280,240,360,250);
                                     outtextxy(320,245,'Save Game');
                                end;
                                if o=2 then
                                begin
                                     bar(280,240,360,250);
                                     outtextxy(320,245,'Save Game');
                                     setfillstyle(1,lightgreen);
                                     bar(280,275,360,285);
                                     outtextxy(320,280,'Exit Game');
                                end;
                                if o=3 then
                                begin
                                     bar(280,275,360,285);
                                     outtextxy(320,280,'Exit Game');
                                     setfillstyle(1,lightgreen);
                                     bar(293,205,347,215);
                                     outtextxy(320,210,'Resume');
                                     o:=0;
                                end;
                                o:=o+1;
                           end;
                      end;  {*** END OF IF THEN ***}
                 end;  {*** END OF WHILE ***}
                 if o=1 then
                    putimage(240,170,mp^,normalput);
                 if o=2 then
                 begin
                      save_g;
                      setfillstyle(1,lightred);
                      bar(250,180,390,320);
                      setcolor(15);
                      outtextxy(320,240,'Games Saved');
                      delay(1000);
                      putimage(240,170,mp^,normalput);
                 end;
                 if o=3 then halt(1);
            end; {*** END OF IF THEN ***}
            size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
            getmem(p,size);
            getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,p^);
            setcolor(white);
            for i:=1 to 20 do
                circle(rp^[l,m].x,rp^[l,m].y,i);
            if (ord(c)=13) and (rp^[l,m].z<>0) then
            begin
                 c:=#0;
                 continue;
            end else if ord(c)=13 then break;
            if s_m2=2 then while not keypressed do
            begin
                 delay(50);
                 t:=t+1;
                 setfillstyle(1,yellow);
                 bar(20,220,105,260);
                 setcolor(black);
                 settextjustify(righttext,centertext);
                 outtextxy(79,240,'Time:');
                 settextjustify(lefttext,centertext);
                    outtextxy(81,240,chr(10-(t div 20)+48-1));
                 if t=180 then
                 begin
                      t:=0;
                      if s=1 then s:=2;
                      if s=2 then s:=1;
                      i:=1;
                      break;
                 end;
            end;
            if (s_m2=2) and (i=1) then break;
       end;   {*** END OF WHILE ***}
end; {*** END OF MOVE CURSOR ***}
procedure check_k(k:integer);
begin
     if k=1 then kp:=@r1;
     if k=2 then kp:=@r2;
     if k=3 then kp:=@r3;
end;  {*** END OF CHECK_K ***}
procedure check_win(var h:integer);
begin
     {______h:=0____}
     k:=1;
     while (k<4) and (h=0) do
     begin
          check_k(k);
          if (kp^[1,1].z=1) and (kp^[2,1].z=1) and (kp^[3,1].z=1) then
             h:=1;
          if (kp^[1,3].z=1) and (kp^[2,3].z=1) and (kp^[3,3].z=1) then
             h:=1;
          if (kp^[1,1].z=1) and (kp^[1,2].z=1) and (kp^[1,3].z=1) then
             h:=1;
          if (kp^[3,1].z=1) and (kp^[3,2].z=1) and (kp^[3,3].z=1) then
             h:=1;
          if (kp^[1,1].z=2) and (kp^[2,1].z=2) and (kp^[3,1].z=2) then
             h:=2;
          if (kp^[1,3].z=2) and (kp^[2,3].z=2) and (kp^[3,3].z=2) then
             h:=2;
          if (kp^[1,1].z=2) and (kp^[1,2].z=2) and (kp^[1,3].z=2) then
             h:=2;
          if (kp^[3,1].z=2) and (kp^[3,2].z=2) and (kp^[3,3].z=2) then
             h:=2;
          k:=k+1;
     end;
     if h=0 then
     begin
     for i:=1 to 3 do
              for j:=1 to  3 do
              begin
                   if (i=2) and (j=2) then j:=3;
                   if (r1[i,j].z=1) and (r2[i,j].z=1) and (r3[i,j].z=1) then
                      h:=1;
                   if (r1[i,j].z=2) and (r2[i,j].z=2) and (r3[i,j].z=2) then
                      h:=2;
              end;
     end;
end;   {*** END OF CHECK WIN ***}
procedure main_game(b:integer; var h:integer);
begin  {*** Start of main game ***}
       setcolor(blue);
       settextjustify(righttext,centertext);
       outtextxy(210,25,p1);
       for i:=1 to 15 do
           circle(240,25,i);
       setcolor(red);
       settextjustify(lefttext,centertext);
       outtextxy(430,25,p2);
       for i:=1 to 15 do
           circle(400,25,i);
       setcolor(8);
       line(0,45,639,45);
       setcolor(white);
       SetLineStyle(0, $C3, ThickWidth);
       rectangle(140,70,500,430);
       rectangle(200,130,440,370);
       rectangle(260,190,380,310);
       line(140,70,260,190);
       line(380,310,500,430);
       line(380,190,500,70);
       line(260,310,140,430);
       line(320,70,320,190);
       line(320,310,320,430);
       line(260,250,140,250);
       line(380,250,500,250);
       SetLineStyle(0, $C3,normWidth);
       setcolor(white);
       for i:=1 to 15 do
           circle(320,25,i);
       r1[1,1].x:=260;  r1[1,1].y:=190;
       r1[2,1].x:=320;  r1[2,1].y:=190;
       r1[3,1].x:=380;  r1[3,1].y:=190;
       r1[1,2].x:=260;  r1[1,2].y:=250;
       r1[3,2].x:=380;  r1[3,2].y:=250;
       r1[1,3].x:=260;  r1[1,3].y:=310;
       r1[2,3].x:=320;  r1[2,3].y:=310;
       r1[3,3].x:=380;  r1[3,3].y:=310;
       for i:=1 to 3 do
	   for j:=1 to 3 do
		r1[i,j].z:=0;
       r2[1,1].x:=200;  r2[1,1].y:=130;
       r2[2,1].x:=320;  r2[2,1].y:=130;
       r2[3,1].x:=440;  r2[3,1].y:=130;
       r2[1,2].x:=200;  r2[1,2].y:=250;
       r2[3,2].x:=440;  r2[3,2].y:=250;
       r2[1,3].x:=200;  r2[1,3].y:=370;
       r2[2,3].x:=320;  r2[2,3].y:=370;
       r2[3,3].x:=440;  r2[3,3].y:=370;
       for i:=1 to 3 do
	   for j:=1 to 3 do
		r2[i,j].z:=0;
       r3[1,1].x:=140;  r3[1,1].y:=70;
       r3[2,1].x:=320;  r3[2,1].y:=70;
       r3[3,1].x:=500;  r3[3,1].y:=70;
       r3[1,2].x:=140;  r3[1,2].y:=250;
       r3[3,2].x:=500;  r3[3,2].y:=250;
       r3[1,3].x:=140;  r3[1,3].y:=430;
       r3[2,3].x:=320;  r3[2,3].y:=430;
       r3[3,3].x:=500;  r3[3,3].y:=430;
       for i:=1 to 3 do
	   for j:=1 to 3 do
		r3[i,j].z:=0;
       size:=imagesize(120,50,160,90);
       getmem(p,size);
       getimage(120,50,160,90,p^);
       setcolor(white);
       for i:=20 downto 1 do
	   circle(140,70,i);
       mc1:=6;
       mc2:=6;
       s:=1;
       if s_m1=2 then
       begin
            load_g;
            if chs.x=1 then s_m2:=1;
            if chs.x=2 then s_m2:=2;
            if chs.x=3 then
            begin
                 s_m2:=3;
                 mc1:=chs.y;
                 mc2:=chs.z;
            end;
            if mc2>mc1 then s:=2;
            for i:=1 to 3 do
                for j:=1 to 3 do
                begin
                    if r1[i,j].z=1 then
                    begin
                         setcolor(blue);
                         for k:=1 to 20 do
                             circle(r1[i,j].x,r1[i,j].y,k);
                         l:=r1[i,j].x; m:=r1[i,j].y;
                    end;
                    if r1[i,j].z=2 then
                    begin
                         setcolor(red);
                         for k:=1 to 20 do
                             circle(r1[i,j].x,r1[i,j].y,k);
                         l:=r1[i,j].x; m:=r1[i,j].y;
                    end;
                end;
            for i:=1 to 3 do
                for j:=1 to 3 do
                begin
                    if r2[i,j].z=1 then
                    begin
                         setcolor(blue);
                         for k:=1 to 20 do
                             circle(r2[i,j].x,r2[i,j].y,k);
                         l:=r2[i,j].x; m:=r2[i,j].y;
                    end;
                    if r2[i,j].z=2 then
                    begin
                         setcolor(red);
                         for k:=1 to 20 do
                             circle(r2[i,j].x,r2[i,j].y,k);
                         l:=r2[i,j].x; m:=r2[i,j].y;
                    end;
                end;
            for i:=1 to 3 do
                for j:=1 to 3 do
                begin
                    if r3[i,j].z=1 then
                    begin
                         setcolor(blue);
                         for k:=1 to 20 do
                             circle(r3[i,j].x,r3[i,j].y,k);
                         l:=r3[i,j].x; m:=r3[i,j].y;
                    end;
                    if r3[i,j].z=2 then
                    begin
                         setcolor(red);
                         for k:=1 to 20 do
                             circle(r3[i,j].x,r3[i,j].y,k);
                         l:=r3[i,j].x; m:=r3[i,j].y;
                    end;
                end;
            if r3[1,1].z<>0 then
            begin
                 size:=imagesize(120,50,160,90);
                 getmem(p,size);
                 getimage(120,50,160,90,p^);
            end;
       end;   {*** END OF IF THEN ***}
       n:=3; {current rectangle}
       l:=1;  {x}
       m:=1;  {y}
       h:=0;
       check_r(n);
       while h=0 do
       begin
            while s=1 do
            begin
                 setfillstyle(1,green);
                 bar(10,80,110,120);
                 setcolor(blue);
                 settextjustify(centertext,centertext);
                 settextstyle(0,horizdir,1);
                 outtextxy(50,100,'Player 1:');
                 if s_m2=3 then
                 begin
                      setfillstyle(1,green);
                      bar(0,200,100,300);
                      setfillstyle(1,yellow);
                      bar(20,200,100,300);
                      settextjustify(centertext,centertext);
                      setcolor(blue);
                      outtextxy(60,220,'Remaining');
                      outtextxy(60,240,'Moves:');
                      settextstyle(0,horizdir,2);
                      outtextxy(60,270,chr(mc1+48));
                      mc1:=mc1-1;
                 end;
                 move_cursor;
                 if s=2 then
                 begin
                      if rp^[l,m].z<>0 then continue;
                      rp^[l,m].z:=2;
                      setcolor(red);
                      for i:=1 to 20 do
                          circle(rp^[l,m].x,rp^[l,m].y,i);
                      size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                      getmem(p,size);
                      getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,p^);
                      check_win(h);
                      continue;
                 end;
                 rp^[l,m].z:=1;
                 setcolor(blue);
                 for i:=1 to 20 do
                     circle(rp^[l,m].x,rp^[l,m].y,i);
                 size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                 getmem(p,size);
                 getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,p^);
                 check_win(h);
                 if h<>0 then break;
                 s:=2;
            end;
            while s=2 do
            begin
                  setfillstyle(1,green);
                  bar(10,80,110,120);
                  setcolor(red);
                  settextjustify(centertext,centertext);
                  settextstyle(0,horizdir,1);
                  outtextxy(50,100,'Player 2:');
                 if s_m2=3 then
                 begin
                      setfillstyle(1,green);
                      bar(0,200,100,300);
                      setfillstyle(1,yellow);
                      bar(20,200,100,300);
                      settextjustify(centertext,centertext);
                      setcolor(red);
                      outtextxy(60,220,'Remaining');
                      outtextxy(60,240,'Moves:');
                      settextstyle(0,horizdir,2);
                      outtextxy(60,270,chr(mc2+48));
                      mc2:=mc2-1;
                 end;
                  move_cursor;
                  if s=1 then
                  begin
                       if rp^[l,m].z<>0 then continue;
                       rp^[l,m].z:=1;
                       setcolor(blue);
                       for i:=1 to 20 do
                           circle(rp^[l,m].x,rp^[l,m].y,i);
                       size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                       getmem(p,size);
                       getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,p^);
                       continue;
                  end;
                  rp^[l,m].z:=2;
                  setcolor(red);
                  for i:=1 to 20 do
                      circle(rp^[l,m].x,rp^[l,m].y,i);
                  size:=imagesize(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20);
                  getmem(p,size);
                  getimage(rp^[l,m].x-20,rp^[l,m].y-20,rp^[l,m].x+20,rp^[l,m].y+20,p^);
                  check_win(h);
                  s:=1;
            end;
            if (mc2=0) and (s_m2=3) then
            begin
                 s:=0;
                 break;
            end;
       end;  {*** END OF WHILE ***}
       lastw_save;
end;    {*** END OF MAIN GAME ***}
procedure end_g;
begin
     setfillstyle(1,green);
     bar(0,50,640,450);
     for i:=50 to 180 do
     begin
         ellipse(320,250,0,360,200,i);
         delay(10);
     end;
     setcolor(white);
     settextJustify(CenterText, CenterText);
     settextstyle(0,horizdir,2);
     outtextxy(320,230,'The Winner Is:');
     if h=1 then
        outtextxy(320,265,p1);
     if h=2 then
        outtextxy(320,265,p2);
     sound(220);
     delay(2000);
     nosound;
end;
begin
     driver:=DETECT;
     InitGraph(driver,mode,'c:\tp\bgi');
     delay(2000);
     for i:=0 to 479 do
         for j:=0 to 100 do
             putpixel(j,i,white);
     for i:=0 to 640 do
         for j:=420 to 480 do
             putpixel(i,j,white);
     bar(110,315,205,410);
     setcolor(red);
     for i:=1 to 20 do
         circle(135,340,i);
     for i:=1 to 20 do
         circle(180,385,i);
     setcolor(blue);
     for i:=1 to 20 do
         circle(180,340,i);
     for i:=1 to 20 do
         circle(135,385,i);
         setcolor(15);
     moveto(120,60);
     settextstyle(0,horizdir,4);
     outtext('DOOZ');
     moveto(450,375);
     settextstyle(0,horizdir,1);
     outtext('Produced by:');
     moveto(475,395);
     outtext('Iman Gordji Dooz');
     delay(4000);
     while s_m1<>4 do
     begin
          m_menu(s_m1,s_m2);
          if s_m1=4 then halt(1);
          textcolor(green);
          main_game(s_m2,h);
          end_g;
     end;
     readln;
     closegraph;
END. {*** END OF GAME ***}

