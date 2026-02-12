# # ConnectionCustomData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_number** | **string** | Order number |
**order_date** | **\DateTime** | Order date |
**order_status** | **string** | Order Status |
**sub_total_amount** | **float** | Subtotal |
**sub_total_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  |
**tax_amount** | **float** | Tax amount |
**tax_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  |
**shipping_cost_amount** | **float** | Shipping costs of the order |
**shipping_cost_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  |
**total_amount** | **float** | Total |
**total_currency** | [**\kruegge82\jumingo\Model\Currency**](Currency.md) |  |
**shipping_method** | **string** | Customer-selected delivery method |
**earliest_delivery_date** | **\DateTime** | Earliest delivery date | [optional]
**latest_delivery_date** | **\DateTime** | Latest delivery date | [optional]
**payment_method** | **string** | Payment method | [optional]
**payment_date** | **\DateTime** | Payment date | [optional]
**buyer_name** | **string** | Full name of the buyer |
**buyer_email** | **string** | Email address of the buyer | [optional]
**buyer_tax_id** | **string** | Tax number of the buyer | [optional]
**sale_channel** | **string** | Sales channel | [optional]
**notes** | **string** | Custom notes about the order | [optional]
**items** | [**\kruegge82\jumingo\Model\ConnectionCustomDataItem[]**](ConnectionCustomDataItem.md) | Items of the order |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
