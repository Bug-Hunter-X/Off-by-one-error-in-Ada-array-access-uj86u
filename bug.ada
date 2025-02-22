```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      -- Incorrect access to array elements using index I
      -- Ada arrays are 1-based, so the last element is My_Data(My_Data'Last)
      Put_Line(My_Data(I));  --This will raise Constraint_Error if I = 0 or I > 10
   end loop;
end Example;
```