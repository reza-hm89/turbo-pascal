uses
  crt,Graph;
var
  Gd, Gm, i,x,y,y1: Integer;
  ch:char;
begin
  Gd := Detect;
  InitGraph(Gd,Gm,'c:\tpascal7\bgi');
  cleardevice;
  setfillstyle(1,7);
  bar (180,70,420,330); {kadre asli}
  setfillstyle(1,blue);
  bar (185,75,415,90);  {kadre abi}
  setfillstyle(1,red);
  bar (397,78,410,87);
  setcolor(red);
  rectangle(395,76,412,89);  {kadre x}
  setcolor(0);
  outtextxy(400,79,'x');
  setcolor(yellow);
  outtextxy(200,78,' Calc 1.0 ');
  setfillstyle(1,0);
  bar (190,105,410,135);
  setcolor(red);
  rectangle (190,105,410,135);
  rectangle (188,103,412,137);
  setcolor(white);
  line(189,136,411,136);
  line(410,104,410,135);
  setcolor(0);
  line(189,104,189,135);
  line(189,104,411,104);
  setcolor(green);
  settextstyle(8,0,1);
  outtextxy(250,107,'Calculator');
  for i:=1 to 3 do
  begin
  setfillstyle(1,0);
  bar (220,170+y,380,200+y);
  setcolor(red);
  rectangle(218,168+y,382,202+y);
  rectangle(220,170+y,380,200+y);
  setcolor(white);
  line (219,201+y,381,201+y);
  line (381,169+y,381,201+y);
  setcolor(0);
  line (219,169+y,381,169+y);
  line (219,169+y,219,201+y);
  y:=y+50;
  end;
  setcolor(yellow);
  outtextxy(275,170,'Start');
  setcolor(green);
  outtextxy(265,220,'Setting');
  outtextxy(280,270,'Exit');
  ch:=readkey;
  y:=1;
  y1:=0;
  while ord(ch)<>27 do
  begin
       setcolor(15);
       line (219,201+y1,381,201+y1);
       Line (381,169+y1,381,201+y1);
       setcolor(0);
       line (219,169+y1,381,169+y1);
       line (219,169+y1,219,201+y1);
       case (y) of
          1:    begin
                setcolor(green);
                outtextxy(275,170,'Start');
                end;
          2:    begin
                setcolor(green);
                outtextxy(265,220,'Setting');
                end;
          3:    begin
                setcolor(green);
                outtextxy(280,270,'Exit');
                end;
     end;
     if ord(ch)=72 then
          begin
                y:=y-1;
                y1:=y1-50;
                if y1<0 then y1:=100;
                if y<1 then y:=3;

          end
     else if ord(ch)=80 then
          begin
               y:=y+1;
               y1:=y1+50;
               if y1>100 then y1:=0;
               if y>3 then y:=1;
               setcolor(15);
          end
     else if ord(ch)=13 then
     begin
          setcolor(0);
          line (219,201+y1,381,201+y1);
          Line (381,169+y1,381,201+y1);
          setcolor(white);
          line (219,169+y1,381,169+y1);
          line (219,169+y1,219,201+y1);
     end;
     case (y) of
          1:    begin
                setcolor(yellow);
                outtextxy(275,170,'Start');
                end;
          2:    begin
                setcolor(yellow);
                outtextxy(265,220,'Setting');
                end;
          3:    begin
                setcolor(yellow);
                outtextxy(280,270,'Exit');
                end;
     end;
       ch:=readkey;
  end;
  CloseGraph;
end.