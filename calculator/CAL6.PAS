USES CRT;
TYPE
  MM = ARRAY[25..49,8..24] OF STRING[4];
  CONST
   rigth = #77 ; left = #75; UP = #72 ; down = #80;
  VAR
     C,L,J1,R,T,J,i,GD,GM,I1,N:INTEGER;
     STR1,STR2:STRING[15];
     UNT:MM;
     X,Y,D,V:BYTE;
     E1,E2:REAL;{EXTENDED;}
     S,SS:STRING[30];
     COLOR:WORD;
     MARK,CHR:CHAR;
     BOOL1,BOOL2,BOOL3,BOOL4,BOOL5,BOOL6:BOOLEAN;
PROCEDURE  MAT;(***********************************************)
    BEGIN
     I:=25;J:=8;
     TEXTBACKGROUND(1);
     CLRSCR;
     WINDOW(23,2,49,24); TEXTBACKGROUND(15);CLRSCR;
     WINDOW(24,3,28,5) ; TEXTBACKGROUND(15);CLRSCR;TEXTCOLOR(15);
     WINDOW(24,7,48,23); TEXTBACKGROUND(0) ;CLRSCR;
       REPEAT
         REPEAT
           WINDOW(I,J,I+4,J);
           TEXTBACKGROUND(15);CLRSCR;
           TEXTCOLOR(15);
           WRITE(UNT[I,J]);
           I:=I+6;
         UNTIL I = 49;
        J := J+2;
        I := 25;
       UNTIL J=24;
      end;
PROCEDURE U_D_R_L_ARROW; (***********************)
      BEGIN
       WINDOW(X,Y,X+4,Y); TEXTBACKGROUND(15);CLRSCR;
       TEXTCOLOR(15);WRITE(UNT[X,Y]);
      CASE  MARK OF
                 'U' : BEGIN Y:=Y-2 ; IF Y=6  THEN Y:=22;END;
                 'D' : BEGIN Y:=Y+2 ; IF Y=24 THEN Y:=8; END;
                 'R' : BEGIN X:=X+6 ; IF X=49 THEN X:=25;END;
                 'L' : BEGIN X:=X-6 ; IF X=19 THEN X:=43;END;
               END; (* CASE *)
      WINDOW(X,Y,X+4,Y); TEXTBACKGROUND(4);CLRSCR;
      TEXTCOLOR(14);WRITE(UNT[X,Y]);
     END;
PROCEDURE REFLEX; (******************************)
     BEGIN
      D := LENGTH(S);
      IF D > 20 THEN
     BEGIN  WINDOW(25,4,46,4); TEXTBACKGROUND(0);CLRSCR;
       TEXTCOLOR(90);WRITE('!!! ERROR !!!');
       SOUND(537);DELAY(500);NOSOUND;S:=' ';END ELSE
     BEGIN
       WINDOW(25,4,46,4); TEXTBACKGROUND(0);CLRSCR;
       WINDOW(46-D,4,46,4); TEXTBACKGROUND(0);CLRSCR;
       TEXTCOLOR(11);WRITE(S);END;
     END;
PROCEDURE SUME_STRING; {*************************}
     VAR
     SSS:STRING[30];
     BEGIN
      IF BOOL5 THEN
       BEGIN
        S:='0';SS:=' ';E1:=0;E2:=0;
        REFLEX;S:='';BOOL5:=FALSE;END
        ELSE IF BOOL6 THEN
       BEGIN
        S:=SSS;E1:=0;S:='0';
        REFLEX;S:='';S:=SSS;BOOL6:=FALSE;
        END ELSE
       BEGIN
         S:=S+SS;
         REFLEX;END;
        END;
PROCEDURE JAM; (*****************************)
        BEGIN
         BOOL1:=TRUE;BOOL2:=FALSE;BOOL3:=FALSE;BOOL4:=FALSE;
         VAL(S,E2,C);
           IF E1=0 THEN
          BEGIN
             E1:=E2;S:='';END
           ELSE BEGIN
           E1:=E1+E2;S:='';
           STR(E1:1:V,S);
           REFLEX;END;
         END;
PROCEDURE  MENHA; (**************************)
        BEGIN
          BOOL1:=FALSE;BOOL2:=FALSE;BOOL3:=TRUE;BOOL4:=FALSE;
          VAL(S,E2,C);
          IF E1=0 THEN
            BEGIN E1:=E2;S:='';END
            ELSE BEGIN
                 E1:=E1*E2;S:='';
                 STR(E1:1:V,S);
                 REFLEX;
               END;
            END;
PROCEDURE  ZARB; (**************************)
        BEGIN
           BOOL1:=FALSE;BOOL2:=FALSE;BOOL3:=TRUE;BOOL4:=FALSE;
           VAL(S,E2,C);
            IF E1=0 THEN
             BEGIN
                E1:=E2;S:='';END
              ELSE    BEGIN
                      E1:=E1*E2;S:='';
                      STR(E1:1:V,S);
                      REFLEX;END;
            END;
PROCEDURE TAGSIM;(*************************)
        BEGIN
            BOOL1:=FALSE;BOOL2:=FALSE;BOOL3:=FALSE;BOOL4:=TRUE;
            VAL(S,E2,C);
              IF E1=0 THEN
           BEGIN  E1:=E2;S:='';END
           ELSE  IF E2=0 THEN
             BEGIN  S:=' !!! ERROR !!! ';REFLEX;S:='';END
            ELSE   BEGIN
                       E1:=E1/E2;S:='';
                       STR(E1:1:V,S);
                       REFLEX;END;
         END;
PROCEDURE  X_2; (***********************)
         BEGIN
            VAL(S,E2,C);
            E1:=SQR(E2);
            STR(E1:1:V,S);
            REFLEX;
         END;
PROCEDURE TAVAN_ENOM; (******************)
         VAR
           RAT:INTEGER;
           FR:LONGINT;
         BEGIN
           VAL(S,E2,C);
           E1:=1;
           FR:=TRUNC(E2);
           FOR RAT:=1 TO FR DO
            E1:=10*E1;
            STR(E1:1:0,S);
            REFLEX;
          END;
PROCEDURE YEKIXOM;(********************)
        BEGIN
         VAL(S,E2,C);
          IF E2=0 THEN
            BEGIN
             WINDOW(25,4,46,4);TEXTBACKGROUND(0);CLRSCR;
             TEXTCOLOR(90);WRITE(' !!! ERORR !!! ');
             SOUND(537);
             DELAY(500);NOSOUND;
             END
            ELSE
              BEGIN
                E1:=1/E2;
                STR(E1:1:V,S);
                REFLEX;
                END;
            END;
          PROCEDURE  JAZR;(*************************)
          BEGIN
            VAL(S,E2,C);
            IF E2=0  THEN
             BEGIN
              WINDOW(25,4,46,4);TEXTBACKGROUND(0);CLRSCR;
              TEXTCOLOR(90);WRITE('    !!! ERROR !!! ');
              SOUND(537);DELAY(500);NOSOUND;
              END
               ELSE
                  BEGIN
                     E1:=SQRT(E2);
                     STR(E1:1:V,S);
                     REFLEX;
                     END;
                   END;
           PROCEDURE SINOS;(*************************)
           BEGIN
              VAL(S,E2,C);
              E1:=SIN(E2*PI/180);
              STR(E1:1:V,S);
              REFLEX;
           END;
         PROCEDURE  COSINOS;(************************)
         BEGIN
           VAL(S,E2,C);
           E1:=COS(E2*PI/180);
           STR(E1:1:V,S);
           REFLEX;
         END;
         PROCEDURE  TANJANT;(***********************)
         VAR
           E3:REAL;{EXTENDED;}
           BEGIN
             VAL(S,E2,C);
             E1:=SIN(E2*PI/180);
             E3:=COS(E2*PI/180);
             IF E3=0 THEN
             BEGIN
                 S:=' !!! ERROR !!! ';REFLEX;S:='';END
                 ELSE
                 BEGIN
                 E1:=E1/E3;
                 STR(E1:1:V,S);
                 REFLEX;END;
           END;
          PROCEDURE  LOGARITM; (**********************)
          BEGIN
            VAL(S,E2,C);
            IF (E2=1) OR (E2<=0) THEN
            BEGIN
               WINDOW(25,4,46,4);TEXTBACKGROUND(0);CLRSCR;
               TEXTCOLOR(90);WRITE(' !!! ERROR !!! ');
               SOUND(537);DELAY(1000);NOSOUND;
               S:=' !!! ERROR !!! ';
               REFLEX;S:='';
               END
                ELSE
                  BEGIN
                       E1:=LN(E2);
                       STR(E1:1:V,S);
                       REFLEX;END;
            END;
           PROCEDURE  MOSAVI; (********************)
           BEGIN
              IF BOOL1 = TRUE THEN
              BEGIN  JAM;BOOL1:=FALSE;END
              ELSE IF BOOL2=TRUE THEN
              BEGIN MENHA;BOOL2:=FALSE;END
              ELSE  IF BOOL3=TRUE THEN
              BEGIN  ZARB;BOOL3:=FALSE;END
              ELSE IF BOOL4=TRUE THEN
              BEGIN  TAGSIM;BOOL4:=FALSE;END;
           END;
         PROCEDURE  OPEN;(************************)
         BEGIN
           CASE Y OF
            10:CASE X OF
               25:X_2;
               31:TAVAN_ENOM;
               37:YEKIXOM;
               43:JAZR;
            END;
            12:CASE  X OF
                25:SINOS;
                31:COSINOS;
                37:TANJANT;
                43:LOGARITM;
               END;
            14:CASE  X OF
                25:WRITE(#7);
                31:halt;
                37:BEGIN  BOOL6:=TRUE;SUME_STRING;END;
                43:BEGIN  BOOL5:=TRUE;SUME_STRING;END;
              END;
            16:CASE X OF
               25:BEGIN SS:='7';SUME_STRING;END;
               31:BEGIN SS:='8';SUME_STRING;END;
               37:BEGIN SS:='9';SUME_STRING;END;
               43:TAGSIM;
             END;
             18:CASE X OF
               25:BEGIN SS:='4';SUME_STRING;END;
               31:BEGIN SS:='5';SUME_STRING;END;
               37:BEGIN SS:='6';SUME_STRING;END;
               43:ZARB;
             END;
             20:CASE X OF
               25:BEGIN SS:='1';SUME_STRING;END;
               31:BEGIN SS:='2';SUME_STRING;END;
               37:BEGIN SS:='3';SUME_STRING;END;
               43:MENHA;
             END;
             22:CASE X OF
               25:BEGIN SS:='0';SUME_STRING;END;
               31:BEGIN SS:='.';SUME_STRING;END;
               37:MOSAVI;
               43:JAM;
             END;END;
           END;
 (********************** MAIN PROGRAM ************************)
          BEGIN
           window(1,1,80,25);
           D:=0;S:=' ';SS:=' ';
           E1:=0;E2:=0;V:=8;
           BOOL5:=FALSE;BOOL6:=FALSE;
           UNT[25, 8]:='KIN'; UNT[31,8 ]:='KOUT';UNT[37,8 ]:='[(.';UNT[43,8 ]:=' .)]';
           UNT[25,10]:='x**2'; UNT[31,10]:='  10';UNT[37,10]:=' 1/X';UNT[43,10]:='  û  ';
           UNT[25,12]:=' SIN'; UNT[31,12]:=' COS';UNT[37,12]:=' TAN';UNT[43,12]:=' LN ';
           UNT[25,14]:=' X! '; UNT[31,14]:=' OFF ';UNT[37,14]:='  C';UNT[43,14]:='  AC';
           UNT[25,16]:='  7'; UNT[31,16]:='  8';UNT[37,16]:='  9';UNT[43,16]:='  / ';
           UNT[25,18]:='  4'; UNT[31,18]:='  5';UNT[37,18]:='  6';UNT[43,18]:='  * ';
           UNT[25,20]:='  1'; UNT[31,20]:='  2';UNT[37,20]:='  3';UNT[43,20]:='  - ';
           UNT[25,22]:='  0'; UNT[31,22]:='  . ';UNT[37,22]:='  =';UNT[43,22]:='  + ';
            MAT;
             WINDOW(43,14,47,14);TEXTBACKGROUND(4);CLRSCR;
             TEXTCOLOR(14);WRITE('  AC');
             X:=43;
             Y:=14;
            REPEAT
                CHR:=READKEY;
                 CASE CHR OF
                  #0:
                   BEGIN
                    CHR:=READKEY;
                     CASE CHR OF
                      UP   : BEGIN MARK:='U' ;   U_D_R_L_ARROW;END;
                      down : BEGIN MARK:='D' ;   U_D_R_L_ARROW;END;
                      rigth: BEGIN MARK:='R' ;   U_D_R_L_ARROW;END;
                      left : BEGIN MARK:='L' ;   U_D_R_L_ARROW;END;
                    end;
                   end;
                  #13 : open;
                 end;
            until 1 <> 1  ;
   end. { of main program }