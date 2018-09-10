table 123456704 "CSD Seminar Comment Line"
{
    Caption = 'CSD Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar", "Seminar Registration", "Posted Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
        }
        field(20; "Document Line No."; Integer)
        {
            Caption = '"Document Line No.';
            DataClassification = ToBeClassified;
        }

        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if("Table Name" = const (Seminar)) "CSD Seminar";
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(50; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(60; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }

        field(70; Comment; Text[80])
        {
            Caption = 'Comment';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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