table 70040 "Gift Basket Setup CGB"
{
    Caption = 'Gift Basket Setup';
    DataClassification = SystemMetadata;
    DrillDownPageId = "Gift Basket Setup CGB";

    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }

        field(10; "Enable Gift Default"; Boolean)
        {
            Caption = 'Enable Gift Default';
            DataClassification = SystemMetadata;
        }

        field(20; "Company Default Gift Basket"; Code[20])
        {
            Caption = 'Company Default Gift Basket';
            DataClassification = SystemMetadata;
            TableRelation = "Gift Basket CGB";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Rec.Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    var
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert(true);
        end;
    end;


}