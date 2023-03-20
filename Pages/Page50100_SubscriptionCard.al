page 50100 "CSD Subscription Card"
{
    Caption = 'Subscription Card';
    PageType = Card;
    SourceTable = "CSD Subscription";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Item No"; Rec."Item Number")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Schedule"; Rec."Invoicing Schedule")
                {
                    ApplicationArea = all;
                }
                field("Invoicing Frequence"; Rec."Invoicing Frequencies")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}