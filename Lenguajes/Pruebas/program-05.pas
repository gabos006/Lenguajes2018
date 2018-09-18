program exRecords;
type
Books = record
   title: array [1..50] of char;
   author: array [1..50] of char;
   subject: array [1..100] of char;
   bookid: integer
end;

var
   Book1, Book2: Books; (* Declare Book1 and Book2 of type Books *)

begin
   (* book 1 specification *)
   Book1.title  := "C Programming";
   Book1.author := "Nuha Ali ";
   Book1.subject := "C Programming Tutorial";
   Book1.bookid := 6495407;

   (* book 2 specification *)
   Book2.title := "Telecom Billing";
   Book2.author := "Zara Ali";
   Book2.subject := "Telecom Billing Tutorial";
   Book2.bookid := 6495700;

   (* print Book1 info *)
   writeln ("Book 1 title : ", Book1.title);
   writeln("Book 1 author : ", Book1.author);
   writeln( "Book 1 subject : ", Book1.subject);
   writeln( "Book 1 bookid : ", Book1.bookid);
   writeln;

   (* print Book2 info *)
   writeln ("Book 2 title : ", Book2.title);
   writeln("Book 2 author : ", Book2.author);
   writeln( "Book 2 subject : ", Book2.subject);
   writeln( "Book 2 bookid : ", Book2.bookid);
end.

