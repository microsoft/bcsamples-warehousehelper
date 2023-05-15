page 70027 "WH - LocaleInformation"
{
    PageType = API;
    Caption = 'Business Central Localization information for PowerApps';
    EntityName = 'LocaleInformation';
    EntitySetName = 'LocaleInformation';

    APIPublisher = 'businessCentralDemos';
    APIGroup = 'warehouseHelper';
    APIVersion = 'beta';

    SourceTable = "Company Information";
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'System ID';
                }
                field(DisplayName; Rec.Name)
                {
                    Caption = 'Display Name';
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                }
                field(powerAppLocale; 'en-us')
                {
                    caption = 'PowerApp Locale';
                }
            }
        }
    }
}