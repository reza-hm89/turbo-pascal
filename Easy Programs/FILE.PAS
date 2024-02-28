uses    crt;
type    student=record
                      cont:string;
                      cap:string;
        end;
        arr=array [1..100] of student;
        stu=record
                  a:arr;
        end;
        fp=file of stu;
var     f:fp;
        s:stu;
        i,n,j,choice:integer;
        t,t1:string;
procedure  insert;
begin
        clrscr;
        assign(f,'test.dat');
        rewrite(f);
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter country ',i,': ');
             readln(s.a[i].cont);
             write('Enter capital: ');
             readln(s.a[i].cap);
        end;
        for i:=1 to n do
        begin
             for j:=1 to n-1 do
                 if s.a[j].cont>s.a[j+1].cont then
                 begin
                      t:=s.a[j].cont;
                      t1:=s.a[j].cap;
                      s.a[j].cont:=s.a[j+1].cont;
                      s.a[j].cap:=s.a[j+1].cap;
                      s.a[j+1].cont:=t;
                      s.a[j+1].cap:=t1;
                 end;
        end;
        for i:=1 to n do
        begin
            writeln(s.a[i].cont,s.a[i].cap:4);
            write(f,s);
        end;
        close(f);
        readln;
end;
procedure searchcont;
var       cnt:string;
          i:integer;
begin
        clrscr;
        write('enter your country: ');
        readln(cnt);
        for i:=1 to n do
            if s.a[i].cont=cnt then
               write(s.a[i].cap);
        readln;
end;
procedure searchcap;
var       cap:string;
          i:integer;
begin
        clrscr;
        write('enter your capital: ');
        readln(cap);
        for i:=1 to n do
            if s.a[i].cap=cap then
               write(s.a[i].cont);
        readln;
end;
procedure inscont;
var       cnt:string;
begin
        clrscr;
        write('enter your country for Insert: ');
        readln(cnt);
        s.a[n+1].cont:=cnt;
        for i:=1 to n+1 do
            begin
                 for j:=1 to n do
                 if s.a[j].cont>s.a[j+1].cont then
                 begin
                      t:=s.a[j].cont;
                      t1:=s.a[j].cap;
                      s.a[j].cont:=s.a[j+1].cont;
                      s.a[j].cap:=s.a[j+1].cap;
                      s.a[j+1].cont:=t;
                      s.a[j+1].cap:=t1;
                 end;
            end;
        for i:=1 to n+1 do
            writeln(s.a[i].cont,s.a[i].cap:4);
        readln;
end;
procedure delcont;
var       cnt:string;
          i:integer;
begin
        clrscr;
        write('enter your country for delete: ');
        readln(cnt);
        for i:=1 to n do
            if s.a[i].cont=cnt then
            begin
                 for j:=i to n-1 do
                 begin
                     s.a[j].cont:=s.a[j+1].cont;
                     s.a[j].cap:=s.a[j+1].cap;
                 end;
            end;
        for i:=1 to n-1 do
            writeln(s.a[i].cont,s.a[i].cap:4);
        readln;
end;
function menu:byte;
var      ch:integer;
begin
        clrscr;
        gotoxy(1,1);
        write('1.Enter Data');
        gotoxy(1,3);
        write('2.Search a country');
        gotoxy(1,5);
        write('3.Search a capital');
        gotoxy(1,7);
        write('4.Insert a country');
        gotoxy(1,9);
        write('5.Delete a country');
        gotoxy(1,11);
        write('6.Exit');
        gotoxy(1,13);
        write('enter your choice: ');
        readln(ch);
        menu:=ch;
end;
begin
        repeat
              choice:=menu;
              case choice of
              1:insert;
              2:searchcont;
              3:searchcap;
              4:inscont;
              5:delcont;
              end;
        until choice=6;
end.