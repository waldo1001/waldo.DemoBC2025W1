codeunit 50106 "ToText Demo"
{
    procedure DemoToText()
    var
        MyInt: Integer;
        MyDec: Decimal;
        MyDate: Date;
        Result: Text;
    begin
        MyInt := 1234;
        MyDec := 3.14159;
        MyDate := Today;

        Message(MyInt.ToText());
        Message(MyDec.ToText());
        Message(MyDate.ToText());

    end;
}