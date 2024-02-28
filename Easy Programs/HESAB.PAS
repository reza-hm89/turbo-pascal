uses    crt;
label 1,2;
type    rez=record
                  han:integer;
                  moh:integer;
                  three:integer;
        end;
        han=record
                  rez:integer;
                  moh:integer;
                  three:integer;
        end;
        moh=record
                  han:integer;
                  rez:integer;
                  three:integer;
        end;
        list=record
                  hani:han;
                  reza:rez;
                  mohamad:moh;
        end;
        arr=array[1..100] of list;
var
        b:array [1..100] of integer;
        a:arr;
        rec:list;
        n,i,sum,x,y,z:longint;
        ans:char;

{******************************************************************}
        procedure reza;
        var n:integer;
        begin
             clrscr;
             writeln('                 R E Z A          ');
             writeln('1. For Hani');
             writeln('2. For Mohammad');
             writeln('3. For 3 nafar');
             writeln('4. Back');
             writeln('press 1-4');
             readln(n);
             sum:=0;
             ans:='y';
             i:=0;
             if n=1 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(reza.han);
                                     sum:=reza.han+sum;
                                     b[1]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=2 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(reza.moh);
                                     sum:=reza.moh+sum;
                                     b[2]:=sum;
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=3 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(reza.three);
                                     sum:=reza.three+sum;
                                     b[3]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             x:=(b[3] div 3);
             b[1]:=b[1]+x;
             b[2]:=b[2]+x;
             b[3]:=0;

        end;
{******************************************************************}
        procedure hani;
        var n:integer;
        begin
             clrscr;
             writeln('                 H A N I          ');
             writeln('1. For Reza');
             writeln('2. For Mohammad');
             writeln('3. For 3 nafar');
             writeln('4. Back');
             writeln('press 1-4');
             readln(n);
             sum:=0;
             ans:='y';
             i:=0;
             if n=1 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(hani.rez);
                                     sum:=hani.rez+sum;
                                     b[4]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=2 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(hani.moh);
                                     sum:=hani.moh+sum;
                                     b[5]:=sum;
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=3 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(hani.three);
                                     sum:=hani.three+sum;
                                     b[6]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             y:=(b[6] div 3);
             b[4]:=b[4]+y;
             b[5]:=b[5]+y;
             b[6]:=0;

        end;
{******************************************************************}
        procedure mohamad;
        var n:integer;
        begin
             clrscr;
             writeln('                 M O H A M A D          ');
             writeln('1. For Reza');
             writeln('2. For Hani');
             writeln('3. For 3 nafar');
             writeln('4. Back');
             writeln('press 1-4');
             readln(n);
             sum:=0;
             ans:='y';
             i:=0;
             if n=1 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(mohamad.rez);
                                     sum:=mohamad.rez+sum;
                                     b[7]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=2 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(mohamad.han);
                                     sum:=mohamad.han+sum;
                                     b[8]:=sum;
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             sum:=0;
             ans:='y';
             i:=0;
             if n=3 then
             begin
                  clrscr;
                  while ans='y' do
                  begin
                                i:=i+1;

                                write('Enter Kharid ',i,' :');
                                with a[i] do
                                begin
                                     readln(mohamad.three);
                                     sum:=mohamad.three+sum;
                                     b[9]:=sum
                                end;
                                write('Do you Want to cotinue:(y/n) ');
                                readln(ans);
                  end;
             end;
             z:=(b[9] div 3);
             b[7]:=b[7]+z;
             b[8]:=b[8]+z;
             b[9]:=0;

        end;
{******************************************************************}
        function menu:byte;
        begin
        clrscr;
        writeln('Enter Number of list: (1-6)');
        writeln;
        textcolor(11);
        writeln('1. Reza');
        writeln('2. Hani');
        writeln('3. Mohammad');
        writeln('4. Heading');
        writeln('5. Emale Hesab');
        writeln('6. Exit');
        writeln;
        write('Press Enter:    ');
        readln(n);
        menu:=n;
        end;
{******************************************************************}
        procedure title;
        begin;
        clrscr;
        writeln('      Reza     ');
        writeln('------------------');
        writeln(' H      M      3');
        writeln(b[1]:2,b[2]:7,b[3]:8);
        writeln;
        writeln('      Hani');
        writeln('------------------');
        writeln(' R      M      3');
        writeln(b[4]:2,b[5]:7,b[6]:8);
        writeln;
        writeln('     Mohamad');
        writeln('------------------');
        writeln(' R      H      3');
        writeln(b[7]:2,b[8]:7,b[9]:8);
        readln;
        end;
{****************************************************************}
        procedure hesab;
        begin
             clrscr;
             if b[1]>b[4] then
             begin
                          b[1]:=b[1]-b[4];
                          b[4]:=0;
             end
             else
             begin
                          b[4]:=b[4]-b[1];
                          b[1]:=0;
             end;
             if b[2]>b[7] then
             begin
                          b[2]:=b[2]-b[7];
                          b[7]:=0;
             end
             else
             begin
                          b[7]:=b[7]-b[2];
                          b[2]:=0;
             end;
             if b[5]>b[8] then
             begin
                          b[5]:=b[5]-b[8];
                          b[8]:=0;
             end
             else
             begin
                          b[8]:=b[8]-b[5];
                          b[5]:=0;
             end;
             gotoxy(27,3);
             writeln('"Gheymatha Emal Shod"');
             gotoxy(1,7);
             textcolor(19);
             write('press Enter to Continue...');
             textcolor(11);
             readln;
        end;
{*******************************************************************}
        begin
        repeat
              n:=menu;
              case n of
                   1:Reza;
                   2:Hani;
                   3:Mohamad;
                   4:title;
                   5:Hesab;
        end;
        until n=6 ;
        clrscr;
        gotoxy(24,2);
        textcolor(25);
        writeln('Created By Reza Hossini Masoum');
        textcolor(11);
        gotoxy(1,6);
        write('Press any Key to Exit');
        readln;
end.