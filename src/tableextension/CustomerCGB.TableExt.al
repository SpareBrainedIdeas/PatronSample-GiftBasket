tableextension 70040 "Customer CGB" extends Customer
{
    fields
    {
        field(70040; "Gift Basket Code CGB"; Code[20])
        {
            Caption = 'Gift Basket Code';
            DataClassification = ToBeClassified;
            TableRelation = "Gift Basket CGB";
        }
    }
}
