var
       bi,ai,ci,temp,x,i,j,k,request:integer;
       a:array[1..100]of integer;{majmoe a}
       b:array[1..100]of integer;{majmoe b}
       c:array[1..100]of integer;{eshterak}
       d:array[1..200]of integer;{ejtema}
       e:array[1..100]of integer;{tafazol}
       f:array[1..200]of integer;{tafazole motagharen}
       g: array[1..100]of integer;{majmoe c}
       ans3:char;
begin
     for i:=1 to 100 do
     a[i]:=0;
     writeln('tedad azaye a=?');
     readln(ai);
     writeln('azaye a ra be tartib vared konid gheire tekrari bashand');
     readln(a[1]);
     k:=1;
     while k<ai do
     begin
          writeln('ozve badi ra vared konid');
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
             writeln('ozv tekrari bood');
             j:=0;
          end;
     end;
     write('a={');
     for i:=1 to na do
     write(a[i]:3);
     write('}':3);
     readln;
     for i:=1 to 100 do
     b[i]:=0;
     writeln('tedad ozvhaye mojmueye b ra vared konid');
     readln(nb);
     writeln('azaye b ra be tartib vared konid gheire tekrari bashand');
     readln(b[1]);
     k:=1;
     while k<nb do
     begin
          writeln('ozve badi ra vared konid');
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
             writeln('ozv tekrari bood');
             j:=0;
          end;
     end;
     write('b={');
     for i:=1 to nb do
     write(b[i]:3);
     write('}':3);
     readln;
     writeln('shomare rabete ra vared konid');
     writeln('1.eshterak');
     writeln('2.ejtema');
     writeln('3.tafazol(a-b)');
     writeln('4.zarbe dekarti(axb)');
     writeln('5.tafazole motagharen(ejtema-eshterak)');
     writeln('6.taeene ozviate yek adad');
     writeln('7.taeene jozeiate yek majmoe');
     writeln('8.taeene tasavie majmoe haye a va b');
     readln(request);
       if request=1 then
    begin
            for i:=1 to 100 do
              c[i]:=0;
            x:=0;
            for i:=1 to na do
                for j:=1 to nb do
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
    else if request=2 then
    begin
        for i:=1 to 200 do
          d[i]:=0;
        x:=0;
        for i:=1 to na do
           begin
             x:=x+1;
             d[x]:=a[i];
           end;
        k:=0;
        for i:=1 to nb do
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
        write('ejtema={');
        for i:=1 to x do
        write(d[i]:3);
        writeln('  }');
        readln;
    end
    else if request=3 then
    begin
       for i:=1 to 100 do
            e[i]:=0;
       k:=0;
       x:=0;
       for i:=1 to na do
          begin
               for j:=1 to nb do
                  if a[i]<>b[j] then
                      k:=k+1;
               if k=nb then
                  begin
                     x:=x+1;
                     e[x]:=a[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('a-b={');
       for i:=1 to x do
       write(e[i]:4);
       writeln('}':4);
       readln;
    end
    else if request=4 then
    begin
       write('axb={');
       for i:=1 to na do
          for j:=1 to nb do
             write('(':3,a[i],',',b[j],')');
       write('}':3);
       readln;
       end
    else if request=5 then
    begin
       for i:=1 to 100 do
          f[i]:=0;
       x:=0;
       k:=0;
       for i:=1 to na do
          begin
               for j:=1 to nb do
                  if a[i]<>b[j] then
                      k:=k+1;
               if k=nb then
                  begin
                     x:=x+1;
                     f[x]:=a[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       for i:=1 to nb do
          begin
               for j:=1 to na do
                  if b[i]<>a[j] then
                      k:=k+1;
               if k=na then
                  begin
                     x:=x+1;
                     f[x]:=b[i];
                     k:=0;
                  end
               else
                  k:=0;
          end;
       write('a delta b={');
       for i:=1 to x do
          write(f[i]:4);
       writeln('   }');
       readln;
    end
    else if request=6 then
    begin
          k:=0;
          writeln('adad ra vared konid');
          readln(temp);
          for i:=1 to na do
             if temp<>a[i] then
               k:=k+1;
          if k=na then
          writeln('adad ozve majmoe a nist')
          else writeln('adad ozve mamoe a hast');
          k:=0;
          for i:=1 to nb do
             if temp<>b[i] then
               k:=k+1;
          if k=nb then
          writeln('adad ozve majmoe b nist')
          else writeln('adad ozve majmoe b hast');
          readln;
     end
     else if request=7 then
     begin
        writeln('tedad ozvhaye mojmueye c ra vared konid');
        readln(nc);
        writeln('azaye c ra be tartib vared konid gheire tekrari bashand');
        readln(g[1]);
        k:=1;
        while k<nc do
          begin
             writeln('ozve badi ra vared konid');
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
             writeln('ozv tekrari bood');
             j:=0;
             end;
          end;
        write('g={');
        for i:=1 to nc do
           write(g[i]:3);
        writeln('}':3);
        readln;
        i:=1;
        ans3:='y';
        x:=0;
        while (i<=nc) and (ans3='y') do
          begin
             for j:=1 to na do
                if g[i]=a[j] then
                   x:=x+1;
             if x=1 then
               begin
                i:=i+1;
                ans3:='y';
                x:=0;
               end
             else ans3:='n';
          end;
        if ans3='y' then
           writeln('mojmoe c zirmajmoeye majmoeye a hast')
        else
           writeln('mojmoe c zirmajmoeye majmoeye a nist');
        x:=0;
        i:=1;
        ans3:='y';
        while (i<=nc) and (ans3='y') do
          begin
            for j:=1 to nb do
               if g[i]=b[j] then
                  x:=x+1;
            if x=1 then
                begin
                i:=i+1;
                x:=0;
                ans3:='y'
                end
            else ans3:='n';
          end;
        if ans3='y' then
            writeln('mojmoe c zirmajmoeye majmoeye b hast')
        else
            writeln('mojmoe c zirmajmoeye majmoeye b nist');
        readln;
     end
     else if request=8 then{teene tasavie 2 majmoe}
     begin
             k:=0;
             x:=0;
             for i:=1 to nb do
                 for j:=1 to na do
                     if b[i]=a[j] then
                        x:=x+1;
            for i:=1 to na do
                 for j:=1 to nb do
                     if b[j]=a[i] then
                        k:=k+1;
            if (x=nb) and (k=na) then
                writeln('a=b hast')
             else
                writeln('a=b nist');
           readln;
     end
     else
     begin
     writeln('shomare rabete eshtebah ast');
     readln;
     end;
end.






















