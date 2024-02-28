uses crt;
var  n,cntr,word,m,i,j,x,k:longint;
     fact,sum,p:real;
     a:array[1..20] of integer;
begin
        clrscr;
        writeln('1=barrasi adade aval');
        writeln;
        writeln('2=factorial');
        writeln;
        writeln('3=1^1+2^2+3^3+...+n^n');
        writeln;
        writeln('4=khoruji moghabel: n=23   * *    * * *');
        writeln;
        writeln('adade morede nazare rabete ra vared konid:');
        readln (word);
   if word=1 then
begin
        writeln('barrasi adade aval:');
        writeln('enter number:');
        read(n);
        if n<1 then
        begin
               writeln('adad eshtebeh vared shode(N>0)');
               readln(n);
        end;
        i:=2;
        p:=1;
        while (i<=n/2) and (p<>0) do
        begin;
        p:=n mod i;
        i:=i+1;
        end;
        if (p<>0) then writeln('adad aval ast')
        else           writeln('adad aval nist');
        readln;
        readln;
end
else   if word=3 then
begin
     sum:=0;
     writeln('1^1+2^2+...+n^n');
     write('Enter number of statement:');
     readln(n);
     while n<>0 do
     begin
          cntr:=1;
          p:=1;
          while cntr<=n do
          begin
               p:=p*n;
               cntr:=cntr+1;
          end;
          sum:=sum+p;
          n:=n-1;
     end;
     write(sum:8:0);
     readln;
end
   else if word=2 then
begin
      writeln('factorial');
      write('Enter number:');
      readln(N);
      fact:=1;
      cntr:=1;
      while cntr<=n do
      begin
           fact:=fact*cntr;
           cntr:=cntr+1;
      end;
           writeln(fact:9:2);
           readln;

end
else if word=4 then
begin
     write('Enter nubmer:');
     readln(n);
     i:=1;
     while n<>0 do
     begin
           m:= n mod 10;
           a[i]:=m;
           n:= n div 10;
           i:=i+1;
     end;
     for j:=i-1 downto 1 do
     begin
           x:=a[j];
           for k:=1 to x do
               write(' * ');
           writeln;
     end;
     readln;
end
else
begin    writeln('adad eshtebah vared shode!');
          readln;
end;
end.