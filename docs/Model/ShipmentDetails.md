# # ShipmentDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value_amount** | **int** | Goods value of the consignment; needed for the customs | [optional]
**value_currency** | [**\kruegge82\jumingo\Model\CurrencyCode**](CurrencyCode.md) |  | [optional]
**content_description** | **string** | Description of the contents of the package(s); needed for the customs | [optional]
**reference_number** | **string** | A reference text that you can use to identify your shipment, e.g. an order number of your merchandise management system. Will be printed on the shipping label in most cases. | [optional]
**email** | **string** | Is always the email address of your customer account | [optional]
**email_tracking** | **string** | If specified, after the order has been placed, an email will be sent to this email address with the tracking link | [optional]
**email_label_copy** | **string** | If specified, after the order has been placed, an additional email with the shipping label will be sent to this email address | [optional]
**insurance_amount** | **int** | Amount of additional insurance value | [optional]
**insurance_currency** | **string** |  | [optional]
**extra_insurance_price_netto** | **string** | Amount of extra insurance value netto | [optional]
**extra_insurance_price_brutto** | **string** | Amount of extra insurance value brutto | [optional]
**export_license** | **bool** | Indicate if you need an export license and want to buy it along with the shipment | [optional]
**extra_insurance_value** | **int** | Amount of extra insurance value | [optional]
**extra_insurance_type** | **string** | Type of insurance. Possible values: standard | premium | [optional] [default to 'standard']
**export_license_price_brutto** | **string** | Amount of extra license price brutto | [optional]
**shipment_order_number_short** | **string** | Shipment order number (only after the order has been placed) | [optional]
**shipment_order_number** | **string** | Order number (only after the order has been placed) | [optional]
**packaging_type** | [**\kruegge82\jumingo\Model\PackagingType**](PackagingType.md) |  | [optional]
**hs_tariff_number** | **string** | Hs number for import/export goods defining the type of the good for customs. | [optional]
**extra_export_license_number** | **string** | Extra export license number | [optional]
**settings** | **object** | Custom settings | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
