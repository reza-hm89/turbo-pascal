USES CRT;
var
   i,j,num,last,last1,last2,n1,n3,z,n2,cntr,P,d,g,f:integer;
   found:boolean;
   list1:array [1..100] of integer;   {majmooe 1}
   list2:array [1..100] of integer;   {majmooe 2}
   list3:array [1..200] of integer;   {ejtema}
   list4:array [1..100] of integer;   {eshterak}
   list5:array [1..100] of integer;   {a-b}
   list6:array [1..200] of integer;   {tafazole motagharen}
   list7:array [1..200] of integer;   {jozeeyat}
   list8:array [1..200] of integer;   {jozeeyat}
begin
     textcolor(9);
     clrscr;
     {*********************************************************************}
     {list 1}
     last1:=0;
     writeln('please enter tedad ozv haye majmooe A ra: ');
     readln(n1);
     writeln('please enter ozv haye majmooe A ra: ');
     cntr:=0;
     for i:=1 to n1 do
     begin
          found:=false;
          readln(num);
          j:=1;
          while (j<=last1) and (not found) do
          begin
               if (list1[j]=num) then
               begin
                  found:=true;
                  cntr:=cntr+1;
                  end
                  else  j:=j+1;
          end;
          if not found then
          begin
               last1:=last1+1;
               list1[last1]:=num;
          end;
     end;
     write('A: {');
     for i:=1 to last1 do
     begin
     write('  ',list1[i]);
     end;
     write('  }');
     n1:=n1-cntr;
     writeln;writeln;
     cntr:=0;
     writeln('please enter tedad ozv haye majmooe B ra:');
     readln(n2);
     {*********************************************************************}
     {list 2}
     last2:=0;
     writeln('please enter ozv haye majmooe B ra: ');
     for i:=1 to n2 do
     begin
          found:=false;
          readln(num);
          j:=1;
          while (j<=last2) and (not found) do
          begin
               if(list2[j]=num) then
               begin
               cntr:=cntr+1;
               found:=true ;
               end
               else j:=j+1;
          end;
          if not found then
          begin
               last2:=last2+1;
               list2[last2]:=num;
          end;
     end;
     n2:=n2-cntr;
     write('B: {');
     for i:=1 to last2 do
     begin
     write('  ',list2[i]);
     end;
     write('  }');
     writeln;
     {*********************************************************************}
     clrscr;
     {ejtema}
     FOR i:=1 to n1 do
     begin
          list3[i]:=list1[i];
     end;
     z:=n1+1;
     for i:=1 to n2 do
     begin
          list3[z]:=list2[i];
          z:=z+1;
     end;
     cntr:=0;
     last:=0;
     for i:=1 to z do
     begin
          found:=false;
          j:=1;
          while (j<=last) and (not found) do
          begin
               if (list3[j]=list3[i]) then
               begin
                  found:=true;
                  cntr:=cntr+1;
                  end
                  else  j:=j+1;
          end;
          if not found then
          begin
               last:=last+1;
               list3[last]:=list3[i];
          end;
     end;
     z:=z-cntr;
     write('A U B: {');
     for i:=1 to z-1 do
     begin
     write('  ',list3[i]);
     end;
     write('  }');
     writeln;
     writeln;
    {***********************************************************************}
     {eshterak}
     p:=1;
     for i:=1 to n1 do
     begin
          for j:=1 to n2 do
          begin
               if (list1[i]=list2[j]) then
               begin
                    list4[p]:=list1[i];
                    p:=p+1;
               end;
          end;
     end;
     write('A eshterak B={');
     for i:=1 to p-1 do
     begin
          write('  ',list4[i]);
     end;
     write(' }');
     writeln;
     writeln;
     {********************************************************************}
     {a_b}
     g:=1;
     for i:=1 to n1 do
     begin
          found:=false;
          j:=1;
          while (not found) and (j<=n2) do
          begin
               if list1[i]=list2[j] then
               found:=true
               else j:=j+1;
          end;
          if not found then
          begin
               list5[g]:=list1[i];
               g:=g+1;
          end;
     end;
     write('A-B ={');
     for i:=1 to g-1 do
     write('  ',list5[i]);
     write(' }');
     writeln;
     writeln;
     {********************************************************************}
     {a delta b}
     g:=1;
     for i:=1 to (z-1)  do {liste ejtema daraye z-1 ozv bood}
     begin
          found:=false;
          j:=1;
          while (not found) and (j<p-1) do {liste eshterak daraye p-1 ozv bood}
         begin
              if list3[i]= list4[j] then
               found:=true
              else
                  j:=j+1;
         end;
         if not found then
         begin
              list6[g]:=list3[i];
              g:=g+1;
         end;
     end;
     write('A delta B={');
     for i:=1 to g-1 do
     begin
         write('  ',list6[i]);
     end;
     write(' }');
     writeln;writeln;
     {******************************************************************}
     write('A X B: {');
     for j:=1 to n1 do
     begin
          for i:=1 to n2 do
          BEGIN
               write('(',list1[j],',',list2[i],'),');
          end;
     end;
     write('}');
     writeln;writeln;
     {******************************************************************}
     {ozviat}
     write('please enter adade morede nazar baraye ozviat=  ');
     readln(num);
     writeln;
     found:=false;
     for i:=1 to n1 do
     begin
      if num=list1[i] then
      found:=true;
     end;
      if not found then
      writeln('***adade vared shode dar majmooe A nist***')
      else
          writeln('***adade vared shode dar majmooe A hast***');
      writeln;
      found:=false;
      for i:=1 to n2 do
      begin
           if num=list2[i] then
           found:=true;
      end;
      if not found then
      writeln('***adade vared shode dar majmooe B nist***')
      else
          writeln('***adade vared shode dar majmooe B hast***');
      writeln;writeln;
     {******************************************************************}
     {jozeeyat}
     writeln('please enter tedad ozvhaye zir majmooeye morede nazar');
     readln(n3);
     writeln('please enter ozv haye zir majmooeye morede nazar');
     for i:=1 to n3 do
     begin
         readln(list7[i]);
     end;
     cntr:=0;  {hazfe tekrari ha}
     last:=0 ;
     for i:=1 to n3 do
     begin
          found:=false;
          j:=1;
          while (j<=last) and not found do
          begin
               if list7[j]=list7[i] then
               begin
                    found:=true;
                    cntr:=cntr+1;
               end
               else     j:=j+1;
          end;
          if not found then
          begin
               last:=last+1;
               list7[last]:=list7[i];
          end;
     end;
     n3:=n3-cntr;

     g:=1;
      for i:=1 to n3 do
      begin
           for j:=1 to n1 do
           begin
                if list7[i]=list1[j] then
                begin
                     list8[g]:=list7[i];
                     g:=g+1;
                end;
           end;
      end;
      if n3=g-1 then
      writeln('majmooeye vared shode zir majmooe A hast')
     else writeln('majmooeye vared shode zir majmooe A nist');
      writeln;
      g:=1;
      for i:=1 to n3 do
      begin
        for j:=1 to n2 do
        begin
             if list7[i]=list2[j] then
             begin
                  list8[g]:=list7[i];
                  g:=g+1;
             end;
         end;
       end;
     if n3=g-1 then
     writeln('majmooeye vared shode zir majmooe B hast')
     else  writeln('majmooeye vared shode zir majmooe B nist');
     {******************************************************************}
     writeln;writeln;writeln;
     writeln('writer:amin rahkan ');
     writeln('guidanced by: MR.shokrani and MR.alavifar');
     readln;
end.


