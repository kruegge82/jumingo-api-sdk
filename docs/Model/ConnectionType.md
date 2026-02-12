# # ConnectionType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Connection id | [optional]
**version** | **int** | Connection version | [optional]
**description** | [**\kruegge82\jumingo\Model\ConnectionTypeDescription**](ConnectionTypeDescription.md) |  | [optional]
**form_fields** | [**\kruegge82\jumingo\Model\ConnectionTypeFormFieldsInner[]**](ConnectionTypeFormFieldsInner.md) |  | [optional]
**is_creation_via_api_allowed** | **bool** | Indicates whether the connection and shipments can only be created via api or via an account | [optional]
**is_visible** | **bool** | Indicates whether the connection in the account can be selected when creating a new one | [optional]
**is_syncable** | **bool** | Indicates whether the jumingo account can be synced with a button (ebay, amazon) or not (api, plugins) | [optional]
**show_api_token** | **bool** | Specifies whether the api token should be displayed (for api and shop plugins) | [optional]
**has_create_form** | **bool** | Indicates whether a connection is created via form or not (from external via shop plugin) | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
