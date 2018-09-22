program MinMax ;

const n = 20 ;

type list = array [1..n] of integer ;

var a : list;
	i, min, max : integer ;
	
procedure minmax (var g : list; var min, max : integer) ;
 var i : integer ;
 begin
	for i := 2 to n do
		if g[i] > max then max := g[i]
		else if g[i] < min then min := g[i]
end;

begin
	  for i := 1 to n do read(a[i])
	; minmax (a, min, max)
	; writeln
end.