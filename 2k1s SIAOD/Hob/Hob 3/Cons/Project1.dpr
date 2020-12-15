 program Queens;
   const N=8;
   type Index=1..N;
	Rasstanovka=array [Index] of 0..N;
   var X:Rasstanovka;
       Count:word;
   function P(var X:Rasstanovka;k,y:Index):boolean;
     var i:Index;
   begin
     i:=1;
     while (i<k)and(y<>X[i])and(abs(k-i)<>abs(y-X[i])) do inc(i);
     P:=i=k
   end;
   procedure Backtracking(k:Index);
     var i,y:Index;
   begin
     for y:=1 to N do
       if P(X,k,y) then
	 begin
	   X[k]:=y;
	   if k=N then
	     begin
	       for i:=1 to N do write(X[i]);writeln;inc(Count)
	     end;
	   Backtracking(k+1)
	 end
   end;
 begin
   Count:=0;
   writeln('Расстановки ',N,' ферзей:');
   Backtracking(1);
   writeln('Всего ',Count,' расстановок');
   readln;
 end.

