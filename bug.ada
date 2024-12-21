```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub is My_Array(1..5);
   Sub_Arr : My_Sub;
begin
   Sub_Arr := My_Arr(1..5); -- This line is problematic
   -- ... rest of the code
exception
   when others =>
      -- Handle exceptions
end Example;
```