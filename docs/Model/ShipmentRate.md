# # ShipmentRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier** | **string** | Name of the carrier | [optional]
**service** | **string** | Name of the service | [optional]
**shipping_type** | **string** | The shipping type indicates whether the shipment must be delivered in a shop or picked up by a driver. | [optional]
**transit_time_range_days** | **string** | Specifies the minimum and maximum delivery time in working days that the shipment is expected to be on its way. | [optional]
**max_included_liability_amount** | **int** | The maximum included liability amount of this rate | [optional]
**max_included_liability_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  | [optional]
**printer_required** | **bool** | Indicates whether a printer is required to print the shipping label. | [optional]
**company_only** | **bool** | A commercial pick-up address is required for this rate. | [optional]
**price_net** | **float** | Net price | [optional]
**price_net_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  | [optional]
**price_total** | **float** | Total | [optional]
**price_total_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  | [optional]
**tax_free** | **bool** | Indicates whether the shipment is tax-free | [optional]
**tax_rate** | **float** | Tax rate in percent | [optional]
**tax_country** | [**\kruegge82\jumingo\Model\Country**](Country.md) |  | [optional]
**tax_name** | **string** | Name of the tax | [optional]
**pickup_date** | **\DateTime** | The date for which the collection was arranged. | [optional]
**pickup_min_time** | **string** | The earliest time at which the shipment is picked up. | [optional]
**pickup_max_time** | **string** | The latest time by which the shipment is picked up. | [optional]
**pickup_reference_number** | **string** | A reference number with which the collection can be checked. | [optional]
**delivery_date_min** | **\DateTime** | Earliest delivery date | [optional]
**delivery_date_max** | **\DateTime** | Latest delivery date | [optional]
**delivery_time_until** | **string** | Latest delivery time | [optional]
**duration_formatted** | **string** | A formatted duration description with translation | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
