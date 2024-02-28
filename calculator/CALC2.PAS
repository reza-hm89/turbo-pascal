program Calc;

const
  maxString = 80;
  bang = '!';
  dot = '.';
  minus = '-';
  parOpen = '(';
  parClose = ')';
  plus = '+';
  power = '^';
  slash = '/';
  space = ' ';
  star = '*';

var
  s : String;
  s2 : String;
  myVar: array[1..maxString] of real;
  i, len, width, dec,varCount : integer;
  t, nul, tab : char;
  sn, done : boolean;

procedure LowerCase (var s : String; len : integer);
var i : integer;
begin
  for i := 1 to len do
    if s[i] in ['A'..'Z'] then
      s[i] := chr(ord(s[i]) + 32)
end; {LowerCase}

function IsDigit (c : char) : boolean;
begin
  IsDigit := c in ['0'..'9', dot]
end; {IsDigit}

function ParseInt (var s : String; var i : integer) : integer;
var
  n, sign : integer;
begin
  while (s[i] = space) or (s[i] = tab) do i := i + 1;
  if (s[i] = minus) then sign := -1
  else sign := 1;
  if (s[i] = plus) or (s[i] = minus) then i := i + 1;
  n := 0;
  while s[i] in ['0'..'9'] do begin
    n := 10 * n + ord(s[i]) - ord('0');
    i := i + 1
  end;
  ParseInt := sign * n
end; {ParseInt}

function ParseReal (var s : String; var i : integer) : real;
var
  v : real; j, decimal, exponent : integer;
begin
  while s[i] in [space, tab] do i := i + 1;
  v := 0.0; decimal := 0; exponent := 0;
  while (isdigit(s[i])) do begin {parse decimal number}
    if s[i] = dot then decimal := i
    else v := 10 * v + (ord(s[i]) - ord('0'));
    i := i + 1;
  end;
  if decimal > 0 then
    for j := 1 to (i - decimal - 1) do v := v / 10;
  if s[i] = 'e' then begin {handle scientific notation}
    i := i + 1;
    exponent := ParseInt(s, i);
    if exponent > 0 then
      for j := 1 to exponent do v := v * 10
    else if exponent < 0 then
      for j := 1 to abs(exponent) do v := v / 10
  end;
  ParseReal := v
end; {ParseReal}

function DoDivision (x, y : real) : real;
begin
  if y <> 0 then DoDivision := x / y
  else begin
    Writeln('Please don''t divide by zero!');
    DoDivision := 0
  end
end; {DoDivision}

function DoFactorial (x : real) : real;
var v : real; i, j : integer;
begin
  v := 1; j := abs(trunc(x));
  if (j = 0) or (j = 1) then DoFactorial := 1
  else if j > 69 then Writeln('Arithemtic overflow.')
  else for i := j downto 2 do v := v * i;
  if x < 0 then DoFactorial := -v
  else DoFactorial := v
end; {DoLn}

function DoLn (x : real) : real;
begin
  if x > 0.0 then DoLn := ln(x)
  else begin
    Writeln('Natural log argument must be positive.');
    DoLn := 0.0
  end
end; {DoLn}

function DoPower (b, e : real) : real;
var p : integer; u, v : real;
begin
  v := 1; u := b; p := trunc(e);
  if ((e - p) < 0.00001) and (p > 0) then begin
  {handle positive integral exponents}
    while p > 0 do begin
      while not odd(p) do begin
        p := p div 2; u := sqr(u)
      end;
      p := p - 1; v := u * v
    end;
    DoPower := v
  end
  {else use natural logarithm}
  else DoPower := exp(e * DoLn(b))
end; {Power}

function DoSqrt (x : real) : real;
begin
  if x > 0.0 then DoSqrt := sqrt(x)
  else begin
    Writeln('Square root argument must be positive.');
    DoSqrt := 0.0
  end
end; {DoSqrt}

procedure SkipToken (var s : String; var i : integer);
begin
  while s[i] in ['a'..'z'] do i := i + 1;
end; {SkipToken}

function SkipSpace (var s : String; var i : integer) : char;
begin
  while (s[i] in [space, tab]) do i := i + 1;
  SkipSpace := s[i]
end;

function Expression (var s : string; var s2 : string; var i : integer) : real;
var v : real; t : char; j : integer;

  function Term (var s : String; var s2 : string; var i : integer) : real;
  var v : real; t : char;

    function Factor (var s : String; var s2 : string; var i : integer) : real;
    var v : real; t : char;

      function Value (var s : String; var s2 : string; var i : integer) : real;
      var v : real; t : char; j,k : integer;
      begin
        v := 0.0; k:=0;
        t := SkipSpace(s, i);
        for j:=1 to varCount do
        begin
             if s2[j]=t then
             begin
                k:=j;
                break;
             end;
        end;
        if t = parOpen then begin {nested expression}
          i := i + 1;
          v := Expression(s, s2 , i);
          if (SkipSpace(s, i) = parClose) then i := i + 1
          else Writeln('Missing parenthesis in expression.')
        end
        else if t = plus then begin {unary plus}
          i := i + 1; v := Value(s, s2, i)
        end
        else if t = minus then begin {unary minus}
          i := i + 1; v := -Value(s, s2, i)
        end
        else if IsDigit(t) then begin {real number}
          v := ParseReal(s, i)
        end
        else if (t in ['a','c','e','l','p','s','t']) or (k>0) then begin {function}
          j := i; SkipToken(s, i);
          if s[j] = 'a' then
            if s[j+1] = 'b' then v := abs(Value(s, s2, i))
            else if s[j+1] = 't' then v := arctan(Value(s, s2, i));
          if s[j] = 'c' then v := cos(Value(s, s2, i));
          if s[j] = 'e' then
            if s[j+1] = 'x' then v := exp(Value(s, s2, i))
            else v := exp(1); {e}
          if s[j] = 'l' then v := DoLn(Value(s, s2, i));
          if s[j] = 'p' then v := 3.14159265358979;
          if s[j] = 's' then
            if s[j+1] = 'i' then v := sin(Value(s, s2, i))
            else if s[j+1] = 'q' then v := DoSqrt(Value(s, s2, i));
          if s[j] = 't' then begin
            v := Value(s, s2, i); v := sin(v)/cos(v)
          end;
          if k > 0 then v := myVar[k];
        end
        else Writeln('Syntax error.');
        Value := v
      end; {Value}

    begin
    v := Value(s, s2, i);
    t := SkipSpace(s, i);
    while t in [bang, power] do begin
      i := i + 1;
      case t of
        bang: v := DoFactorial(v);
        power: v := DoPower(v, Factor(s, s2, i))
      end;
      t := SkipSpace(s, i)
    end;
    Factor := v
    end; {Factor}

  begin
    v := Factor(s, s2, i);
    t := SkipSpace(s, i);
    while t in [star, slash, power] do begin
      i := i + 1;
      case t of
        star: v := v * Factor(s, s2, i);
        slash: v := DoDivision(v, Factor(s, s2, i));
        power: v := DoPower(v, Factor(s, s2, i))
      end;
      t := SkipSpace(s, i)
    end;
    Term := v
  end; {Term}

begin
  v := Term(s, s2, i);
  t := SkipSpace(s, i);
  while t in [plus, minus] do begin
    i := i + 1;
    case t of
      plus: v := v + Term(s, s2, i);
      minus: v := v - Term(s, s2, i)
    end;
    t := SkipSpace(s, i)
  end;
  Expression := v
end; {Expression}

function Length (var s : String) : integer;
var i : integer;
begin
  i := maxString;
  while (s[i] = space) and (i <> 1) do i := i - 1;
  if (s[i] = space) and (i = 1) then i := 0;
  Length := i;
end; {Length}

procedure SetDecimal (var s : String; var i, dec : integer);
begin
  SkipToken(s, i);
  dec := trunc(ParseReal(s, i));
  if dec > 15 then dec := 15;
  if dec < 0 then dec := 0;
  Writeln('Decimal precision set to ', dec);
end; {SetDecimal}

procedure SetWidth (var s : String; var i, width : integer);
begin
  SkipToken(s, i);
  width := trunc(ParseReal(s, i));
  if width > 80 then width := 80;
  if width < 0 then width := 0;
  Writeln('Decimal width set to ', width);
end; {SetWidth}

procedure SetNotation (var sn : boolean);
begin
  sn := not(sn);
  if sn then Writeln('Scientific notation on.')
  else Writeln('Scientific notation off.')
end; {SetNotation}

procedure Format (var s : String; var s2 : string; var i : integer);
begin
  if sn then Writeln(Expression(s, s2, i):width)
  else Writeln(Expression(s, s2, i):width:dec)
end; {Format}

procedure Help;
begin
  Writeln;
  Writeln('+---------------------+');
  Writeln('|  Sadjad Univercity  |');
  Writeln('+---------------------+');
  Writeln;
  Writeln('Operators:');
  Writeln(' +, -, *, /, !, ^, unary +/-, ()');
  Writeln;
  Writeln('Functions & constants:');
  Writeln(' sqrt(), ln(), exp(), atan()');
  Writeln(' cos(), sin(), tan(), e, pi');
  Writeln;
  Writeln('Commands (may be abbreviated):');
  Writeln(' (w)idth #: set output field width to #');
  Writeln(' (d)ecimal #: set the precision to #');
  Writeln(' (n)otation: toggle scientific notation');
  Writeln(' (g)et: get user variable');
  Writeln(' (v)iew: view all user variable');
  Writeln(' (cl)ear: delete all user variable');
  Writeln(' (h)elp: print this help screen');
  Writeln(' (q)uit: exit the program');
  Writeln
end; {Help}
{=====User Variable=============================}
procedure GetVar;
var
        ss:String;
        t,t2:char;
	sign,k,k2,j:integer;
        val:real;
begin
        sign:=1; k2:=0; val:=0.0;
        writeln('use this syntax : (Varable Name):=(Value) => a:=12');
        readln(ss);
	k:=pos(':=',ss);
	if k>0 then
	begin
             t2:=ss[k-1];{var name}
             k:=k+2;
             t:=skipspace(ss,k);
             if t = minus then
             begin
                  sign:=-1;
                  k:=k+1;
             end
             else if t = plus then
             begin
                  sign:=1;
                  k:=k+1;
             end;
             val:= sign*ParseReal(ss,k);

             for j:=1 to varCount do
             begin
                  if s2[j]=t2 then
                  begin
                       k2:=j;
                       writeln(k2);
                       break;
                  end;
             end;
             if k2>0 then
             begin
                  write('variable name # ');
                  write(t2);
                  writeln(' # befor used !');
                  myVar[k2]:=val;
                  writeln('new value assained to it.');
             end
             else if not (t2 in ['a','c','e','l','p','s','t']) then
             begin
                varCount:=varCount+1;
		s2[varCount]:=t2;
      		myVar[varCount] := val;
                writeln('One variable added to list.');
             end
             else if t2 in ['a','c','e','g','l','p','s','t','v'] then
             begin
                 write('you cant use # ');
                 write(t2);
                 writeln(' # this is a reserved word.');
             end;
	end
	else
		writeln('Syntax error !');
end; {GetVar}
procedure ViewVar;
var
j:integer;
begin
     write('You have ');
     write(varCount);
     writeln(' variable');
     for j:=1 to varCount do
     begin
          write(s2[j]);
          write('=');
          writeln(myVar[j]:width:dec);
     end;
end; {ShowVar}
procedure clearVar;
begin
     varCount:=0;
     writeln('all user variable are deleted.');
end;
{===========End User Variable=============}

begin

  nul := chr(0); tab := chr(9);
  width := 12; dec:= 6; sn := false; done := false; varCount:=0;
  Help;
  repeat
    Write('> '); Readln(s);
    len := Length(s);
    s[len + 1] := nul; {terminate string}
    if len > 0 then begin
      LowerCase(s, len);
      i := 1;
      t := SkipSpace(s, i);
      if t = 'd' then SetDecimal(s, i, dec)
      else if t = 'h' then Help
      else if t = 'n' then SetNotation(sn)
      else if t = 'g' then GetVar
      else if t = 'v' then viewVar
      else if (t = 'c') and (s[i+1] = 'l') then clearVar
      else if t = 'q' then done := true
      else if t = 'w' then SetWidth(s, i, width)
      {else if t = 'x' then Execute}
      else Format(s,s2, i)
    end
  until done
end. {Calc}