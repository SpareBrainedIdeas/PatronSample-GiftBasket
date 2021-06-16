pageextension 70040 "Customer List CGB" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field("Gift Basket Code CGB"; Rec."Gift Basket Code CGB")
            {
                ToolTip = 'Which Gift Basket this customer will get during the holidays.';
                ApplicationArea = All;
            }
        }
    }
}
