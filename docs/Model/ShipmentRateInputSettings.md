# # ShipmentRateInputSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mode** | **string** | Setting modes for shipment tariff.  Use &#39;m&#39; for a regular call to fetch rates. This will return the same results as the shipping cost calculation on the JUMiNGO homepage. Use &#39;a&#39; to get available Same Day rates. Use &#39;single&#39; to fetch data about a single tariff. If used, tariffID needs to be set in the request as well. |
**tariff_id** | **string** | Tarriff id | [optional]
**get_external_tariffs** | **bool** | allow to get external tariffs | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
