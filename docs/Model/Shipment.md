# # Shipment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The unique ID of the shipment | [optional]
**customer_number** | **int** | Your customer number | [optional]
**customer_personal_name** | **string** | Your personal name, it&#39;s allowed only if you are a team member | [optional]
**created** | **\DateTime** | Creation date of the shipment | [optional]
**last_modified** | **\DateTime** | Date on which the shipment was last modified | [optional]
**status** | **string** | The processing status of the shipment | [optional]
**source** | **string** | The data source of the shipment | [optional]
**from_address** | [**\kruegge82\jumingo\Model\ShipmentAddress**](ShipmentAddress.md) |  | [optional]
**to_address** | [**\kruegge82\jumingo\Model\ShipmentAddress**](ShipmentAddress.md) |  | [optional]
**details** | [**\kruegge82\jumingo\Model\ShipmentDetails**](ShipmentDetails.md) |  | [optional]
**customs_invoice** | [**\kruegge82\jumingo\Model\CustomsInvoiceOutput**](CustomsInvoiceOutput.md) |  | [optional]
**packages** | [**\kruegge82\jumingo\Model\ShipmentPackage[]**](ShipmentPackage.md) | Packages of the shipment | [optional]
**connection** | [**\kruegge82\jumingo\Model\ShipmentConnection**](ShipmentConnection.md) |  | [optional]
**rate** | [**\kruegge82\jumingo\Model\ShipmentRate**](ShipmentRate.md) |  | [optional]
**tracking** | [**\kruegge82\jumingo\Model\ShipmentTracking**](ShipmentTracking.md) |  | [optional]
**dates_in_the_past** | **bool** | Is pickup or delivery dates in the past according country timezones. | [optional]
**settings** | [**\kruegge82\jumingo\Model\ShipmentSettings**](ShipmentSettings.md) |  | [optional]
**picked_up** | **bool** | The parcel had not been collected successfully during the initial pickup time frame. | [optional]
**update_ordered_delivery_address_allowed** | **bool** | Parameter to show can we update delivery address for an already ordered shipment or not | [optional]
**pickup_status** | **int** | Statuses for a new pickup: &#39;0&#39; - default status; &#39;1&#39; - &#39;schedule a new pickup&#39; email has been sent; &#39;2&#39; - second pickup scheduled; &#39;3&#39; - support email after failed second pickup has been sent; | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
