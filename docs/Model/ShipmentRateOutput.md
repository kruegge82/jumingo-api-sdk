# # ShipmentRateOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | identifier of shipment rate | [optional]
**shipper_groups** | **object** | Map of shipper groups keyed by index | [optional]
**countries** | [**\kruegge82\jumingo\Model\ShipmentRateOutputCountriesInner[]**](ShipmentRateOutputCountriesInner.md) |  | [optional]
**status** | **string** | Status of response | [optional]
**from_country_code** | **string** | From country code | [optional]
**to_country_code** | **string** | From country code | [optional]
**pickup_country_holidays** | [**\kruegge82\jumingo\Model\ShipmentRateOutputPickupCountryHolidays**](ShipmentRateOutputPickupCountryHolidays.md) |  | [optional]
**insurance** | [**\kruegge82\jumingo\Model\ShipmentRateOutputInsurance**](ShipmentRateOutputInsurance.md) |  | [optional]
**export_declaration** | [**\kruegge82\jumingo\Model\ShipmentRateOutputExportDeclaration**](ShipmentRateOutputExportDeclaration.md) |  | [optional]
**api_tariff_mode** | **string** | Api tariff mode | [optional]
**is_search_request** | **bool** | Is search request | [optional]
**packaging_type_id** | **int** | Package type id | [optional]
**details** | [**\kruegge82\jumingo\Model\ShipmentRateOutputDetails**](ShipmentRateOutputDetails.md) |  | [optional]
**package_types** | [**\kruegge82\jumingo\Model\PackageType[]**](PackageType.md) |  | [optional]
**billing** | [**\kruegge82\jumingo\Model\ShipmentAddress**](ShipmentAddress.md) |  | [optional]
**from** | [**\kruegge82\jumingo\Model\ShipmentAddress**](ShipmentAddress.md) |  | [optional]
**to** | [**\kruegge82\jumingo\Model\ShipmentAddress**](ShipmentAddress.md) |  | [optional]
**packages** | [**\kruegge82\jumingo\Model\ShipmentPackage[]**](ShipmentPackage.md) |  | [optional]
**tariffs** | [**\kruegge82\jumingo\Model\Tariff[]**](Tariff.md) |  | [optional]
**summary** | [**\kruegge82\jumingo\Model\ShipmentRateSummary**](ShipmentRateSummary.md) |  | [optional]
**quick_filters** | [**\kruegge82\jumingo\Model\ShipmentRateOutputQuickFiltersInner[]**](ShipmentRateOutputQuickFiltersInner.md) |  | [optional]
**seo_data** | **bool** |  | [optional]
**service_options** | **string[]** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
