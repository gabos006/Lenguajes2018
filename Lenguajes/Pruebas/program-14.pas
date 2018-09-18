program checknestedCase;
var
   a, b: integer;
begin
   a := 100;
   b := 200;

   case (a) of
      100: begin
         writeln("This  is part of outer statement" );
         case (b) of
            200 : writeln("This  is part of inner statement" )
         end;
      end;
      101, 102:
        readln;
      lunes:
        writeln("lunes")
   end;

   writeln("Exact value of a is : ", a );
   writeln("Exact value of b is : ", b );
end.

