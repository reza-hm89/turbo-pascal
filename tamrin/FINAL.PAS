program test ;
  uses crt ;
  type
      student = record
          no       : longint;
          name     : string;
          lname    : string;
          Father_n : string;
          sex      : string;
          ave      : real;
          grade    : real;
          un       : byte;
          code     : byte;
      end ;
      recfile = file of student;
  var
      fp     : recfile ;
      st,max : student ;
      choice : byte;
{***************************}
function menu:integer;
var      choice:byte;
begin
     clrscr;
     textcolor(15);
     writeln('1. " Enter Data (Handle) "');
     writeln('2. " Deleting Data "');
     writeln('3. " Searching "');
     writeln('4. " Print of Data "');
     writeln('5. " Exit of Program "');
     gotoxy(10,10);
     write('** Enter your choice ** (1-5)');
     readln(choice);
     menu:=choice;

end;
{***************************}
  procedure insert_type (st:student);
  begin{enter}
    assign(fp, 'data.dat');
    rewrite(fp);
    while true do
    begin
        clrscr;
        writeln('name & Last name :');
        writeln('ID ( 100<id ):');
        writeln('average :');
        writeln('sex :');
        with st do
        begin
           gotoxy(20, 1);
           readln(name);
           if length(name) = 0 then
               break;
           repeat
              gotoxy(16, 2);
              readln(no);
           until no >= 100 ;
           gotoxy(11, 3);
           readln(ave);
           gotoxy(7, 4);
           readln(sex);
           code := 1;
           seek(fp, no - 100);
           write(fp, st);
        end;
    end;
    close(fp);
  end;{enter}
{***********************************************************************}
  procedure edit(st : student);
     var stno : longint;
         choice : byte;
  begin  {edit}
     assign(fp, 'data.dat');
     reset(fp);
     clrscr;
     write('Enter student ID to edit:');
     readln(stno);
     if (filesize(fp) < stno -100) or (stno -100 < 0) then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
        exit;
     end; {if}
     seek(fp, stno - 100);
     read(fp, st);
     if st.code <> 1 then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
     end {if}
     else
     begin{else}
        repeat
          clrscr;
          writeln('name  ' ,'   ID    ':25 , '      ave    ' , '     Sex ');
          writeln('-------------------------------------------------------');
          writeln(st.name : 10 , st.no :23 , st.ave :9 :2 , st.sex:6);
          writeln('-------------------------------------------------------');
          writeln('1 . change name');
          writeln('2 . change ID');
          writeln('3 . change average');
          writeln('4 . no change ');
          write('Enter your select(1-4):');
          readln(choice);
          case choice of
                1 : begin
                      write('Enter new name:');
                      readln(st.name)
                    end;
                2 : begin
                      write('Enter new stno:');
                      readln(st.no)
                    end;
                3 : begin
                      write('Enter new average:');
                      readln(st.ave)
                    end;
          end;{case}
        until choice = 4;
        seek(fp, st.no - 100);
        write(fp, st);
     end; {else}
     close(fp);
  end;{edit}
{***************************}
  procedure search(st : student);
     var stno : longint;
  begin{search}
     assign(fp, 'data.dat');
     reset(fp);
     clrscr;
     write('Enter student ID to search:');
     readln(stno);
     if (filesize(fp) < stno -100) or (stno -100 < 0) then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
        exit;
     end; {if}
     seek(fp, stno - 100);
     read(fp, st);
     if st.code <> 1 then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
     end {if}
     else
     begin{else}
          clrscr;
          writeln('name  ' ,'                    ID' , '   Average   ' , ' Sex ');
          writeln('------------------------------------------------------');
          writeln(st.name : 10 , st.no :16 , st.ave :9 :2 , st.sex:6);
          writeln('------------------------------------------------------');
          writeln('press any key to continue..');
          readln;
     end;
     close(fp);
  end;{search}
{***************************}
  procedure delet(st : student);
     var stno : longint;
         ans : char;
  begin{delet}
     assign(fp, 'data.dat');
     reset(fp);
     clrscr;
     write('Enter student ID to delete:');
     readln(stno);
     if (filesize(fp) < stno -100) or (stno -100 < 0) then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
        exit;
     end; {if}
     seek(fp, stno - 100);
     read(fp, st);
     if st.code <> 1 then
     begin {if}
        writeln('student with ID ',stno, ' not exist');
        write('press Enter to continue...');
        readln;
     end {if}
     else
     begin{else}
          clrscr;
          writeln('name' ,'       ID    ' , '     Average    ' , '    Sex    ');
          writeln('-------------------------------------------------------');
          writeln(st.name : 10 , st.no :23 , st.ave :9 :2 , st.sex:6);
          writeln('--------------------------------------------------------');
          writeln;
          writeln('do you want to delete this record?(y/n)');
          readln(ans);
          if (ans = 'y') or (ans = 'Y') then
          begin
               st.code := 0;
               seek(fp, st.no - 100) ;
               write(fp, st);
          end;
     end;
     close(fp);
  end;{delet}
{***************************}
  procedure report(st : student);
     var i : byte;
  begin
     assign(fp, 'data.dat');
     reset(fp);
     while not eof(fp) do
     begin
       clrscr;
       writeln('name ':10 ,' ID ':25 , '    Average    ' , '  sex  ');
       writeln('--------------------------------------------------------');
       i := 5;
       while not eof(fp) and (i < 20) do
       begin
         read(fp, st);
         if st.code = 1  then
         begin
           writeln(st.name : 10 , st.no :23 , st.ave :9 :2 , st.sex:6);
           i := i + 1;
         end;{if}
       end;{inner while}
       writeln('---------------------------------------------------------');
       writeln('press Enter to continue...');
       readln;
     end;{while}
     close(fp);
  end;{report}
{*************************************************************************}
procedure  max_ave(st:student);
var        n,i:byte;

begin
         clrscr;
         assign(fp,'data.dat');
         reset(fp);
         read(fp,st);
         read(fp,max);
         max.ave:=0;
         i:=1;
         write('Enter Number of Best student:');
         readln(n);
         while not eof(fp) and (i<=n) do
         begin

                    begin
                         read(fp,st);
                         read(fp,max);
                         if max.ave<st.ave  then max:=st;
                         write(fp,max);
                         writeln;
                         i:=i+1;
                    end;
         end;
         close(fp);
         readln;
end;
{**********************************************************************}
begin
    repeat
      clrscr;
      choice := menu;
      case choice of
          1 : Insert_type(st);
          2 : delet(st);
          3 : search(st);
          4 : report(st);
      end;
    until choice = 5;
end.



