page 50103 "Customer Card Simple"
{
    Caption = 'Simple Customer Card';
    PageType = Card;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            group(General)
            {
                group(bleh)
                {
                    ShowCaption = false;
                    label(WaldoLabel)
                    {
                        ApplicationArea = All;
                        Caption = 'waldo''s Customer Card 🤪✌️';
                    }
                    field("No."; Rec."No.")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the customer''s number.';
                    }
                    field(Name; Rec.Name)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the customer''s name.';
                    }
                }
            }
        }
    }
}
