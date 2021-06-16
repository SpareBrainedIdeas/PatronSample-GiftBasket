pageextension 70041 "Customer Card CGB" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Gift Basket Code CGB"; Rec."Gift Basket Code CGB")
            {
                ToolTip = 'Which Gift Basket this customer will get during the holidays.';
                ApplicationArea = All;
            }
        }
    }
}
