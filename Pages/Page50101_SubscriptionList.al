page 50101 "CSD Subscription List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Subscription";
    Editable = false;
    CardPageId = "CSD Subscription Card";
    Caption = 'Subscription List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Item Number"; Rec."Item Number")
                {
                    ApplicationArea = All;
                    Caption = 'Item Number';
                }
                field("Invoicing Schedule"; Rec."Invoicing Schedule")
                {
                    ApplicationArea = All;
                    Caption = 'Invoicing Schedule';
                }
                field("Invoicing Frequencies"; Rec."Invoicing Frequencies")
                {
                    ApplicationArea = All;
                    Caption = 'Invoicing Frequencies';
                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                    Caption = 'Invoicing Price';
                }

            }

        }
    }


}