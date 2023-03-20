page 50102 "CSD Customer Subscriptions"
{
    PageType = List;
    SourceTable = "CSD Customer Subscription";
    Caption = 'Customer Subscriptions';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    Enabled = ShowCustomerField;
                }
                field("Subscription Code"; Rec."Subscription Code")
                {
                    ApplicationArea = All;
                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("Last Invoice Date"; Rec."Last Invoice Date")
                {
                    ApplicationArea = All;
                }
                field("Next Invoicing Date"; Rec."Next Invoicing Date")
                {
                    ApplicationArea = All;
                }
                field("Cancelled Date"; Rec."Cancelled Date")
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                }
            }



    var
        ShowCustomerField: Boolean;
}