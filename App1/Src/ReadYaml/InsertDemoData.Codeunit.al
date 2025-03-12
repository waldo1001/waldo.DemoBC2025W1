codeunit 50105 InsertDemoData
{
    trigger OnRun()
    var
        ResourceStream: InStream;
        valueText: Text;
        valueTextBuilder: TextBuilder;
        JData: JsonObject;
    begin
        NavApp.GetResource('DemoData.yml', ResourceStream);
        while (not ResourceStream.EOS) do begin
            ResourceStream.ReadText(valueText);
            valueTextBuilder.AppendLine(valueText);
        end;
        JData.ReadFromYaml(valueTextBuilder.ToText());

        InsertCustomersFromJson(JData);
        InsertVendorsFromJson(JData);
        InsertItemsFromJson(JData);
    end;

    local procedure InsertCustomersFromJson(JData: JsonObject)
    var
        Customer: Record Customer;
        JArray: JsonArray;
        JToken: JsonToken;
        JObject: JsonObject;
        i: Integer;
    begin
        if not JData.Get('customers', JToken) then
            exit;
        JArray := JToken.AsArray();

        for i := 0 to JArray.Count - 1 do begin
            JArray.Get(i, JToken);
            JObject := JToken.AsObject();

            Customer.Init();
            Customer.Validate("No.", JObject.GetText('No'));
            Customer.Validate(Name, JObject.GetText('Name'));
            Customer.Validate(Address, JObject.GetText('Address'));
            Customer.Validate(City, JObject.GetText('City'));
            Customer.Validate("Post Code", JObject.GetText('PostCode'));
            Customer.Validate("E-Mail", JObject.GetText('email'));
            if Customer.Insert(true) then;
        end;
    end;

    local procedure InsertVendorsFromJson(JData: JsonObject)
    var
        Vendor: Record Vendor;
        JArray: JsonArray;
        JToken: JsonToken;
        JObject: JsonObject;
        i: Integer;
    begin
        if not JData.Get('vendors', JToken) then
            exit;
        JArray := JToken.AsArray();

        for i := 0 to JArray.Count - 1 do begin
            JArray.Get(i, JToken);
            JObject := JToken.AsObject();

            Vendor.Init();
            Vendor.Validate("No.", JObject.GetText('No'));
            Vendor.Validate(Name, JObject.GetText('Name'));
            Vendor.Validate(Address, JObject.GetText('Address'));
            Vendor.Validate(City, JObject.GetText('City'));
            Vendor.Validate("Post Code", JObject.GetText('PostCode'));
            Vendor.Validate("E-Mail", JObject.GetText('email'));
            if Vendor.Insert(true) then;
        end;
    end;

    local procedure InsertItemsFromJson(JData: JsonObject)
    var
        Item: Record Item;
        JArray: JsonArray;
        JToken: JsonToken;
        JObject: JsonObject;
        i: Integer;
    begin
        if not JData.Get('items', JToken) then
            exit;
        JArray := JToken.AsArray();

        for i := 0 to JArray.Count - 1 do begin
            JArray.Get(i, JToken);
            JObject := JToken.AsObject();

            Item.Init();
            Item.Validate("No.", JObject.GetText('No'));
            Item.Validate(Description, JObject.GetText('Description'));
            Item.Validate("Unit Price", JObject.GetDecimal('UnitPrice'));
            Item.Validate("Vendor No.", JObject.GetText('VendorNo'));
            if Item.Insert(true) then;
        end;
    end;

    procedure ResetData()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        Item: Record Item;
    begin
        customer.SetFilter("No.", 'C*');
        Customer.DeleteAll(true);

        Vendor.SetFilter("No.", 'V*');
        Vendor.DeleteAll(true);

        Item.SetFilter("No.", 'I*');
        Item.DeleteAll(true);
    end;

}