# # CreateShipmentConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_uuid** | **string** | The ID of the connection to be used. Each connected e-commerce system has a Connection ID. An overview of the systems including the IDs can be found in your user account. |
**connection_item_uuid** | **string** | Your individual item ID of the shipment. Mostly corresponds to the order number in your shop. Item IDs must be unique. Required for shop / e-commerce connections, optional for API connections. | [optional]
**validation_mode** | **string** | This sets the validation mode. In strict mode, each validation error (e.g. more characters than allowed) results in an error response. In lax mode, the shipment is created despite validation errors. Incorrect values are removed or shortened accordingly. The lax validation mode is intended to be able to safely import the shipments from e-commerce systems and to complete them afterwards. | [optional] [default to 'strict']
**connection_custom_data** | [**\kruegge82\jumingo\Model\ConnectionCustomData**](ConnectionCustomData.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
