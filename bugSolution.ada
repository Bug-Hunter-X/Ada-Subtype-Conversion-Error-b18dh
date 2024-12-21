```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub is My_Array(1..5);
   Sub_Arr : My_Sub;
begin
   Sub_Arr := My_Sub(My_Arr(1..5)); -- Correct: Explicit conversion
   -- Or, alternatively:
   -- Sub_Arr := (My_Arr(1), My_Arr(2), My_Arr(3), My_Arr(4), My_Arr(5)); -- Correct: Array aggregate
   -- ... rest of the code
exception
   when others =>
      -- Handle exceptions
end Example;
```