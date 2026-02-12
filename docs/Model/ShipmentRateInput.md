# # ShipmentRateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **string** | The unique ID of the shipment |
**filter_data** | [**\kruegge82\jumingo\Model\ShipmentRateInputFilterData**](ShipmentRateInputFilterData.md) |  | [optional]
**delivery_date** | **\DateTime** | The latest permitted delivery date. |
**pickup_date** | **\DateTime** | The date on which the shipment is to be sent. |
**packaging_type_id** | **int** | Package type id | ID | Description         |  | ---| --------------------| | 1  | Document            | | 7  | Parcel              | | 9  | Bulky goods         | | 10 | Pallet              | | 11 | Tire                | | 14 | Suitcase            | | 15 | Non-stackable pallet| | [optional]
**pickup_date_mode** | [**\kruegge82\jumingo\Model\ShipmentPickupDateMode**](ShipmentPickupDateMode.md) |  | [optional]
**settings** | [**\kruegge82\jumingo\Model\ShipmentRateInputSettings**](ShipmentRateInputSettings.md) |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
