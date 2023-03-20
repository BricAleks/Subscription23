page 50103 "CSD Subscription Factbox"
{
    Caption = 'Subscription Factbox';
    PageType = Listpart;
    SourceTable = "CSD Customer Subscription";
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Subscription Code"; rec."Subscription Code")
                {
                    Caption = 'Subscription Code';
                    ApplicationArea = All;
                }
                field("Item No"; rec."Item No")
                {
                    Caption = 'Item No';
                    ApplicationArea = All;
                    Enabled = ShowItemField;
                }
                field("Customer No"; rec."Customer No")
                {
                    Caption = 'Customer No';
                    ApplicationArea = All;
                    Enabled = ShowCustFeld;
                }
                field("Cancelled Date"; rec."Cancelled Date")
                {
                    Caption = 'Cancelled Date';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        ShowItemField := rec.GetFilter("Customer No") <> '';
        ShowCustFeld := rec.GetFilter("Item No") <> '';
    end;

    var
        ShowItemField: Boolean;
        ShowCustFeld: Boolean;
}