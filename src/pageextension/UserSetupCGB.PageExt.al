pageextension 70042 "User Setup CGB" extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {

            field("Gift Basket Code CGB"; Rec."Gift Basket Code CGB")
            {
                ToolTip = 'When Customers are created by this User, which Gift Basket to use as the default.';
                ApplicationArea = All;
            }
        }
    }
}
