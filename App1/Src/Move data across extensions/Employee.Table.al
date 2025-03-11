namespace waldo.demo.employee;

table 50100 "Employee"
{
    // ObsoleteState = Moved;
    // MovedTo = '934f6ed1-612e-4feb-a6e3-636eae0abf2d';

    Caption = 'Employee';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;
        }
        field(4; "Birth Date"; Date)
        {
            Caption = 'Birth Date';
            DataClassification = CustomerContent;
        }
        field(5; "Email"; Text[80])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
        }
        field(6; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}