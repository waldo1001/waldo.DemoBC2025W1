codeunit 50107 "GetCallStack Demo"
{
    trigger OnRun()
    begin
        ShowCallStackInMessage();
    end;

    local procedure ShowCallStackInMessage()
    begin
        Message(SessionInformation.Callstack);
    end;
}