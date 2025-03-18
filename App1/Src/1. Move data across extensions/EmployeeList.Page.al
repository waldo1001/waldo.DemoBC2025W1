namespace waldo.demo.employee;

page 50101 "Employee List"
{
    ApplicationArea = All;
    Caption = 'Employees';
    PageType = List;
    SourceTable = Employee;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee number.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee''s first name.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee''s last name.';
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee''s email address.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee''s phone number.';
                }
            }
        }
    }
}
