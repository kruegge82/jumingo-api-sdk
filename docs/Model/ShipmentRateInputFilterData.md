# # ShipmentRateInputFilterData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_time_until** | **int** | Latest delivery time | [optional]
**options** | **string[]** | Filter rates based on specific service options. Available options are: | ID | Description                           |  | ---| --------------------------------------| | 1  | No printer                            | | 3  | Pickup still today                    | | 4  | Flexible pickup time                  | | 5  | Delivery to a private address possible| | 6  | Extra insurance possible              | | [optional]
**package_types** | **int** | Filter rates by the supported packaging type. Available options are: | ID | Description         |  | ---| --------------------| | 1  | Document            | | 7  | Parcel              | | 9  | Bulky goods         | | 10 | Pallet              | | 11 | Tire                | | 14 | Suitcase            | | 15 | Non-stackable pallet| | [optional]
**price_max** | **int** | Filter rates that are &lt;&#x3D; the specified maximum price | [optional]
**shipper_groups** | **string[]** | Only return tariffs of a specific carrier. Any shipment rates call returns the full list of carrier ids that are currently available at JUMiNGO. | [optional]
**shipping_type** | **int** | The shipping type indicates whether the shipment must be dropped-off in a parcel shop or if it is picked up by a driver. Select 1 to receive only pickup rates and 2 to only receive drop-off rates. | [optional]
**tariff_types** | **string[]** | Only return specific services such as Standard (1), Express (2), Same Day (4) or Economy (5) rates. | [optional]
**time_max** | **int** | Max time | [optional]
**time_min** | **int** | Min time | [optional]
**transit_time_max** | **int** | Max time of transit | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
