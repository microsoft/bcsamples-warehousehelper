page 70020 "WH - SamplePage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Warehouse Helper sample data';

    layout
    {
        area(Content)
        {
            label(Processing)
            {
                Caption = 'This is a sample page to generate data for the Warehouse Helper PowerApp';
            }
            part(itempart; "WH - ItemListPart")
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Items with GTIN numbers';
            }
        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(PromotedGenerateTestData; GenerateTestData)
            {

            }
        }
        area(Processing)
        {
            action(GenerateTestData)
            {
                ApplicationArea = All;
                Caption = 'Update Items with GTIN numbers';
                trigger OnAction()
                var
                    sampleDataGenerator: Codeunit "WH - SampleDataGenerator";
                begin
                    sampleDataGenerator.GenerateDemoDataForPowerApps();
                end;
            }
        }
    }
}