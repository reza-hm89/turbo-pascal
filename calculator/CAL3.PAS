uses crt;
var
   x,y:integer;
   num1,num2,sum:real;
   ch:char;
procedure menu;
var
   i,j:integer;
begin
     clrscr;
     gotoxy(25,10);
     for i:=1 to  45 do
     begin
          gotoxy(14+i,10);
          write('л');
          gotoxy(14+i,13);
          write('л');
     end;
     gotoxy(15,11);write('н');gotoxy(15,12);write('н');
     gotoxy(59,11);write('о');gotoxy(59,12);write('о');
     j:=0;
     while j<15 do
     begin
     gotoxy(29,15+j);write('л');gotoxy(29,14+j);write('л');gotoxy(29,16+j);write('л');
     gotoxy(29,17+j);write('ллллллллллллллллл');
     i:=33;
     while i<46 do
     begin
          gotoxy(i,15+J);write('л');gotoxy(i,14+j);write('л');gotoxy(i,16+j);write('л');
          i:=i+4;
     end;
     j:=j+4;
     end;
     textcolor(9);
     for j:=0 to 15 do
     begin
          gotoxy(25,14+j);write('КККК');
          gotoxy(46,14+j);write('КККК')
     end;
     textcolor(7);
     gotoxy(31,15);write('^§');
     gotoxy(34,15);write('Tan');gotoxy(38,15);write('Sin');
     gotoxy(43,15);write('+');
     gotoxy(31,19);write('ћ');gotoxy(34,19);write('Cot');
     gotoxy(38,19);write('Cos');gotoxy(43,19);write('-');
     gotoxy(31,23);write('Ln');
     gotoxy(34,23);write('atg');gotoxy(38,23);write('asn');
     gotoxy(43,23);write('/');
     gotoxy(31,27);write('AC');
     gotoxy(34,27);write('acs');gotoxy(38,27);write(' =');
     gotoxy(43,27);write('*');
     textcolor(9);
     gotoxy(25+x,14);write('л');gotoxy(25+x,15);write('л');gotoxy(25+x,16);write('л');
     gotoxy(29+x,15);write('л');gotoxy(29+x,14);write('л');gotoxy(29+x,16);write('л');
     gotoxy(25+x,17);write('ллллл');
     gotoxy(25+x,13);write('ллллл');

end;
(*/***********************************************)
procedure arrow;
var
   i,k,e:integer;
   s:string;
begin
     ch:='y';
     repeat
     gotoxy(26,12);
     write('           ');
     gotoxy(26,12);
     textcolor(3);
     readln(s);
     val(s,num1,e);
     if e=0 then
        sum:=num1;
     until e=0;
     while (ord(ch)<>27) do
     begin
          if sum>999999 then
          begin
          sum:=0;
          gotoxy(45,12);
          write('             ');
          end;
          textcolor(8);
          gotoxy(26,10);
          ch:=readkey;
          textcolor(7);
          gotoxy(25+x,14+y);write('л');gotoxy(25+x,15+y);write('л');gotoxy(25+x,16+y);write('л');
          gotoxy(29+x,15+y);write('л');gotoxy(29+x,14+y);write('л');gotoxy(29+x,16+y);write('л');
          gotoxy(25+x,17+y);write('ллллл');
          gotoxy(25+x,13+y);write('ллллл');
          if (ord(ch)=80) and (y<10) then
               y:=y+4
          else if (ord(ch)=72) and (y>1) then
               y:=y-4
          else if (ord(ch)=75) and (x>5) then
               x:=x-4
          else if (ord(ch)=77) and (x<15) then
               x:=x+4;
          textcolor(9);
          gotoxy(25+x,14+y);write('л');gotoxy(25+x,15+y);write('л');gotoxy(25+x,16+y);write('л');
          gotoxy(29+x,15+y);write('л');gotoxy(29+x,14+y);write('л');gotoxy(29+x,16+y);write('л');
          gotoxy(25+x,17+y);write('ллллл');
          gotoxy(25+x,13+y);write('ллллл');
          if (ord(ch)=13) then
          begin
          if (x=12) and (y=0) then
          begin
               sum:=sin((sum*pi)/180);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=12) and (y=4) then
          begin
               sum:=cos((sum*pi)/180);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if x=16 then
          begin
               repeat
                     gotoxy(26,12);
                     write('           ');
                     gotoxy(26,12);
                     textcolor(3);
                     readln(s);
                     val(s,num1,e);
                     if e=0 then
                         e:=0;
               until e=0;
          if (y=0) then
          begin
               sum:=sum+num1;
          end
          else if (y=4) and (sum<>0) then
          begin
               sum:=sum-num1;
          end
          else if (y=8) then
          begin
               sum:=sum/num1;
          end
          else if (y=12) then
          begin
               sum:=sum*num1;
          end
          end{x=16}
          else if (x=8) and (y=0) then
          begin
               num2:=sin((sum*pi)/180);
               num1:=cos((sum*pi)/180);
               sum:=num2/num1;
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=8) and (y=4) then
          begin
               num2:=sin((sum*pi)/180);
               num1:=cos((sum*pi)/180);
               sum:=num1/num2;
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=8) and (y=8) then
          begin
               sum:=arctan((sum*pi)/180);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=12) and (y=8) then
          begin
               num1:=(num1*pi)/180;
               sum:=Arctan(num1/sqrt (1-sqr (num1)));
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=8) and (y=12) then
          begin
               num1:=(num1*pi)/180;
               sum:=arctan(sqrt (1-sqr (num1)) /num1);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=12) and (y=12) then
          begin
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=4) and (y=0) then
          begin
               sum:=sqr(sum);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=4) and (y=4) then
          begin
               sum:=sqrt(sum);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=4) and (y=8) then
          begin
               sum:=ln(sum);
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
          end
          else if (x=4) and (y=12) then
          begin
               sum:=0;
               textcolor(3);
               gotoxy(45,12);
               write('    ');
               gotoxy(37,12);
               write('sum:',sum:2:2);
               repeat
                     gotoxy(26,12);
                     write('           ');
                     gotoxy(26,12);
                     textcolor(3);
                     readln(s);
                     val(s,num1,e);
                     if e=0 then
                         sum:=num1;
               until e=0;
          end;
      end;{if 13}
      end;
end;
{********************************************************************}
begin
     x:=4;y:=0;
     menu;
     arrow;
end.