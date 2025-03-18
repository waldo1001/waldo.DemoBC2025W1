page 50102 "Power BI Demo"
{
    Caption = 'Power BI Demo';
    PageType = UserControlHost;

    layout
    {
        area(content)
        {
            usercontrol(PowerBIMgt; PowerBIManagement)
            {
                ApplicationArea = All;

                trigger ControlAddInReady()
                begin
                    //...
                end;
            }
        }
    }


}