page 123456706 "CSD Seminar Comment Line"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date) { }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment) { }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}