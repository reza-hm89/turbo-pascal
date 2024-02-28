uses crt;
var
       xa,xb,xc,temp,x,i,j,k,number:integer;
       a:array [1..100] of integer;
       b:array [1..100] of integer;
       c:array [1..100] of integer;
       d:array [1..200] of integer;
       e:array [1..100] of integer;
       f:array [1..200] of integer;
       g:array [1..100] of integer;
       cntr:char;
begin
     clrscr;
     for i:=1 to 100 do
         a[i]:=0;
     writeln('tedad azaye A=');
     readln(xa);
     writeln('azaye A ra vared konid, tekrari nabashand!');
     readln(a[1]);
     k:=1;

     while k<xa do
     begin
          readln(temp);
          for i:=1 to k do
               if a[i]<>temp then
                  j:=j+1;
          if j=k then
            begin
                   k:=k+1;
                   a[k]:=temp;
                   j:=0;
            end
          else
             begin
             writeln('adad tekrari bood');
             j:=0;
             end;
     end;
     write('a={');
     for i:=1 to xa do
         write(a[i]:3);
     write('}':3);
     readln;
     for i:=1 to 100 do
         b[i]:=0;
     writeln('tedad ozvhaye B: ');
     readln(xb);
     writeln('azaye B ra vared konid,tekrari nabashand!');
     readln(b[1]);
     k:=1;
     while k<xb do
     begin
          readln(temp);
          for i:=1 to k do
               if b[i]<>temp then
                  j:=j+1;
          if j=k then
             begin
                   k:=k+1;
                   b[k]:=temp;
                   j:=0;
             end
          else
          begin
             writeln('adad tekrari bood');
             j:=0;
          end;
     end;
     write('b={');
     for i:=1 to xb do
     write(b[i]:3);
     write('}':3);
     readln;
     writeln('shomare rabete ra vared konid');
     writeln('1.Eshterak');
     writeln('2.(A U B)');
     writeln('3.(A-B)');
     writeln('4.(AxB)');
     writeln('5.tafazole motagharen');
     writeln('6.ozviate 1 adad');
     writeln('7.jozeiate 1 majmoe');
     writeln('8.(A=B)');
(*--------------------------------------------------------------------------*)
     readln(number);
       if number=1 then
    begin
            for i:=1 to 100 do
              c[i]:=0;
            x:=0;
            for i:=1 to xa do
                for j:=1 to xb do
                 if a[i]=b[j] then
                    begin
                      x:=x+1;
                      c[x]:=a[i];
                    end;
            write('eshterak={');
            for i:=1 to x do
              write(c[i]:4);
            writeln('   }');
            readln;
    end
(*-------------------------------------------------------------------------*)
    else if Number=2 then
    begin
        for i:=1 to 200 do
          d[i]:=0;
        x:=0;
        for i:=1 to xa do
           begin
             x:=x+1;
             d[x]:=a[i];
           end;
        k:=0;
        for i:=1 to xb do
           begin
             for j:=1 to x do
                if b[i]<>d[j] then
                k:=k+1;
             if k=x then
               begin
                  x:=x+1;
                  d[x]:=b[i];
                  k:=0;
               end
             else k:=0;
           end;
        write('A U B={');
        for i:=1 to x do
        write(d[i]:3);
        writeln('  }');
        readln;
    end
(*------------------------------------------------------------------------*)
    else if number=3 then
    begin
       for i:=1 to 100 do
            e[i]:=0;
       k:=0;
       x:=0;
       for i:=1 to xa do
          begin
               for j:=1 to xb do
                  if a[i]<>b[j] then
                      k:=k+1;
               if k=xb then
                  begin
                     x:=x+1;
                     e[x]:=a[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('A-B={');
       for i:=1 to x do
       write(e[i]:4);
       writeln('}':4);
       readln;
    end
(*------------------------------------------------------------------------*)
    else if number=4 then
    begin
       write('AxB={');
       for i:=1 to xa do
          for j:=1 to xb do
             write('(':3,a[i],',',b[j],')');
       write('}':3);
       readln;
       end
(*------------------------------------------------------------------------*)
    else if number=5 then
    begin
       for i:=1 to 100 do
          f[i]:=0;
       x:=0;
       k:=0;
       for i:=1 to xa do
          begin
               for j:=1 to xb do
                  if a[i]<>b[j] then
                      k:=k+1;
               if k=xb then
                  begin
                     x:=x+1;
                     f[x]:=a[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       for i:=1 to xb do
          begin
               for j:=1 to xa do
                  if b[i]<>a[j] then
                      k:=k+1;
               if k=xa then
                  begin
                     x:=x+1;
                     f[x]:=b[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('A delta B={');
       for i:=1 to x do
          write(f[i]:4);
       writeln('   }');
       readln;
    end
(*-------------------------------------------------------------------------*)
    else if number=6 then
    begin
          k:=0;
          writeln('adad ra vared konid');
          readln(temp);
          for i:=1 to xa do
             if temp<>a[i] then
               k:=k+1;
          if k=xa then
          writeln('adad ozve majmoe A nist')
          else writeln('adad ozve majmoe A hast');
          k:=0;
          for i:=1 to xb do
             if temp<>b[i] then
               k:=k+1;
          if k=xb then
               writeln('adad ozve majmoe B nist')
          else writeln('adad ozve majmoe B hast');
          readln;
     end
(*-------------------------------------------------------------------------*)
     else if number=7 then
     begin
        writeln('tedad ozvhaye mojmueye C:');
        readln(xc);
        writeln('azaye C ra vared konid,tekrari nabashand!!!');
        readln(g[1]);
        k:=1;
        while k<xc do
          begin
             writeln('adade badi ra vared konid');
             readln(temp);
             for i:=1 to k do
               if g[i]<>temp then
                  j:=j+1;
             if j=k then
                begin
                   k:=k+1;
                   g[k]:=temp;
                   j:=0;
                end
             else
             begin
             writeln('adad tekrari bood');
             j:=0;
             end;
          end;
        write('g={');
        for i:=1 to xc do
           write(g[i]:3);
        writeln('}':3);
        readln;
        i:=1;
        cntr:='y';
        x:=0;
        while (i<=xc) and (cntr='y') do
          begin
             for j:=1 to xa do
                if g[i]=a[j] then
                   x:=x+1;
             if x=1 then
               begin
                i:=i+1;
                cntr:='y';
                x:=0;
               end
             else cntr:='n';
          end;
        if cntr='y' then
           writeln('mojmoe C zirmajmoeye majmoeye A hast')
        else
           writeln('mojmoe C zirmajmoeye majmoeye A nist');
        x:=0;
        i:=1;
        cntr:='y';
        while (i<=xc) and (cntr='y') do
          begin
            for j:=1 to xb do
               if g[i]=b[j] then
                  x:=x+1;
            if x=1 then
                begin
                i:=i+1;
                x:=0;
                cntr:='y'
                end
            else cntr:='n';
          end;
        if cntr='y' then
            writeln('mojmoe C zirmajmoeye majmoeye B hast')
        else
            writeln('mojmoe C zirmajmoeye majmoeye B nist');
        readln;
     end
(*-------------------------------------------------------------------------*)
     else if number=8 then
     begin
             k:=0;
             x:=0;
             for i:=1 to xb do
                 for j:=1 to xa do
                     if b[i]=a[j] then
                        x:=x+1;
            for i:=1 to xa do
                 for j:=1 to xb do
                     if b[j]=a[i] then
                        k:=k+1;
            if (x=xb) and (k=xa) then
                writeln('A=B hast')
             else
                writeln('A=B nist');
           readln;
     end
     else
     begin
     writeln('Error!! shomare Eshtebah ast');
     readln;
     end;
end.






















