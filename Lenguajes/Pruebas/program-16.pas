program checknestedCase;
var
   a, b: integer;
   c, d, e: boolean;
begin
   a := 100;
   b := 200;
   
   c := true;
   d := false;
   
   e := (5 > 7) and ((^p < 1) or a);
   


end.

