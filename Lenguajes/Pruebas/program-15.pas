program checknestedCase;
var
   a, b: integer;
begin
   a := 100;
   b := 200;

   while noseencontro do
   begin
      noseencontro := existe(milista, i); 
      i := i + 1
   end;

   writeln("Exact value of a is : ", a );
   writeln("Exact value of b is : ", b );
end.

