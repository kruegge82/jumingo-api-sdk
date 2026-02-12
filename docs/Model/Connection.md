# # Connection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Connection id | [optional]
**uuid** | **string** | identifier of connection | [optional]
**name** | **string** | Name of connection | [optional]
**connection_type_id** | **int** | identifier of connection type | [optional]
**active** | **int** | identifier whether connection active or not | [optional]
**last_synced** | **string** | identifier last sync date | [optional]
**init_sync** | **string** | identifier connection sync period | [optional]
**sync_period** | **string** | identifier whether connection active or not | [optional]
**send_tracking_mail** | **int** | identifier whether send tracking email or not | [optional]
**connection_details** | **string[]** | Connection details | [optional]
**status** | **string** | Connection status | [optional]
**message** | **string** |  | [optional]
**webhook_url** | **string** | Webhook url address | [optional]
**deleted** | **int** | identifier whether connection was deleted or not | [optional]
**created** | **\DateTime** | Connection creation date | [optional]
**modified** | **\DateTime** | Connection creation date | [optional]
**connection_type** | [**\kruegge82\jumingo\Model\ConnectionType**](ConnectionType.md) |  | [optional]
**sync_period_text** | **string** | Description of sync period | [optional]
**dates_aggregation** | [**\kruegge82\jumingo\Model\ConnectionDatesAggregationInner[]**](ConnectionDatesAggregationInner.md) |  | [optional]
**receive_webhook** | **bool** | Is receive webhook enabled for connection | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
