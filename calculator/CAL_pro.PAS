uses crt;
type
  variable=record
    name:string;
    value:string;
  end;

var
  Error:String;
  vars:array [1..100] of variable;
  prc:integer;
  vcount:integer;


{---------------------------------------------------------------------------}

function isnum(c:Char):boolean;
begin
  if (c>='0') and (c<='9') then
    isnum:=true
  else
    isnum:=false;
end;

{---------------------------------------------------------------------------}

function isalpha(c:char):boolean;
begin
  if ((c>='a') and (c<='z')) or ((c>='A') and (c<='Z')) then
    isalpha:=true
  else
    isalpha:=false;
end;

{---------------------------------------------------------------------------}

function upper(s:string):string;
var
  i:integer;
begin
  for i:=1 to length(s) do
    if (s[i]>='a') and (s[i]<='z') then
      s[i]:=chr(ord(s[i])-32);
  upper:=s;
end;

{---------------------------------------------------------------------------}

function strtoreal(str:string):real;
var
  i,p,s:integer;
  ans,m:real;
begin
  ans:=0;  s:=1;
  if str='' then
    Error:='Invalid Input';
  p:=pos('.',str);
  if p=0 then p:=length(str)+1;
  m:=1;
  for i:=p-1 downto 1 do
    if isnum(str[i]) then
    begin
      ans:=ans+m*(ord(str[i])-48);
      m:=m*10;
    end
    else if (i=1) and (str[i]='-') then
      s:=-1
    else Error:='Invalid Integer';

  m:=0.1;
  for i:=p+1 to length(str) do
    if isnum(str[i]) then
    begin
      ans:=ans+m*(ord(str[i])-48);
      m:=m/10;
    end
    else Error:='Invalid Integer';
  strtoreal:=ans*s;
end;

{---------------------------------------------------------------------------}

function realtostr(num:real):string;
var
  ans:string;
  n:real;
  s,i,k:integer;
begin
   ans:='.';
  if num<0 then s:=-1 else s:=1;
  num:=abs(num);
  n:=trunc(num);
  while n>=1 do
  begin
    ans:=chr((trunc(n) mod 10)+48)+ans;
    if ans[1]<'0' then ans[1]:='0';
    n:=n/10;
  end;
  n:=num;
  if ans='.' then ans:='0.';
  for i:=1 to prc do
  begin
    n:=n*10;
    ans:=ans+chr((trunc(n) mod 10)+48);
    if ans[length(ans)]<'0' then ans[length(ans)]:='0';
  end;
  if s=-1 then ans:='-'+ans;
  realtostr:=ans;
end;

{---------------------------------------------------------------------------}

function evalFunc(str,func:string):string;
var
  f,ans:real;
begin
  f:=strtoreal(str);
  if      upper(func)='ROUND' then ans:=round(f)
  else if upper(func)='ABS' then ans:=abs(f)
  else if upper(func)='SQR' then ans:=sqr(f)
  else if upper(func)='SIN' then ans:=sin(f)
  else if upper(func)='COS' then ans:=cos(f)
  else if upper(func)='TAN' then ans:=sin(f)/cos(f)
  else if upper(func)='COT' then ans:=cos(f)/sin(f)
  else if upper(func)='ARCTAN' then ans:=arctan(f)
  else if upper(func)='ARCCOT' then ans:=1/arctan(f)


  else if upper(func)='SQRT' then
    if f>=0 then ans:=sqrt(f)
    else Error:='Invalid SQRT number'
  else if upper(func)='ARCSIN' then
    if (f<=1)and(f>=-1) then ans:=1/sin(f)
    else Error:='Invalid Arcsin number'
  else if upper(func)='ARCCOS' then
    if (f<=1)and(f>=-1) then ans:=1/cos(f)
    else Error:='Invalid Arccos number'
  else if upper(func)='LN' then
    if f>0 then ans:=ln(f)
    else Error:='Invalid LN number'



  else if upper(func)='EXP' then ans:=exp(f)
  else if upper(func)='RANDOM' then ans:=random(trunc(f))
  else if upper(func)='ABS' then ans:=abs(f)
  else if func='' then ans:=strtoreal(str)
  else Error:='Unknown Function: '+chr(39)+func+chr(39);
  evalFunc:=realtostr(ans);
end;

{---------------------------------------------------------------------------}

function eval1(n1,n2:string;op:char):string;
var
  f1,f2:real;
begin
  f1:=strtoreal(n1);
  f2:=strtoreal(n2);
  case op of
    '*': eval1:=realtostr(f1*f2);
    '/': eval1:=realtostr(f1/f2);
    '+': eval1:=realtostr(f1+f2);
    '-': eval1:=realtostr(f1-f2);
   { '^': eval1:=realtostr(power(f1,f2));    }
    else Error:='Undefined Symbol: '+chr(39)+op+chr(39);
  end;
end;

{---------------------------------------------------------------------------}

function eval2(str:string; ops:string):string;
var
  i,s,e,p:integer;
  n1,n2,t:string;
  f:boolean;
begin
  n1:='';n2:='';
  f:=false;
  p:=0; s:=0; e:=0;
  for i:=2 to length(str) do
    if (str[i]=ops[1])or(str[i]=ops[2]) then begin
      p:=i;
      break;
    end;

  if p=0 then begin
    eval2:=str;
    exit;
  end;

  s:=p;
  for i:=p-1 downto 1 do
    if isnum(str[i]) or (str[i]='.') or (i=1) then
    begin
      n1:=str[i]+n1;
      dec(s);
    end
    else
      break;

  e:=p;
  for i:=p+1 to length(str) do
    if isnum(str[i]) or (str[i]='.') or ((i=p+1)and(str[i]='-')) then
    begin
      n2:=n2+str[i];
      inc(e);
    end
    else
      break;


  t:=eval1(n1,n2,str[p]);
  delete(str,s,e-s+1);
  insert(t,str,s);
  eval2:=eval2(str,ops);
end;

{---------------------------------------------------------------------------}

function eval3(str:string):string;
var
  i,p:integer;
begin
  for i:=1 to vcount do
    while true do
    begin
      p:=pos(vars[i].name,str);
      if p=0 then break;
      delete(str,p,length(vars[i].name));
      insert(vars[i].value,str,p);
    end;

  eval3:=eval2(eval2(eval2(str,'^^'),'*/'),'+-');

 { for i:=1 to length(eval3(str)) do
    if not (isnum(eval3([i]) or (eval3[i]='.') or ((i=1)and(eval3[i]='-'))) then
      Error:='Invalid Input';   }
end;

{---------------------------------------------------------------------------}

function eval4(str:string):string;
var
  i,s,e,c:integer;
  sub,t,func:string;
begin
  s:=pos('(',str);
  if s=0 then begin
    eval4:=eval3(str);
    exit;
  end;

  func:='';
  for i:=s-1 downto 1 do
    if isalpha(str[i]) then
      func:=str[i]+func
    else
      break;

  c:=0;
  for i:=s to length(str) do
  begin
    if str[i]='(' then inc(c);
    if str[i]=')' then dec(c);
    if c=0 then
    begin
      e:=i;
      break;
    end;
  end;
  sub:='';
  for i:=s+1 to e-1 do
    sub:=sub+str[i];
  delete(str,s-length(func),e-s+1+length(func));
  insert(evalFunc(eval4(sub),func),str,s-length(func));
  eval4:=eval4(str);
end;

{---------------------------------------------------------------------------}

function varid(name:string):integer;
var
  i:integer;
begin
  varid:=-1;
  for i:=1 to vcount do
    if (vars[i].name=name) then
    begin
      varid:=i;
      break;
    end;
end;

{---------------------------------------------------------------------------}

procedure newvar(name,value:string);
var
  i,v:integer;
begin
  for i:=1 to length(name) do
    if not isalpha(name[i]) then
    begin
      Error:='Variable names must be only alpha characters';
      exit;
    end;
  v:=varid(name);
  if v=-1 then
  begin
    inc(vcount);
    vars[vcount].name:=name;
    vars[vcount].value:=value;
  end
  else
    vars[v].value:=value;
end;

{---------------------------------------------------------------------------}

procedure removevar(vn:string);
var
  i:integer;
  j:integer;
begin
  for i:=1 to vcount do
    if vars[i].name=vn then
    begin
      for j:=i+1 to vcount do
        vars[j-1]:=vars[j];
      dec(vcount);
    end;
end;

{---------------------------------------------------------------------------}

function processLine(str:string):integer;
var
  vn,val:string;
  p,i:integer;
begin
    if upper(str)='EXIT' then
      exit;
    if upper(str)='CLEAR' then
    begin
      clrscr;
      exit;
    end;

    p:=pos(':=',str);
    vn:='';
    val:='';
    Error:='';
    for i:=1 to p-1 do
      vn:=vn+str[i];

    if p<>0 then
      delete(str,1,p+1);
    val:=eval4(str);
    if Error<>'' then
    begin
      writeln(Error);
      exit;
    end;
    if p=0 then
      writeln(val)
    else
      newvar(vn,val);
end;

{---------------------------------------------------------------------------}
procedure Calculation;
var
  l1,l2,str:string;
  p:integer;
begin
  l1:='';
  clrscr;
  while true do
  begin
    p:=pos(';',l1);
    if p=0 then
    begin
      readln(l2);
      l1:=l1+l2;
      continue;
    end;
    str:=l1;
    delete(str,p,length(str)-p+1);
    delete(l1,1,p);
    if processLine(str)=-1 then exit;
  end;
end;

{---------------------------------------------------------------------------}

procedure Settings;
var
  i:integer;
  n,vn:string;
begin
  clrscr;
  while true do
  begin
    writeln('----------------------------------------------------');
    writeln('1. Show Variables');
    writeln('2. Remove a Variable');
    writeln('3. Edit Precision');
    writeln('4. Return to main menu');
    readln(n);
    clrscr;
    if n='1' then
      for i:=1 to vcount do
        writeln(i,') ',vars[i].name,' = ',vars[i].value);

    if n='2' then
    begin
      write('Enter varname to delete: ');
      readln(vn);
      removevar(vn);
    end;

    if n='3' then
    begin
      writeln('Current Precision = ',prc);
      write  ('Enter new prc: ');
      readln(prc);
    end;

    if n='4' then
      exit;
  end;
end;

{---------------------------------------------------------------------------}

var
  n:string;
begin
  prc:=5;
  while true do
  begin
    clrscr;
    writeln('1. Start Calculation');
    writeln('2. Settings');
    writeln('3. Exit');
    readln(n);
    if n='1' then Calculation;
    if n='2' then Settings;
    if n='3' then exit;
  end;
end.
