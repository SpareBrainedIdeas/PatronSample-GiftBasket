codeunit 70040 "Gift Basket Cust. Event CGB"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure DefaultCustomerGiftBasket(var Rec: Record Customer; RunTrigger: Boolean)
    var
        GiftBasketSetupCGB: Record "Gift Basket Setup CGB";
        UserSetup: Record "User Setup";
    begin
        if not RunTrigger then
            exit;

        GiftBasketSetupCGB.GetRecordOnce();

        if not GiftBasketSetupCGB."Enable Gift Default" then
            exit;

        if UserSetup.Get(UserId()) and (UserSetup."Gift Basket Code CGB" <> '') then
            Rec."Gift Basket Code CGB" := UserSetup."Gift Basket Code CGB"
        else
            Rec."Gift Basket Code CGB" := GiftBasketSetupCGB."Company Default Gift Basket";
        Rec.Modify(true);
    end;
}
