uses crt;
var  i,n,e:integer;
     range1,range2:integer;
     sum:real;
     s:string;
     chr:char;
(*///////////////////////////////////////////*)
procedure input;
var     i,i1,j,j1,k:word;
        s1,s2:real;
        chr:char;
        num,cntr,index:integer;
        s:string;
begin
        repeat
              gotoxy(22,10);
              write('                                   ');
              gotoxy(22,10);
              readln(s);
              index:=2;
              i:=1;
              while i<=length(s) do
              begin
                   if (s[1]='*') or (s[1]='/') or (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                   if(s[i+1]='+')or(s[i+1]='-')or(s[i+1]='*')or(s[i+1]='/')then
                       index:=0;
                   i:=i+1;
              end;
              if (index=0) then
              begin
                   gotoxy(22,10);
                   write('Syntax error!                ');
                   readkey;
              end
              else if s[i-1]='=' then
                      index:=1;
        until index=1;
        s1:=0;
        for i:=1 to length(s) do
        begin
             if (ord(s[i])>=48) and (ord(s[i])<=57) then
             begin
                  num:=ord(s[i])-48;
                  s1:=s1*10+num;
             end
             else
                 break;
             end;
             sum:=s1;
             i1:=1;
             i:=1;
             cntr:=0;
             while (i<=length(s)) do
             begin
                  if  (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                  begin
                       cntr:=cntr+1;
                       chr:=s[i];
                       j1:=i;
                  end
                  else chr:=' ';
                  if (cntr=1) then
                  begin
                       i1:=1;
                       s1:=0;
                       while (i1<j1) do
                       begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                s1:=s1*10+num;
                            end;
                            i1:=i1+1;
                       end;
                       s2:=s1;
                       s1:=0;
                            for k:=j1+1 to length(s) do
                            begin
                                if (ord(s[k])>=48) and (ord(s[k])<=57) then
                                begin
                                     num:=ord(s[k])-48;
                                     s1:=s1*10+num;
                                end
                                else
                                    break;
                            end;
                       if (chr='+') then
                       begin
                            s2:=s2+s1;
                            sum:=s2;
                       end
                       else if (chr='-') then
                       begin
                            s2:=s2-s1;
                            sum:=s2
                       end
                       else if (chr='*') then
                       begin
                            s2:=s2*s1;
                            sum:=s2
                       end
                       else if (chr='/') then
                       begin
                            s2:=s2/s1;
                            sum:=s2
                       end;
                  end;{cntr=1}
                  if (cntr>1) and (chr='+') then
                       begin
                            s1:=0;
                            for k:=j1+1 to length(s) do
                            begin
                                if (ord(s[k])>=48) and (ord(s[k])<=57) then
                                begin
                                     num:=ord(s[k])-48;
                                     s1:=s1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum+s1;
                       end
                       else if (cntr>1) and (chr='-') then
                       begin
                            s1:=0;
                            for k:=j1+1 to length(s) do
                            begin
                                if (ord(s[k])>=48) and (ord(s[k])<=57) then
                                begin
                                     num:=ord(s[k])-48;
                                     s1:=s1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum-s1;
                       end
                       else if (cntr>1) and (chr='*') then
                       begin
                            s1:=0;
                            for k:=j1+1 to length(s) do
                            begin
                                if (ord(s[k])>=48) and (ord(s[k])<=57) then
                                begin
                                     num:=ord(s[k])-48;
                                     s1:=s1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum*s1;
                       end
                       else if (cntr>1) and (chr='/') then
                       begin
                            s1:=0;
                            for k:=j1+1 to length(s) do
                            begin
                                if (ord(s[k])>=48) and (ord(s[k])<=57) then
                                begin
                                     num:=ord(s[k])-48;
                                     s1:=s1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum/s1;
                       end;
                       i:=i+1;
     end;{while}
     gotoxy(20,12);
     write('                         ');
     gotoxy(20,12);
     write(sum:range1:range2);
end;
(*///////////////////////////////////*)
begin
     clrscr;
     for i:=10 to 70 do
     begin
          gotoxy(i,5);
          write('Í');
          gotoxy(i,40);
          write('Í');
     end;
     for i:=5 to 40 do
     begin
          gotoxy(10,i);
          write('º');
          gotoxy(70,i);
          write('º');
     end;
     gotoxy(10,5);
     write('É');
     gotoxy(70,5);
     write('»');
     gotoxy(10,40);
     write('È');
     gotoxy(70,40);
     write('¼');
     gotoxy(35,6);
     write('Calculator');
     gotoxy(15,10);
     write('Input: ');
     gotoxy(15,12);
     write('Sum: ');
     gotoxy(15,14);
     write('Enter number of function: ');
     gotoxy(15,16);
     write('1.Sin(x)');
     gotoxy(15,17);
     write('2.cos(x)');
     gotoxy(15,18);
     write('3.Tan(x)');
     gotoxy(15,19);
     write('4.Cot(x)');
     gotoxy(15,20);
     write('5.Arcsin(x)');
     gotoxy(15,21);
     write('6.Arccos(x)');
     gotoxy(15,22);
     write('7.Arctan(x)');
     gotoxy(15,23);
     write('8.Arccot(x)');
     gotoxy(15,24);
     write('9.Round(x)');
     gotoxy(15,25);
     write('10.Abs(x)');
     gotoxy(15,26);
     write('11.Sqr(x)');
     gotoxy(15,27);
     write('12.Sqrt(x)');
     gotoxy(15,28);
     write('13.Ln(x)');
     gotoxy(15,29);
     write('14.Exp(x)');
     gotoxy(15,30);
     write('15.Enter range1 & range2: ');
     gotoxy(15,32);
     write('Range1=');
     gotoxy(15,33);
     write('Range2=');
     gotoxy(15,35);
     write('16.Input');
     gotoxy(15,36);
     write('17.Exit');
     while ord(chr)<>27 do
     begin
     gotoxy(40,14);
     write('                              ');
     gotoxy(40,14);
     readln(s);
     val(s,n,e);
     if n=1 then
        begin
             sum:=sin(sum*pi/180);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=2 then
        begin
             sum:=cos(sum*pi/180);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=3 then
        begin
             sum:=(sin(sum*pi/180))/(cos(sum*pi/180));
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=4 then
        begin
             sum:=(cos(sum*pi/180))/(sin(sum*pi/180));
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=5 then
        begin
             sum:=1/sin(sum*pi/180);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=6 then
        begin
             sum:=1/cos(sum*pi/180);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=7 then
        begin
             sum:=arctan(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=8 then
        begin
             sum:=1/arctan(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=9 then
        begin
             sum:=round(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=10 then
        begin
             sum:=abs(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=11 then
        begin
             sum:=sqr(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=12 then
        begin
             sum:=sqrt(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=13 then
        begin
             sum:=ln(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=14 then
        begin
             sum:=exp(sum);
             gotoxy(20,12);
             write('                               ');
             gotoxy(20,12);
             write(sum:range1:range2);
        end
        else if n=15 then
        begin
             gotoxy(40,30);
             readln(range1,range2);
             gotoxy(23,32);
             write(Range1);
             gotoxy(23,33);
             write(Range2);
        end
        else if n=16 then
             input
        else if n=17 then
        exit;
     chr:=readkey;
     end;{while}
end.