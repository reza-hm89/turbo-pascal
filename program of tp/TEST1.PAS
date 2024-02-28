program final;
uses crt;
label 100;
type
    date=record
               day:integer;
               month:integer;
               year:integer;
    end;
    rec1=record
              name:string[20];
              id:longint;
              fname:string[30];       {famil}
              pname:string[20];       {name pedar}
              shsh:longint;           {shomare shenasname}
              sex:integer;
              un:integer;
              grade:real;
              birthday:date;
              ave:real;
    end;

    file1=file of rec1;
var
   f1:file1;
   rec:rec1;
   sum1:real;
  d,n,sum2,i,j:integer;
   aver:real;
   choice:byte;
   {**************************************}
function menu:integer;
var
   choice:byte;
begin
     clrscr;
     textbackground(0);
     textcolor(9);
     clrscr;
     lowvideo;
     writeln('1.jahate daryafte ettelaat be soorate file matni dar record.');
     highvideo;
     writeln('2.daryafte etelaat be soorate dasti.');
     lowvideo;
     writeln('3.morattab sazie ettelaat bar asase filde delkhah.');
     highvideo;
     writeln('4.zakhire sazie ettelaat dar file jadid.');
     lowvideo;
     writeln('5.hazfe ettelaate daneshjooyane delkhah.');
     highvideo;
     writeln('6.darje ettelaate daneshjooyee jadid.');
     lowvideo;
     writeln('7.jostojooye ettelaate farde morede nazar.');
     highvideo;
     writeln('8.chape ettelaat be soorate ghabele ghabool.');
     lowvideo;
     writeln('9.elame ettelaate ..n.. daneshjooye bartar.');
     highvideo;
     writeln('10.exit.':24);
     writeln;
     textcolor(41);
     write('enter your select from 1 to 10:':40);
     readln(choice);
     menu:=choice;
end;
{************************************************************************}
procedure enter1; {daryafte file az pish taeen shode}
var
   st:string;
begin
     clrscr;
     textcolor(9);
     gotoxy(19,4);
     write('please enter your file adress: ');
     readln(st);
     assign(f1,st);
     reset(f1);
     close(f1);
     textcolor(41);
     writeln;writeln;
     gotoxy(29,8);
     writeln('file created');
     readln;
end;
{***********************************************************************}
procedure enter2(rec:rec1);  {2}
begin
     clrscr;
     textcolor(9);
     assign(f1,'st.dat');
     rewrite(f1);
     write('please enter tedade daneshjooyan: ');
     readln(n);
     for i:=1 to n do
     begin
     clrscr;
     writeln('please enter:');
     writeln('(naam)    (ID)    (famil)    (naame pedar)    (shomare shenasname)');
     writeln('(kode jensiat 0=dokhtar,1=pesar)    (tarikhe tavallo masalan:31 10 86)');
      with rec do
      begin
         readln(name);
         readln(id);
         readln(fname);
         readln(pname);
         readln(shsh);
         readln(sex);
         readln(birthday.day);
         readln(birthday.month);
         readln(birthday.year);
      end;
     writeln('please enter tedad dars ha');
     readln(d);
     writeln('please enter unit and grade');
     sum1:=0;  sum2:=0;
     for j:=1 to d do
        begin
          readln(rec.un);
          readln(rec.grade);
          sum1:=(rec.un)*(rec.grade)+sum1;
          sum2:=(rec.un)+sum2;
        end;
        aver:=sum1/sum2;
        rec.ave:=aver;
       write(f1,rec);
   end;{end of for}
   close(f1);
end;
{*********************************************************************************}
procedure screen(title:string);
var
   k:byte;
begin
     writeln(title:40);
     writeln;
     writeln('name ':10,'         family      ','          ID     ','        average  ');
     for k:=1 to 70 do
     write('-');
     writeln;
end;
{*************************************************************************}
 procedure  out(rec:rec1); {8}
 begin
 clrscr;
 textcolor(9);
 writeln;
 i:=6;
 assign(f1,'st.dat');
 reset(f1);
 screen('*list of students*');
 writeln; writeln;
 while not eof(f1) do
 begin
      read(f1,rec);
      gotoxy(6,i);
      write(rec.name);
      gotoxy(20,i);
      write(rec.fname);
      gotoxy(39,i);
      write(rec.id);
      gotoxy(58,i);
      write(rec.ave:2:2);
      i:=i+1;
 end;
 close(f1);
 readln;
 end;
 {***********************************************************************}
 procedure copy;{copy gereftan az file}
 var
 f2:file1;
 f1:file1;
 copy_name:string[30];
 begin
      clrscr;
      textcolor(9);
      writeln('please enter copy file name: ');
      readln(copy_name);
      assign(f1,'st.dat');
      assign(f2,copy_name);
      reset(f1);
      rewrite(f2);
      while not eof(f1) do
      begin
           read(f1,rec);
           write(f2,rec);
      end;
      close(f1);
      close(f2);
      writeln;
      textcolor(41);
      writeln('file copied');
      readln;
 end;
 {************************************************************************}
 begin
      repeat
      clrscr;
      choice:=menu;
      case choice of
      1:enter1;
      2:enter2(rec);
      3:out(rec);
      4:copy;
      end;
      until choice=10;
 end.