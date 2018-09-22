program MinMax ;

const n = 20 ;

type list = array [1..n, otro] of integer ;

var a : list;
	i, min, max : integer ;

procedure minmax (var g : list; var min, max : integer) ;
 var i : integer ;
 begin
	for i := 2 to n+3 do
		if g[i] > max then max := g[i]
		else if g[i] < min then min := g[i]
end;

begin
	  for i := fruta*4-2 to n do read(a[i,j] + 11)
	; minmax (a, min, +max)
	; writeln ("string'", min, -max)
end.
