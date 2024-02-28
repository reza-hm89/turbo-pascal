uses    crt;
var     i,j,k,z,i1,j1,n,id,age,sex,code,max,min,sum,sum1:integer;
        name:string;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
                write('Enter your name: ');
                readln(Name);
                write('Enter your ID: ');
                readln(id);
                writeln('Code diplom   tajrobi:1  riyazi: 2   ensani:3');
                readln(code);
                if code=1 then
                   j:=j+1
                else if code=2 then
                   k:=k+1
                else z:=z+1;
                write('Enter your age: ');
                readln(age);
                if age>max then
                   max:=age;
                if age<min then
                   min:=age;
                write('Enter your Sex:  male:1     famale:2');
                readln(sex);
                if sex=1 then
                begin
                   sum:=age+sum;
                   i1:=i1+1;
                end
                else
                begin
                    sum1:=sum1+age;
                    j1:=j1+1;
                end;
        end;
        writeln('Tedad afrade sherkat konnadeh:');
        writeln('Tajrobi: ',j,' riyazi:',k,' ensani:',z);
        writeln('Youngest man: ',min);
        writeln('Oldest man: ',max);
        writeln('Average of sherkat konnande:');
        write('Male: ',(sum/i1):2:2,'   famale: ',(sum1/j1):2:2);
        readln

end.