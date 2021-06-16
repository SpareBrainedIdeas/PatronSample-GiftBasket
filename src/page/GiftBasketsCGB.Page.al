page 70041 "Gift Baskets CGB"
{
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Gift Baskets';
    PageType = List;
    SourceTable = "Gift Basket CGB";
    CardPageId = "Gift Basket CGB";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Code field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
