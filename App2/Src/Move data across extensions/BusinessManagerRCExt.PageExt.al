pageextension 50200 "Business Manager RC Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(embedding)
        {
            action("DemoPage")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'DemoPage - App 2';
                RunObject = Page "DemoPage - App 2";
            }
        }
    }

}