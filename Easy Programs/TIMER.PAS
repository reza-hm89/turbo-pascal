uses dos,crt;
var  i,x,y,h,m,s,hund:word;
     a:char;
function LeadingZero(w : Word) : String;
var
  s : String;
begin
  Str(w:0,s);
  if Length(s) = 1 then
    s := '0' + s;
  LeadingZero := s;
end;
{--------------------------------------------------}
begin
     settime(0,0,0,0);
     clrscr;
     i:=1;
     x:=40;
     y:=12;
     gotoxy(x,y);
     write('*');
     while (TRUE) and (ord(a)<>27) do
     begin
          if (not keypressed) then
             begin
                          GetTime(h,m,s,hund);
                          gotoxy(75,1);
                          Write(LeadingZero(m),':',LeadingZero(s));
             end
     else
     begin
     a:=readkey;
     case (ord(a)) of
          77:
          begin
                          gotoxy(x,y);
                          write(' ');
                          x:=x+1;
                          gotoxy(x,y);
                          write('*');
                          GetTime(h,m,s,hund);
                          gotoxy(75,1);
                          Write(LeadingZero(m),':',LeadingZero(s));

          end;
          75:
          begin
                          gotoxy(x,y);
                          write(' ');
                          x:=x-1;
                          gotoxy(x,y);
                          write('*');
                          GetTime(h,m,s,hund);
                          gotoxy(75,1);
                          Write(LeadingZero(m),':',LeadingZero(s));

          end;
          72:
          begin
                          gotoxy(x,y);
                          write(' ');
                          y:=y-1;
                          gotoxy(x,y);
                          write('*');
                          GetTime(h,m,s,hund);
                          gotoxy(75,1);
                          Write(LeadingZero(m),':',LeadingZero(s));

          end;
          80:
          begin
                          gotoxy(x,y);
                          write(' ');
                          y:=y+1;
                          gotoxy(x,y);
                          write('*');
                          GetTime(h,m,s,hund);
                          gotoxy(75,1);
                          Write(LeadingZero(m),':',LeadingZero(s));

          end;
          end;{case}
         end;{else}
       end;{while}
end.