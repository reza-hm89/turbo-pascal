uses graph,crt;
var  rand,x,y,x1,y1,d,m,x0,x2,x3:integer;
     ch:char;
begin
     initgraph(d,m,'c:\tpascal7\bgi');
     setcolor(15);
     rectangle(0,0,639,478); {kadr}
     setfillstyle(1,lightblue);
     bar(1,1,638,476); {sky}
     setfillstyle(4,green);
     bar(1,400,638,477);   {chaman}
     setfillstyle(1,14);
     setcolor(14);
     pieslice(500,50,0,360,40);  {khorshid}
     setcolor(6);
     ellipse(100,200,360,200,250,100);  {kooh}
     ellipse(400,200,360,126,250,100);  {kooh}
     setcolor(7);
     setfillstyle(1,7);
     pieslice(85,375,0,180,20);   {x1}      {tank}
     setfillstyle(1,8);
     bar(50,375,120,399);               {tank}
     setcolor(0);
     line(105,370,130,360);            {loole tank}
     {--------------------------}
     randomize;
     rand:=random(400)+100;
     setcolor(7);
     setfillstyle(1,7);
     pieslice(rand+85,375,0,180,20);         {tank}
     setfillstyle(1,8);
     bar(rand+50,375,rand+120,399);               {tank}
     setcolor(0);
     line(rand+105,370,rand+130,360);           {loole tank}
     ch:=readkey;
     x:=130;
     y:=360;
     x1:=85;
     x2:=50;
     x3:=120;
     x0:=105;
     y1:=370;
     while ord(ch)<>27 do
     begin
          if ord(ch)=72 then
          begin
             setcolor(lightblue);
             line(x0,y1,x,y);
             y:=y-1;
             if y<350 then y:=350
             else
             x:=x-1;
             setcolor(0);
             line(x0,y1,x,y);
          end
          else if ord(ch)=80 then
          begin
             setcolor(lightblue);
             line(x0,y1,x,y);
             y:=y+1;
             if y>370 then y:=370
             else
                 x:=x+1;
             setcolor(0);
             line(x0,y1,x,y);
          end
          else if ord(ch)=75 then
          begin
               setcolor(9);
               setfillstyle(1,9);
               pieslice(x1,375,0,180,20);
               setfillstyle(1,9);
               bar(x2,375,x3,399);
               setcolor(9);
               line(x0,y1,x,y);
               x0:=x0-1;
               x:=x-1;
               x1:=x1-1;
               x2:=x2-1;
               x3:=x3-1;
               setcolor(7);
               setfillstyle(1,7);
               pieslice(x1,375,0,180,20);
               setfillstyle(1,8);
               bar(x2,375,x3,399);
               setcolor(0);
               line(x0,y1,x,y);
          end
          else if ord(ch)=77 then
          begin
               setcolor(9);
               setfillstyle(1,9);
               pieslice(x1,375,0,180,20);
               setfillstyle(1,9);
               bar(x2,375,x3,399);
               setcolor(9);
               line(x0,y1,x,y);
               if x3<rand+40 then
               begin
               x0:=x0+1;
               x:=x+1;
               x1:=x1+1;
               x2:=x2+1;
               x3:=x3+1;
               end;
               setcolor(7);
               setfillstyle(1,7);
               pieslice(x1,375,0,180,20);
               setfillstyle(1,8);
               bar(x2,375,x3,399);
               setcolor(0);
               line(x0,y1,x,y);
          end;
     ch:=readkey;
     end;{while}
    { readln }
end.