table 123456700 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Setup';
    fields
    {
        field(10; "Primary Key"; code[10])
        {
            Caption = 'Primary Key';
        }

        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
        }

        field(30; "Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';

            TableRelation = "No. Series";
        }

        field(40; "Posted Seminar Reg. Nos."; code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';

            TableRelation = "No. Series";
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
      

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}