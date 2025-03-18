codeunit 50101 "Multiline String Demo"
{
    procedure DemoBasicMultilineString()
    var
        MyText: Text;
    begin
        MyText := @'
            This is a multiline string.
            It can span multiple lines
            without concatenation operators.
            Indentation is preserved.
            ';
        Message(MyText);
    end;

    procedure DemoHTMLTemplate()
    var
        HTMLContent: Text;
        CustomerName: Text;
        OrderNumber: Text;
    begin
        CustomerName := 'John Doe';
        OrderNumber := 'ORD-001';

        HTMLContent := @'
            < html >
                <body >
                    <h1 > Order Confirmation </h1 >
                    <p > Dear %1,</p >
                    <p > Your order number %2 has been confirmed.</p >
                    <p > Thank you for your business!</p >
                  </ body >
              </ html >
              ';

        HTMLContent := StrSubstNo(HTMLContent, CustomerName, OrderNumber);
        Message(HTMLContent);
    end;

    procedure DemoJSONTemplate()
    var
        JSONText: Text;
    begin
        JSONText := @'
            {
                "customer": {
                    "name": "John Doe",
                    "email": "john@example.com",
                    "orders": [
                        {
                            "id": "ORD-001",
                            "status": "completed"
                        }
                    ]
                }
            }
            ';
        Message(JSONText);
    end;
}
