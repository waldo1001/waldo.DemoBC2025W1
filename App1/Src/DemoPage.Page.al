page 50100 DemoPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {

    }

    actions
    {
        area(Processing)
        {
            action(Employees)
            {
                ApplicationArea = All;
                Caption = 'Employees';
                Image = Employee;
                RunObject = Page waldo.demo.employee."Employee List";
            }
            action(Continue)
            {
                ApplicationArea = All;
                Caption = 'Test Continue';
                Image = Continue;
                trigger OnAction()
                var
                    ContinueDemo: Codeunit "Continue Demo";
                begin
                    ContinueDemo.TestContinue();
                end;
            }
            action(Break)
            {
                ApplicationArea = All;
                Caption = 'Test Break';
                Image = Delete;
                trigger OnAction()
                var
                    BreakDemo: Codeunit "Continue Demo";
                begin
                    BreakDemo.TestBreak();
                end;
            }
            action(IncStr)
            {
                ApplicationArea = All;
                Caption = 'Test IncStr';
                Image = Edit;
                trigger OnAction()
                begin
                    Codeunit.Run(codeunit::"Demo IncStr");
                end;
            }
            action(ReadYaml)
            {
                ApplicationArea = All;
                Caption = 'Insert Demo Data';
                Image = Worksheet;
                RunObject = Codeunit InsertDemoData;
            }
            action(ResetYamlData)
            {
                ApplicationArea = All;
                Caption = 'Reset Yaml Data';
                Image = Restore;
                trigger OnAction()
                var
                    ResetYamlData: Codeunit "InsertDemoData";
                begin
                    ResetYamlData.ResetData();
                end;
            }
            action(ShowCallStack)
            {
                ApplicationArea = All;
                Caption = 'Show Call Stack';
                Image = Stages;
                trigger OnAction()
                begin
                    Codeunit.Run(codeunit::"GetCallStack Demo");
                end;
            }
        }
    }
}