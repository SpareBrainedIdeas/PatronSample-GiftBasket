codeunit 70041 "Update Existing Customers CGB"
{

    procedure UpdateExistingCustomers()
    var
        Customer: Record Customer;
        GiftBasketSetupCGB: Record "Gift Basket Setup CGB";
        CustomersUpdatedMsg: Label '%1 Customers updated to the default (%2)';
        CustomersUpdated: Integer;
    begin
        GiftBasketSetupCGB.GetRecordOnce();
        Customer.SetFilter("Gift Basket Code CGB", '''''');
        CustomersUpdated := Customer.Count();
        Customer.ModifyAll("Gift Basket Code CGB", GiftBasketSetupCGB."Company Default Gift Basket", true);
        if GuiAllowed() then
            Message(CustomersUpdatedMsg, CustomersUpdated, GiftBasketSetupCGB."Company Default Gift Basket");
    end;

}
