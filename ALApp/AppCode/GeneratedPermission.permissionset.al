permissionset 70020 "WH - Permission"
{
    Assignable = true;
    Permissions = tabledata "WH - Labels" = RIMD,
        table "WH - Labels" = X,
        codeunit "WH - LabelManagement" = X,
        codeunit "WH - SampleDataGenerator" = X,
        page "WH - Warehouses" = X,
        page "WH - WarehouseItemWithImage" = X,
        page "WH - LanguageResources" = X,
        page "WH - SamplePage" = X;
}