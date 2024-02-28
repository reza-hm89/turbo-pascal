uses crt;
type
    Date=record
                  day:1..31;
                  month:1..12;
                  year:integer;
    end;
    student=record
                  fname:string;
                  Lname:string;
                  ID:longint;
                  sex:0..1;
                  Father_n:string;
                  Shenas:longint;
                  birthday:date;
                  grade:real;
                  un:integer;
                  avg:real;
                  code:byte;
   end;
   recfile=file of student;
var  st:student;
     choice:1..10;
     fp:recfile;
     i,j,n:byte;
     avg:real;
function menu:integer;
begin
     clrscr;
     textcolor(2);
     writeln('1. " Insert Data(File) "');
     writeln('2. " Insert data(handle) "');
     writeln('3. " Sorting "');
     writeln('4. " Saving Data in New File "');
     writeln('5. " Deleting Data and Insert New Data "');
     writeln('6. " Searching "');
     writeln('7. " Print of Data "');
     writeln('8. " Declaration of Data for Superior Students(1..n) "');
     writeln('9. " Exit of Program "');
     gotoxy(10,10);
     textcolor(41);
     write('** Enter your choice ** (1-9)');
     readln(choice);
     menu:=choice;

end;
{*************************************************************************}
procedure insert_file;
var       fp:recfile;
          st:string;
begin
     clrscr;
     textcolor(6);
     write('please enter your file adress: ');
     readln(st);
     assign(fp,'h:\reza.txt');
     reset(fp);
     close(fp);
     textcolor(43);
     writeln;writeln;
     gotoxy(29,8);
     writeln('file created');
     readln;
end;
{*************************************************************************}
procedure insert_type(st:student);
var  d:byte;
     sum1,sum2:real;
begin
     clrscr;
     textcolor(9);
     assign(fp,'reza');
     rewrite(fp);
     write('please enter Number of Students: ');
     readln(n);
     for i:=1 to n do
     begin
     clrscr;
            writeln('please enter:');
            writeln('(name)   (family)   (ID)    (Father name)    (shomare shenasname)');
            writeln('(code of sex 0=male,1=famale)    (Birth day (example: " 18 5 1368 "))');
      with st do
      begin
         readln(fname);
         readln(lname);
         readln(id);
         readln(father_n);
         readln(shenas);
         readln(sex);
         readln(birthday.day);
         readln(birthday.month);
         readln(birthday.year);
      end;
     writeln('please enter Number of Lessons:');
     readln(d);
     sum1:=0;
     sum2:=0;
     for j:=1 to d do
     begin
             writeln('please enter unit and grade',j,':');
             readln(st.un);
             readln(st.grade);
             sum1:=(st.un)*(st.grade)+sum1;
             sum2:=(st.un)+sum2;
     end;
     avg:=sum1/sum2;
     st.avg:=avg;
     write(fp,st);
     end;{end of for}
     close(fp);
end;
{*************************************************************************}
procedure screen(title:string);
var
   k:byte;
begin
     writeln(title:45);
     writeln;
     writeln('name ':5,'   family   ','   ID   ','    Father_n    ','  sex   ','      Stno   ','       Average   ');
     for k:=1 to 80 do
     write('-');
     writeln;
end;
{*************************************************************************}
 procedure  out(st:student);
 begin
      clrscr;
      textcolor(9);
      writeln;
      i:=6;
      assign(fp,'h:\reza.txt');
      reset(fp);
      screen('*list of students*');
      writeln;
      writeln;
      while not eof(fp) do
      begin
           read(fp,st);
           gotoxy(1,i);
           write(st.fname);
           gotoxy(8,i);
           write(st.lname);
           gotoxy(20,i);
           write(st.id);
           gotoxy(32,i);
           write(st.father_n);
           gotoxy(45,i);
           write(st.sex);
           gotoxy(54,i);
           write(st.shenas);
           gotoxy(70,i);
           write(st.avg:4:2);
           i:=i+1;
      end;
 close(fp);
 readln;
 end;
 {**************************************************************************}
procedure sorting(st:student);
var  sort:byte;
     t:string;
begin
     clrscr;
     textcolor(3);
     writeln('Type your Sorting:');
     write('1.Name   2.family     3.ID    4.Father_n    5.Stno     6.Sex     7.Average');
     writeln;
     writeln;
     write('                        **  Please Write (1-7) **');

end;
{*-*************************************************************************}
procedure delete(st : student);
     var stno : integer;
         ans : char;
  begin{delet}
     assign(fp, 'h:\data.dat');
     reset(fp);
     clrscr;
     textcolor(2);
     write('Enter student number to delete:');
     readln(stno);
     if (filesize(fp) < stno -100) or (stno -100 < 0) then
     begin {if}
        writeln('student with stno ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
        exit;
     end; {if}
     seek(fp, stno - 100);
     read(fp, st);
     if st.code <> 1 then
     begin {if}
        writeln('student with stno ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
     end {if}
     else
     begin{else}
          clrscr;
          writeln('name':10 ,' id ':25 , '  average  ' , ' unit ');
          writeln('----------------------------------------------');
          writeln(st.fname : 10 , st.id :23 , st.avg :9 :2 , st.un:6);
          writeln('----------------------------------------------');
          writeln;
          writeln('do you want to delete this record?(y/n)');
          readln(ans);
          if (ans = 'y') or (ans = 'Y') then
          begin
               st.code := 0;
               seek(fp, st.id - 100) ;
               write(fp, st);
          end;
     end;
     close(fp);
  end;{delet}
{***************************************************************************}
begin
     repeat
           choice:=menu;
           case choice of
                       1:insert_file;
                       2:insert_type(st);
                       3:sorting(st);
                       5:delete(st);
                       7:out(st);
           end;
     until choice=9;
     readln;
end.
