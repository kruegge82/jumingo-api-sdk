# # OrderDocuments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order number | [optional]
**invoices_count** | **int** | Expected invoices count | [optional]
**proformas_count** | **int** | Expected proformas count | [optional]
**confirmations_count** | **int** | Expected order confirmations count | [optional]
**invoices** | [**\kruegge82\jumingo\Model\InvoiceDocument[]**](InvoiceDocument.md) |  | [optional]
**confirmations** | [**\kruegge82\jumingo\Model\ConfirmationDocument[]**](ConfirmationDocument.md) |  | [optional]
**proformas** | [**\kruegge82\jumingo\Model\ProformaDocument[]**](ProformaDocument.md) |  | [optional]
**labels** | [**\kruegge82\jumingo\Model\LabelDocument[]**](LabelDocument.md) |  | [optional]
**commercial_invoices** | [**\kruegge82\jumingo\Model\ShipmentFileDocument[]**](ShipmentFileDocument.md) |  | [optional]
**export_declarations** | [**\kruegge82\jumingo\Model\ShipmentFileDocument[]**](ShipmentFileDocument.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
