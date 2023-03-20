pageextension 50101 "CSD Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Subscription Customer"; Rec."Subscription Customer")
            {
                Caption = 'Subscription Customer';
                ApplicationArea = All;
            }
        }
        addfirst(FactBoxes)
        {
            part("Subscription Factbox"; "CSD Subscription Factbox")
            {
                SubPageLink = "Customer No" = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter(Contact)
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Customer No" = FIELD("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }
}