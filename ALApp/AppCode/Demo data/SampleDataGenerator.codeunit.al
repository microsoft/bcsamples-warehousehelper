codeunit 70021 "WH - SampleDataGenerator"
{
    procedure GenerateDemoDataForPowerApps()
    begin
        GenerateDemoDataForTakeWarehouseHelper();
    end;

    procedure GenerateDemoDataForTakeWarehouseHelper()
    begin
        // Set up barcodes for items
        UpdateItemWithGTIN('1928-S', '5901234123457');
        UpdateItemWithGTIN('SP-SCM1004', '9312345678907');
        UpdateItemWithGTIN('1906-S', '9780201379624');
        UpdateItemWithGTIN('1980-S', '9780201376532');
    end;

    procedure UpdateItemWithGTIN(itemNumber: Text; gtin: Text)
    var
        itemRecord: Record Item;
    begin
        if itemRecord.Get(itemNumber) then begin
            itemRecord.Validate(GTIN, gtin);
            itemRecord.Modify(true);
        end;
    end;
}