codeunit 50103 "MethodAccessProperties"
{
    procedure GetJsonObjData(): Text
    var
        JsonObj: JsonObject;
        TheKey: Text;
        Value: Variant;
        jTok: JsonToken;
    begin

        JsonObj.Get('lineNumber', jTok);
        Value := jtok.AsValue().AsBoolean();

        Value := JsonObj.GetBoolean(TheKey, true);
        value := JsonObj.GetByte(TheKey, true);
        value := JsonObj.GetChar(TheKey, true);
        value := JsonObj.GetInteger(TheKey, true);
        value := JsonObj.GetBigInteger(TheKey, true);
        value := JsonObj.GetDecimal(TheKey, true);
        value := JsonObj.GetOption(TheKey, true);
        value := JsonObj.GetDateTime(TheKey, true);
        value := JsonObj.GetDate(TheKey, true);
        value := JsonObj.GetTime(TheKey, true);
        value := JsonObj.GetDuration(TheKey, true);
        value := JsonObj.GetText(TheKey, true);
        value := JsonObj.GetArray(TheKey, true);
        value := JsonObj.GetObject(TheKey, true);
    end;

    procedure GetJsonArrayData(): Text
    var
        JsonArray: JsonArray;
        index: integer;
        Value: Variant;
    begin
        Value := JsonArray.GetBoolean(index);
        value := JsonArray.GetByte(index);
        value := JsonArray.GetChar(index);
        value := JsonArray.GetInteger(index);
        value := JsonArray.GetBigInteger(index);
        value := JsonArray.GetDecimal(index);
        value := JsonArray.GetOption(index);
        value := JsonArray.GetDateTime(index);
        value := JsonArray.GetDate(index);
        value := JsonArray.GetTime(index);
        value := JsonArray.GetDuration(index);
        value := JsonArray.GetText(index);
        value := JsonArray.GetArray(index);
        value := JsonArray.GetObject(index);
    end;
}