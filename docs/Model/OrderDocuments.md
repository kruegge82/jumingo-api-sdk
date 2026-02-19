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
**proformas** | [**array<string,\kruegge82\jumingo\Model\ProformaDocument>**](ProformaDocument.md) | Map of proforma documents keyed by document id (e.g. s_...). | [optional]
**labels** | [**array<string,\kruegge82\jumingo\Model\LabelDocument>**](LabelDocument.md) | Map of label documents keyed by document id (e.g. s_...). | [optional]
**commercial_invoices** | [**array<string,\kruegge82\jumingo\Model\ShipmentFileDocument>**](ShipmentFileDocument.md) | Map of commercial invoice documents keyed by document id (e.g. s_...). | [optional]
**export_declarations** | [**array<string,\kruegge82\jumingo\Model\ShipmentFileDocument>**](ShipmentFileDocument.md) | Map of export declaration documents keyed by document id (e.g. s_...). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
