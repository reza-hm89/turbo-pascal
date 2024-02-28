program PROJECT;

const
  maxString = 80;
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
  IsDigit := c in ['0'..'9', '.']
end; {IsDigit}

function ParseInt (var s : String; var i : integer) : integer;
var
  n, sign : integer;
begin
  while (s[i] = ' ') or (s[i] = tab) do i := i + 1;
  if (s[i] = '-') then sign := -1
  else sign := 1;
  if (s[i] = '+') or (s[i] = '-') then i := i + 1;
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
  while s[i] in [' ', tab] do i := i + 1;
  v := 0.0; decimal := 0; exponent := 0;
  while (isdigit(s[i])) do begin {parse decimal number}
    if s[i] = '.' then decimal := i
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
    Writeln('taghsim bar 0 mojaz nist!');
    DoDivision := 0
  end
end; {DoDivision}

function DoFactorial (x : real) : real;
var v : real; i, j : integer;
begin
  v := 1; j := abs(trunc(x));
  if (j = 0) or (j = 1) then DoFactorial := 1
  else if j > 69 then Writeln('adad khili bozorg ast.')
  else for i := j downto 2 do v := v * i;
  if x < 0 then DoFactorial := -v
  else DoFactorial := v
end; {DoFactorial}

function DoLn (x : real) : real;
begin
  if x > 0.0 then DoLn := ln(x)
  else begin
    Writeln('adad bayad mosbat bashad.');
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
    Writeln('adad zire radical bayad mosbat bashad.');
    DoSqrt := 0.0
  end
end; {DoSqrt}

procedure SkipToken (var s : String; var i : integer);
begin
  while s[i] in ['a'..'z'] do i := i + 1;
end; {SkipToken}

function SkipSpace (var s : String; var i : integer) : char;
begin
  while (s[i] in [' ', tab]) do i := i + 1;
  SkipSpace := s[i]
end;

function Expression (var s : string; var s2 : string; var i : integer) : real;
var v : real; t : char; j : integer;

  function Term (var s : String; var s2 : string; var i : integer) : real;
  var v : real; t : char;

    function Factor (var s : String; var s2 : string; var i : integer) : real;
    var v : real; t : char;

      function Value (var s : String; var s2 : string; var i : integer) : real;
      var v : real; t : char; m,n : integer;
      begin
        v := 0.0; n:=0;
        t := SkipSpace(s, i);
        for m:=1 to varCount do
        begin
             if s2[m]=t then
             begin
                n:=m;
                break;
             end;
        end;
        if t = '(' then begin {nested expression}
          i := i + 1;
          v := Expression(s, s2 , i);
          if (SkipSpace(s, i) = ')') then i := i + 1
          else Writeln('parantez gozari eshtebah ast.')
        end
        else if t = '+' then begin {unary plus}
          i := i + 1; v := Value(s, s2, i)
        end
        else if t = '-' then begin {unary minus}
          i := i + 1; v := -Value(s, s2, i)
        end
        else if IsDigit(t) then begin {real number}
          v := ParseReal(s, i)
        end
        else if (t in ['a','c','e','l','p','s','t']) or (n>0) then begin {function}
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
          if n > 0 then v := myVar[n];
        end
        else Writeln('eshtebah dar neveshtar.');
        Value := v
      end; {Value}

    begin
    v := Value(s, s2, i);
    t := SkipSpace(s, i);
    while t in ['!', '^'] do begin
      i := i + 1;
      case t of
        '!': v := DoFactorial(v);
        '^': v := DoPower(v, Factor(s, s2, i))
      end;
      t := SkipSpace(s, i)
    end;
    Factor := v
    end; {Factor}

  begin
    v := Factor(s, s2, i);
    t := SkipSpace(s, i);
    while t in ['*', '/', '^'] do begin
      i := i + 1;
      case t of
        '*': v := v * Factor(s, s2, i);
        '/': v := DoDivision(v, Factor(s, s2, i));
        '^': v := DoPower(v, Factor(s, s2, i))
      end;
      t := SkipSpace(s, i)
    end;
    Term := v
  end; {Term}

begin
  v := Term(s, s2, i);
  t := SkipSpace(s, i);
  while t in ['+', '-'] do begin
    i := i + 1;
    case t of
      '+': v := v + Term(s, s2, i);
      '-': v := v - Term(s, s2, i)
    end;
    t := SkipSpace(s, i)
  end;
  Expression := v
end; {Expression}

{=====tavabe marboot be moteghayer ha=============================}
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
             if t = '-' then
             begin
                  sign:=-1;
                  k:=k+1;
             end
             else if t = '+' then
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
                  write('moteghayer <');
                  write(t2);
                  writeln('> ghablan estefade shode !');
                  myVar[k2]:=val;
                  writeln('meghdare jadid dar moteghayer gharar gerft.');
             end
             else if not (t2 in ['a','c','e','l','p','s','t']) then
             begin
                varCount:=varCount+1;
		s2[varCount]:=t2;
      		myVar[varCount] := val;
                writeln('yek moteghayer be list ezafe shod.');
             end
             else if t2 in ['a','c','e','g','l','p','s','t','v'] then
             begin
                 write('shoma nemitavanid az <');
                 write(t2);
                 writeln('> baraye name moteghayer estefade konid.');
             end;
	end
	else
		writeln('eshtebah dar neveshtar!');
end; {GetVar}
procedure ViewVar;
var
j:integer;
begin
     write('shoma  ');
     write(varCount);
     writeln(' moteghayer darid.');
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
     writeln('hafeze (moteghayer ha) pak shodand.');
end;
{*************moteghayer ha********************}

{*********************tanzimat******************}
function Length (var s : String) : integer;
var i : integer;
begin
  i := maxString;
  while (s[i] = ' ') and (i <> 1) do i := i - 1;
  if (s[i] = ' ') and (i = 1) then i := 0;
  Length := i;
end; {Length}

procedure ashar ;
begin
  write('meghdare delkhahi beine 0 ta 15 vared konid >');
  readln(dec);
  if dec > 15 then dec := 15;
  if dec < 0 then dec := 0;
  Writeln('tedade ragham ashar :', dec);
end; {SetDecimal}

procedure SetWidth (var s : String; var i, width : integer);
begin
  SkipToken(s, i);
  width := trunc(ParseReal(s, i));
  if width > 80 then width := 80;
  if width < 0 then width := 0;
  Writeln('Decimal width set to ', width);
end; {SetWidth}

procedure elmi (var sn : boolean);
begin
  sn := not(sn);
  if sn then Writeln('namayesh elmi.')
  else Writeln('namayesh mamoli.')
end; {SetNotation}

procedure Format (var s : String; var s2 : string; var i : integer);
begin
  if sn then Writeln(Expression(s, s2, i):width)
  else Writeln(Expression(s, s2, i):width:dec)
end; {Format}

procedure Help;
begin
  Writeln;
  Writeln(' PPPPP    AAAA    SSSSS    CCCCC    AAAA   LL ');
  Writeln(' PP  PP  AA  AA  SS       CC   CC  AA  AA  LL');
  Writeln(' PPPPP   AAAAAA   SSSSS   CC       AAAAAA  LL');
  Writeln(' PP      AA  AA       SS  CC   CC  AA  AA  LL  LL');
  Writeln(' PP      AA  AA   SSSSS     CCCC   AA  AA  LLLLLL');
  Writeln;
  Writeln('Alamatha mojaz :');
  Writeln(' +, -, *, /, !, ^, unary +/-, ()');
  Writeln(' sqrt(), ln(), exp(), atan(), cos(), sin(), tan(), e, pi');
  Writeln;
  Writeln('tanzimat:');
  Writeln(' (1)   : mohasebe ebarat');
  Writeln(' (2) x : chape khoroji be andaze x');
  Writeln(' (3) x : tedad ragham ashar x');
  Writeln(' (4)   : chape adad elmi');
  Writeln(' (5)   : daryafte moteghayer');
  Writeln(' (6)   : namayesh moteghayer(ha)');
  Writeln(' (7)   : pak kardane hafeze (moteghayer ha)');
  Writeln(' (8)   : namayeshe tozihat');
  Writeln(' (9)   : khoroj az barname');
  Writeln
end; {Help}
{**************tanzimat**************************}
{***************barname asli*********************}
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
	  case t of
	    '1': begin
				Write('ebarat ra vared konid> '); Readln(s);
				len := Length(s);
				s[len + 1] := nul;
				Format(s,s2,i);
			end;
		'2': SetWidth(s, i, width);
		'3': ashar;
		'4': elmi(sn);
		'5': GetVar;
		'6': viewVar;
		'7': clearVar;
		'8': Help;
		'9': done := true;
		else 
			
      end;
    end
  until done
end. {Calc}