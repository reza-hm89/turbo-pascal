uses crt;
var  i,j,index:word;
     s1,s2,s3:string;
begin
     clrscr;
     write('Enter  s1: ');
     readln(s1);
     write('Enter  s2: ');
     readln(s2);
     write('Enter  s3: ');
     readln(s3);
     for i:=1 to length(s1) do
     begin
          if (s1[i]=s2[1]) and ((s1[i-1]=' ') or (i=1)) then
             if (s1[i+length(s2)]=' ') or (i+length(s2)-1=length(s1)) then
             begin
                  delete(s1,i,length(s2));
                  insert(s3,s1,i);
             end;
     end;
     for i:=1 to length(s1) do
         write(s1[i]);
     readln
end.