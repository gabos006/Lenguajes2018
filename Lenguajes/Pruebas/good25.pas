program fullExample1;

const
constante1 = 23;
constante2 = 45.7;
constante3 = "valor1";

type
type1 = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, setiembre, octubre, noviembre, diciembre);
type2 = 1..255;
type3 = ^type2;
type4 = array[1..200] of boolean;
type5 = record
	x, y, z : real;
	i : ^type4;
	order : (lt, gt, eq)
end;

var
a, b, c : array[0..5] of integer;
m, n, o : type5;
pointer1 : type3;
numberInRange : type2;
composite1 : record
	cateto1, cateto2, hipotenusa : double;
	angulo : integer;
	result : double
end;

procedure test (t, r, s : type5);
begin
end;

function example (mystery : integer) : type4;
begin
end;

begin

   example(200);
   test;

   begin
	b[4] := 5;
    a[3] := b[4];
	c := a;
   end;

   if (a[3] = b[4]) then
	test(m, n, o);

   case c[3] of
      5: c[0, 1, 2, 3, 4, 5] := 8
   end;

   while a[3] < 10 do
   begin
	a[3] := a[3]+1;
   end;

   repeat b[4] := b[4]*2
   until not (b[4] < 20);

   for j := 0 to 10 do c[0] := c[0]+200;

   pointer1^ := numberInRange;
   numberInRange := 200;

   a[0] := numberInRange;

   a[1] := composite1.angulo;

end.
