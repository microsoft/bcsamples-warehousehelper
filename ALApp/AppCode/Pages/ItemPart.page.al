page 70025 "WH - ItemListPart"
{
    PageType = ListPart;
    SourceTable = Item;
    SourceTableView = where(GTIN = filter(<> ''));

    layout
    {
        area(Content)
        {
            repeater(CustomerInformation)
            {
                field(ItemNumber; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(ItemName; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(GTIN; Rec.GTIN)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}