uses crt;
var     i,i1,j1,j,k1,x,y,sw,x1,y1,r:word;
        sum,sum1,sum2:real;
        ch,ch1:char;
        num,cntr,index,pbaz,pbaste:integer;
        a:array [1..17] of string;
        s:string;
begin
     clrscr;
                       a[1]:='+';a[2]:='-';a[3]:='*';a[4]:='/';a[5]:='(';a[6]:=')';
                       a[7]:='0';a[8]:='1';a[9]:='2';a[10]:='3';a[11]:='4';a[12]:='5';
                       a[13]:='6';a[14]:='7';a[15]:='8';a[16]:='9';a[17]:=' ';
                       i:=1;
                       repeat
                       clrscr;
                       write('enter: ');
                       readln(s);
                       index:=1;
                       pbaz:=0;
                       pbaste:=0;
                       i:=1;
                       while i<=length(s) do
                       begin
                            for j:=1 to 17 do
                                if s[i]=a[j] then
                                   break;
                            if j=17 then
                            begin
                                 index:=0;
                                 break;
                            end;
                            if s[i]='(' then
                               pbaz:=pbaz+1;
                            if s[i]=')' then
                               pbaste:=pbaste+1;

                       if  (s[1]='*') or (s[1]='/') or (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
     if(s[i-1]='+')or(s[i-1]='-')or(s[i-1]='*')or(s[i-1]='/')or(s[i+1]='+')or(s[i+1]='-')or(s[i+1]='*')or(s[i+1]='/')then
                       index:=0;
                       i:=i+1;
                       end;
                       sum:=pbaz-pbaste;
                       if (index=0) or (sum<>0) then
                       begin
                            write('Syntax error!');
                            readkey;
                       end
                       else
                           index:=2;
                       until index=2;
                       i1:=1;
                       i:=1;
                       cntr:=0;
                       while (i<=length(s)) do
                       begin
                       if  (s[i]='+') or (s[i]='-') or (s[i]='*') or (s[i]='/') then
                            begin
                                 cntr:=cntr+1;
                                 ch:=s[i];
                                 j1:=i;
                            end
                            else ch:=' ';
                       if (cntr=1) and (ch='+') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else
                                    break;
                            end;
                            sum2:=sum2+sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='-') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else
                                    break;
                            end;
                            sum2:=sum2-sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='*') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else
                                    break;
                            end;
                            sum2:=sum2*sum1;
                            sum:=sum2
                       end
                       else if (cntr=1) and (ch='/') then
                       begin
                            i1:=1;
                            sum1:=0;
                            while (i1<j1) do
                            begin
                            if (ord(s[i1])>=48) and (ord(s[i1])<=57) then
                            begin
                                num:=ord(s[i1])-48;
                                sum1:=sum1*10+num;
                            end;
                            i1:=i1+1;
                            end;
                            sum2:=sum1;
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else
                                    break;
                            end;
                            sum2:=sum2/sum1;
                            sum:=sum2
                       end;
                       if (cntr>1) and (ch='+') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum+sum1;
                       end
                       else if (cntr>1) and (ch='-') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum-sum1;
                       end
                       else if (cntr>1) and (ch='*') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum*sum1;
                       end
                       else if (cntr>1) and (ch='/') then
                       begin
                            sum1:=0;
                            for k1:=j1+1 to length(s) do
                            begin
                                if (ord(s[k1])>=48) and (ord(s[k1])<=57) then
                                begin
                                     num:=ord(s[k1])-48;
                                     sum1:=sum1*10+num;
                                end
                                else  break;
                            end;
                            sum:=sum/sum1;
                       end;
                       i:=i+1;
     end;{while}
                       writeln(sum:2:2);
                       readln;
              end.