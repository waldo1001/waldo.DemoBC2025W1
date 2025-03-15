report 50100 "My Simple Report"
{
    Caption = 'My Simple Report';
    ToolTip = 'This is a simple report.';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(Address; Address)
            {
                IncludeCaption = true;
            }
            column(City; City)
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    Caption = 'Options';
                }
            }
        }
    }
}