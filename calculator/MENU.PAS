uses graph,crt;
const a:array[1..10] of integer=(140,50,150,60,150,340,140,350,140,50);
      b:array[1..10] of integer=(500,60,510,50,510,350,500,340,500,60);
      c:array[1..10] of integer=(140,50,150,60,500,60,510,50,140,50);
      d1:array[1..10] of integer=(140,350,150,340,500,340,510,350,140,350);
var  d,i,m,y:integer;
     ch:char;
begin
     initgraph(d,m,'C:\tpascal7\bgi');
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
     fillpoly(5,a);
     fillpoly(5,b);
     setfillstyle(1,8);
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
     closegraph;
end.