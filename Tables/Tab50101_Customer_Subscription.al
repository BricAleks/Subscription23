table 50101 "CSD Customer Subscription"
{
    DataClassification = ToBeClassified;
    Caption = 'Customer Subscription';
    fields
    {
        field(1; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer;
        }
        field(2; "Subscription Code"; Code[10])
        {
            Caption = 'Subscription Code';
            TableRelation = "CSD Subscription";

            trigger OnValidate()
            var
                Subscription: Record "CSD Subscription";
                Item: Record Item;
            begin
                if "Subscription Code" <> xRec."Subscription Code" then
                    xRec.TestField("Last Invoice Date", 0D);
                Subscription.Get("Subscription Code");
                Subscription.TestField("Invoicing Frequencies");
                Subscription.TestField("Item Number");
                "Item No" := Subscription."Item Number";
                Item.Get("Item No");
                Subscription."Deferral Code" := item."Default Deferral Template Code";
                IF Subscription."Invoicing Price" <> 0 then
                    "Invoicing Price" := Subscription."Invoicing Price";
                if "Invoicing Price" = 0 then
                    "Invoicing Price" := Item."Unit Price";
                case Subscription."Invoicing Schedule" of
                    Subscription."Invoicing Schedule"::"Beggining of Next Period":
                        "Start Date" := CalcDate('<CM+1D>', WorkDate());

                    Subscription."Invoicing Schedule"::"Beggining of Period":
                        "Start Date" := CalcDate('-<CM>', WorkDate());

                    Subscription."Invoicing Schedule"::"Posting Date":
                        "Start Date" := WORKDATE;
                END;
                "Next Invoicing Date" := "Start Date";
                Active := true;
            end;
        }
        field(3; "Item No"; code[20])
        {
            Caption = 'Item No';
            TableRelation = Item;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(5; "Last Invoice Date"; Date)
        {
            Caption = 'Last Invoice Date';
            Editable = false;
        }
        field(6; "Next Invoicing Date"; Date)
        {
            Caption = 'Next Invoicing Date';
        }
        field(7; "Cancelled Date"; date)
        {
            Caption = 'Cancelled Date';
        }
        field(8; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(9; "Invoicing Price"; Decimal)
        {
            Caption = 'Invoicing Price';
        }
        field(10; "Allow Line Discount"; Boolean)
        {
            Caption = 'Allow Line Discount';
        }
    }
    keys
    {
        key(PK; "Customer No", "Subscription Code")
        {
            Clustered = true;
        }
    }

}