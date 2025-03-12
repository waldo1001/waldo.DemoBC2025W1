codeunit 50104 "Demo IncStr"
{
    trigger OnRun()
    var
        Text1: Text[20];
        Text2: Text[20];
    begin
        // Basic number incrementation
        Text1 := 'INV-001';
        Message('After IncStr(1): %2', Text1, IncStr(Text1));
        Message('After IncStr(20): %2', Text1, IncStr(Text1, 20));
    end;
}