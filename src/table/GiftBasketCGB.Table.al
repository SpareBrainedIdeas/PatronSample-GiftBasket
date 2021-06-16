table 70041 "Gift Basket CGB"
{
    Caption = 'Gift Basket';
    DataClassification = ToBeClassified;
    DrillDownPageId = "Gift Baskets CGB";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(10; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
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
