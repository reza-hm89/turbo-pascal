uses crt;
var
i,j,s,z,g,ans,num,cntr,fact,p,sum:integer;
list:array[1..20]of integer;
begin
 clrscr;
  repeat
  textcolor(20);
     writeln('1:baraye barrasie aval bodan ya nabodan press "1"');
     writeln;
     writeln('2:baraye mohasebeye faktoriel press "2"');
     writeln;
     writeln('3:baraye chape setare ha press "3"');
     writeln;
     writeln('4:baraye mohasebeye serie n be tavane n press "4"');
     writeln;
     writeln('5:baraye khareg shodan az barname press "5"');
     writeln;
     textcolor(12);
     writeln('**baraye anjame barname lotfan yek adad beine"1" ta "5" vared konid**');
     readln(ans);
 if (ans=1) then
   begin
    clrscr;
       textcolor(10);
       writeln('**barrasie adade aval**');
       writeln;
       writeln('enter num=');
       read(num);
        if num<1 then
          begin
               writeln('**lotfan num>1 bashad**');
               readln(num);
           end;
          i:=2;
          p:=1;
       while (i<=num/2) and (z<>0) do
       begin
          z:=num mod i;
          i:=i+1;
        end;
      if (z<>0) then
         writeln('**adade morede nazar avalast**')
         else
             writeln('**adade morede nazar aval nist**');
             readln;
             readln;
         end
         else
 if (ans=2) then
   begin
    clrscr;
     textcolor(10);
     writeln('**mohasebsye faktoriel**');
     writeln;
     writeln('enter num=');
     readln(num);
     fact:=1;
     cntr:=1;
   while (cntr<=num) do
     begin
          fact:=fact*cntr;
          cntr:=cntr+1;
     end;
     writeln('faktoriel=',fact);
     readln;
   end
    else
 if (ans=3)  then
   begin
    clrscr;
     textcolor(10);
     writeln('** chape setare ha**');
     writeln;
     writeln('enter num=');
     readln(num);
     i:=1;
    while (num<>0) do
      begin
          p:=num mod 10;
          list[i]:=p;
          num:=num div 10;
          i:=i+1;
       end;
     for j:=i-1 downto 1 do
       begin
        g:=list[j];
          for s:=1 to g do
             write  ('*');
             writeln;
         end;
         readln;
   end{end of if}
   else
 if (ans=4) then
  begin
   clrscr;
    textcolor(10);
     writeln('**mohasebeye serie n be tavane n**');
     writeln;
     writeln('enter num=');
     readln(num);
     while (num<>0) do
      begin
       cntr:=1;
       p:=1;
          while (cntr<=num) do
           begin
            p:=p*num;
            cntr:=cntr+1;
            end;
             sum:=sum+p;
             num:=num-1;
        end;{end of while}
        write('hasele serie ',num,'be tavane ',num,'=',sum);
        readln;
  end{end of if}
until(ans=5);
end.











