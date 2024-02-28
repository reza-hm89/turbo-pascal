uses crt;
var  i,j,j1,k,x,z:word;
     s:string;
begin
     clrscr;
     write('Enter a statement: ');
     readln(s);
     for i:=1 to length(s) do
     begin
          if (i=1) and (s[i]<>' ') and (s[i+1]=' ') then
             j:=j+1
          else if (i=length(s)) and (s[i]<>' ') and (s[i-1]=' ') then
             j:=j+1
          else if (s[i]<>' ') and (s[i+1]=' ') and (s[i-1]=' ') then
               j:=j+1;
          if (i=1) and (s[i]<>' ') and (s[i+1]<>' ') and (s[i+2]=' ') then
             k:=k+1
          else if (i=length(s)) and (s[i]<>' ') and (s[i-1]<>' ') and (s[i-2]=' ') then
             k:=k+1
          else if (s[i]<>' ') and (s[i+1]<>' ') and (s[i-1]=' ') and (s[i+2]=' ') then
               k:=k+1;
     end;
     for i:=1 to length(s) do
     begin
          j1:=i;
          while (s[j1]<>' ') or (j1=length(s)) do
          begin
                x:=x+1;
                j1:=j1+1;
          end;
          if x=3 then
             z:=z+1;
          if s[j1]=' ' then
             x:=0;
     end;
     write(j,k,z);
     readln
end.