page 123456702 "Seminar List"
{
    PageType = List;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.") { }
                field(Name; Name) { }
                field("Seminar Duration"; "Seminar Duration") { }
                field("Seminar Price"; "Seminar Price") { }
                field("Minimum Participants"; "Minimum Participants") { }
                field("Maximum Participants"; "Maximum Participants") { }
            }
        }
        area(factboxes)
        {
            systempart("Links"; Links) { }
            systempart("Notes"; Notes) { }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                  //  RunObject = page "CSD Seminar Comment Sheet";
                   // RunPageLink = "Table Name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;
                }
            }
        }
    }
}