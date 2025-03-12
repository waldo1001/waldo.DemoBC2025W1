codeunit 50102 "Continue Demo"
{
    procedure TestContinue()
    var
        i: Integer;
    begin
        for i := 1 to 100 do begin
            if i > 5 then continue;
            Message('The value of i is %1', i);
        end;
        Message('The value of i in the end is %1', i);
    end;

    procedure TestBreak()
    var
        i: Integer;
    begin
        for i := 1 to 100 do begin
            if i > 5 then break;
            Message('The value of i is %1', i);
        end;
        Message('The value of i in the end is %1', i);
    end;
}