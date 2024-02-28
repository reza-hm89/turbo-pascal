uses graph,crt;
var  sum:real;
     sw,Gd,gm,tool1,tool2:integer;
function menu:byte;forward;
procedure strings; forward;
procedure print;   forward;
procedure func;    forward;
procedure help;    forward;
procedure setting; forward;
(*///////////////////////////////////*)
procedure board;
var  s,s1:string;
     i,y:integer;
     ch:char;
begin
     restorecrtmode;
     textmode(lastmode);
     clrscr;
     textcolor(15);
     for i:=13 to 67 do
        begin
             gotoxy(i,5);
             write('Í');
             gotoxy(i,10);
             write('Í');
             gotoxy(i,15);
             write('Í');
             gotoxy(i,20);
             write('Í');
             gotoxy(i,25);
             write('Í');
        end;
        for i:=5 to 25 do
        begin
             gotoxy(12,i);
             write('º');
             gotoxy(68,i);
             write('º');
        end;
        gotoxy(12,5);
        write('É');
        gotoxy(68,5);
        write('»');
        gotoxy(12,25);
        write('È');
        gotoxy(68,25);
        write('¼');
        gotoxy(12,10);
        write('Ì');
        gotoxy(68,10);
        write('¹');
        gotoxy(12,15);
        write('Ì');
        gotoxy(68,15);
        write('¹');
        gotoxy(12,20);
        write('Ì');
        gotoxy(68,20);
        write('¹');
        gotoxy(13,6);
        write('Enter string: ');
        gotoxy(13,11);
        write('Enter Function: ');
        gotoxy(13,16);
        write('Sum: ');
        gotoxy(13,21);
        write('HELP: ');
        gotoxy(8,6);
        write(chr(16),chr(16),chr(16));
        y:=6;
        ch:=readkey;
        while ord(ch)<>27 do
        begin
             if ord(ch)=72 then
             begin
                     gotoxy(8,y);
                     write('   ');
                     y:=y-5;
                     if y<6 then y:=21;
                     gotoxy(8,y);
                     write(chr(16),chr(16),chr(16));
             end
             else if ord(ch)=80 then
             begin
                     gotoxy(8,y);
                     write('   ');
                     y:=y+5;
                     if y>21 then y:=6;
                     gotoxy(8,y);
                     write(chr(16),chr(16),chr(16));
             end
             else if ord(ch)=13 then
             begin
                  if y=6 then
                       strings
                  else if y=11 then
                       func
                  else if y=16 then
                       print
                  else if y=21 then
                       help;
             end;
             ch:=readkey;
        end;
end;
(*//////////////////////////////////////////////*)
procedure print;
begin
        gotoxy(13,18);
        write('                                           ');
        gotoxy(13,18);
        write(sum:tool1:tool2);
end;
(*//////////////////////////////////////////////*)
procedure help;
begin
          gotoxy(13,22);
          write('1=sin     2=cos     3=tan     4=cot   5=arcsin');
          gotoxy(13,23);
          write('6=arccos  7=arctan  8=arccot  9=round');
          gotoxy(13,24);
          write('10=sqr    11=sqrt   12=ln     13=exp  14=abs');
end;
(*//////////////////////////////////////////////*)
procedure func;
var   s,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14:string;
      i,index:integer;
      sum1:real;
begin
      gotoxy(13,13);
      write('                                        ');
      gotoxy(13,13);
      readln(s);
      s1:='sin';s2:='cos'; s3:='tan'; s4:='cot'; s5:='arcsin';
      s6:='arccos'; s7:='arctan'; s8:='arccot'; s9:='round';
      s10:='sqr'; s11:='sqrt'; s12:='ln'; s13:='exp'; s14:='abs';
      index:=0;
      sum1:=sum;
      for i:=1 to length(s1) do
          if s[i]<>s1[i] then
             index:=1;
      if index=0 then
             sum1:=sin(sum*pi/180);
      index:=0;
      for i:=1 to length(s2) do
          if s[i]<>s2[i] then
             index:=1;
      if index=0 then
             sum1:=cos(sum*pi/180);
      index:=0;
      for i:=1 to length(s3) do
          if s[i]<>s3[i] then
             index:=1;
      if index=0 then
             sum1:=(sin(sum*pi/180))/(cos(sum*pi/180));
      index:=0;
      for i:=1 to length(s4) do
          if s[i]<>s4[i] then
             index:=1;
      if index=0 then
             sum1:=(cos(sum*pi/180))/(sin(sum*pi/180));
      index:=0;
      for i:=1 to length(s5) do
          if s[i]<>s5[i] then
             index:=1;
      if index=0 then
             sum1:=(1/sin(sum*pi/180));
      index:=0;
      for i:=1 to length(s6) do
          if s[i]<>s6[i] then
             index:=1;
      if index=0 then
             sum1:=(1/cos(sum*pi/180));
      index:=0;
      for i:=1 to length(s7) do
          if s[i]<>s7[i] then
             index:=1;
      if index=0 then
             sum1:=arctan(sum*pi/180);
      index:=0;
      for i:=1 to length(s8) do
          if s[i]<>s8[i] then
             index:=1;
      if index=0 then
             sum1:=(1/arctan(sum*pi/180));
      index:=0;
      for i:=1 to length(s9) do
          if s[i]<>s9[i] then
             index:=1;
      if index=0 then
             sum1:=round(sum);
      index:=0;
      for i:=1 to length(s10) do
          if s[i]<>s10[i] then
             index:=1;
      if index=0 then
             sum1:=sqr(sum);
      index:=0;
      for i:=1 to length(s11) do
          if s[i]<>s11[i] then
             index:=1;
      if index=0 then
             sum1:=sqrt(sum);
      index:=0;
      for i:=1 to length(s12) do
          if s[i]<>s12[i] then
             index:=1;
      if index=0 then
             sum1:=ln(sum);
      index:=0;
      for i:=1 to length(s13) do
          if s[i]<>s13[i] then
             index:=1;
      if index=0 then
             sum1:=exp(sum);
      index:=0;
      for i:=1 to length(s14) do
          if s[i]<>s14[i] then
             index:=1;
      if index=0 then
             sum1:=abs(sum);
      sum:=sum1;
end;
(*//////////////////////////////////////////////*)
procedure strings;
var     i,i1,j,k,len:word;
        s1:real;
        chr:char;
        adad,sw:integer;
        s:string;
begin
        repeat
              gotoxy(13,8);
              write('                                                   ');
              gotoxy(13,8);
              readln(s);
              sw:=2;
              i:=1;
              len:=length(s);
              while i<=len do
              begin
                   if (s[1]='*') or (s[1]='/') or (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                      if(s[i+1]='+')or(s[i+1]='-')or(s[i+1]='*')or(s[i+1]='/')then
                           sw:=0;
                   i:=i+1;
              end;
              if (sw=0) then
              begin
                   gotoxy(20,8);
                   write('Error');
                   readkey;
              end
              else if s[i-1]='=' then
                      sw:=1;
        until sw=1;
        s1:=0;
        for i:=1 to len do
        begin
             if (ord(s[i])>=48) and (ord(s[i])<=57) then
             begin
                  adad:=ord(s[i])-48;
                  s1:=s1*10+adad;
             end
             else
                 break;
             end;
             sum:=s1;
             i:=1;
             while (i<=len) do
             begin
                  if  (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                  begin
                       chr:=s[i];
                       j:=i;
                  end
                  else chr:=' ';
                  if (chr='+') then
                  begin
                  s1:=0;
                  for k:=j+1 to len do
                  begin
                  if (ord(s[k])>=48) and (ord(s[k])<=57) then
                  begin
                       adad:=ord(s[k])-48;
                       s1:=s1*10+adad;
                  end
                  else  break;
                  end;
                  sum:=sum+s1;
                  end{if '+'}
                  else if (chr='-') then
                  begin
                  s1:=0;
                  for k:=j+1 to len do
                  begin
                  if (ord(s[k])>=48) and (ord(s[k])<=57) then
                  begin
                       adad:=ord(s[k])-48;
                       s1:=s1*10+adad;
                  end
                  else  break;
                  end;
                  sum:=sum-s1;
                  end{ if '-'}
                  else if (chr='*') then
                  begin
                  s1:=0;
                  for k:=j+1 to len do
                  begin
                  if (ord(s[k])>=48) and (ord(s[k])<=57) then
                  begin
                       adad:=ord(s[k])-48;
                       s1:=s1*10+adad;
                  end
                  else  break;
                  end;
                  sum:=sum*s1;
                  end{ if '*'}
                  else if (chr='/') then
                  begin
                  s1:=0;
                  for k:=j+1 to len do
                  begin
                  if (ord(s[k])>=48) and (ord(s[k])<=57) then
                  begin
                       adad:=ord(s[k])-48;
                       s1:=s1*10+adad;
                  end
                  else  break;
                  end;
                  sum:=sum/s1;
                  end;{if '/'}
                  i:=i+1;
             end;{while}
end;
(**********************************************)
function menu:byte;
var
  i,x,y,y1: Integer;
  ch:char;
  y2:byte;
begin
  setgraphmode(getgraphmode);
  {cleardevice;   }
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
  setfillstyle(1,7);
  setcolor(yellow);
  outtextxy(275,170,'Start');
  setcolor(green);
  outtextxy(265,220,'Setting');
  outtextxy(280,270,'Exit');
  y:=0;
  for i:=1 to 3 do
  begin
  setcolor(0);
  line (219,201+y,381,201+y);
  Line (381,169+y,381,201+y);
  setcolor(15);
  line (219,169+y,381,169+y);
  line (219,169+y,219,201+y);
  y:=y+50;
  end;
  ch:=readkey;
  y2:=1;
  y1:=0;
  while ord(ch)<>27 do
  begin
       setcolor(0);
       line (219,201+y1,381,201+y1);
       Line (381,169+y1,381,201+y1);
       setcolor(15);
       line (219,169+y1,381,169+y1);
       line (219,169+y1,219,201+y1);
       case (y2) of
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
     end; {case}
     if ord(ch)=72 then
          begin
                y2:=y2-1;
                y1:=y1-50;
                if y1<0 then y1:=100;
                if y2<1 then y2:=3;

          end
     else if ord(ch)=80 then
          begin
               y2:=y2+1;
               y1:=y1+50;
               if y1>100 then y1:=0;
               if y2>3 then y2:=1;
               setcolor(15);
          end
     else if ord(ch)=13 then
     begin
          setcolor(15);
          line (219,201+y1,381,201+y1);
          Line (381,169+y1,381,201+y1);
          setcolor(0);
          line (219,169+y1,381,169+y1);
          line (219,169+y1,219,201+y1);
          menu:=y2;
          break;
     end;
     case (y2) of
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

end;
(*////////////////////////////////////////////*)
procedure setting;
begin
        setfillstyle(1,0);
        bar (190,105,410,135);
        setcolor(green);
        settextstyle(2,0,5);
        outtextxy(190,105,'Enter tool1,tool2: ');
        gotoxy(43,8);
        readln(tool1,tool2);
end;
(*////////////////////////////////////////////*)
begin
InitGraph(Gd,Gm,'c:\tpascal7\bgi');
repeat
      sw:=menu;
      case sw of
           1:board;
           2:setting;
      end;
until sw=3;
end.