table 50100 "CSD Subscription"
{
    Caption = 'CSD Subscription';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Item Number"; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Item Number';
            TableRelation = Item;
        }
        field(4; "Invoicing Schedule"; Option)
        {
            Caption = 'Invoicing Schedule';
            OptionMembers = "Posting Date","Beggining of Period","End of Period","Beggining of Next Period";
            OptionCaption = 'Posting Date, Beggining of Period, End of Period, Beggining of Next Period';

        }
        field(5; "Invoicing Frequencies"; DateFormula)
        {
            Caption = 'Invoicing Frequencies';
            DataClassification = CustomerContent;
        }
        field(6; "Invoicing Price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Invoicing Price';
        }
        field(7; "Deferral Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template";
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}