tableextension 50101 "CSD Item Ext" extends item
{
    fields
    {
        field(50100; "CSD Subscription Item"; Boolean)
        {
            Caption = 'Subscription Item';
            FieldClass = FlowField;
            CalcFormula = Exist("CSD Subscription"
                WHERE("Item Number" = FIELD("No.")));
            Editable = false;
        }
    }
}