page 70040 "Gift Basket Setup CGB"
{

    PageType = Card;
    SourceTable = "Gift Basket Setup CGB";
    Caption = 'Gift Basket Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            group(General)
            {

                field("Enable Gift Default"; Rec."Enable Gift Default")
                {
                    ToolTip = 'Should new Customers receive a Gift Basket setting automatically?';
                    ApplicationArea = All;
                }
                field("Company Default Gift Basket"; Rec."Company Default Gift Basket")
                {
                    ToolTip = 'If no User Setup "Gift Basket" is configured, use this as the fallback.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(UpdateToDefault)
            {
                Caption = 'Update Customers';
                ToolTip = 'Update all Customers with a blank Gift Basket Code to the Default.';
                ApplicationArea = All;
                Image = AddAction;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    UpdExistingCustomersCGB: Codeunit "Update Existing Customers CGB";
                begin
                    UpdExistingCustomersCGB.UpdateExistingCustomers();
                end;
            }

        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
