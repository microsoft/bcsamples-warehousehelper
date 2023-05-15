page 70023 "WH - Warehouses"
{
    PageType = API;
    Caption = 'Warehouses';

    APIPublisher = 'businessCentralDemos';
    APIGroup = 'warehouseHelper';
    APIVersion = 'beta';

    EntityName = 'warehouse';
    EntitySetName = 'warehouses';
    SourceTable = Location;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(code; Rec.Code)
                {
                    Editable = false;
                    Caption = 'Code';
                }
                field(displayName; Rec.Name)
                {
                    Editable = false;
                    Caption = 'Name';
                }
                field(city; Rec.City)
                {
                    Editable = false;
                    Caption = 'City';
                }

                field(useAsInTransit; Rec."Use As In-Transit")
                {
                    Editable = false;
                    Caption = 'Use As In-Transit';
                }
            }
        }
    }
}