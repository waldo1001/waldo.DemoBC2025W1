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
                Promoted = true;
                RunObject = Page waldo.demo.employee."Employee List";
            }
        }
    }
}