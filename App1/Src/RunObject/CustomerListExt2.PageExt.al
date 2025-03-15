pageextension 50102 "Customer List Ext2" extends "Customer List"
{
    actions
    {
        addlast(Navigation)
        {
            action(OpenVendorList)
            {
                ApplicationArea = All;
                Image = Vendor;
                RunObject = Page "Vendor List";
            }
        }
    }
}