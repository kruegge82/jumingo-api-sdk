# # ShipmentTrackingData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **string** |  | [optional]
**tracking_number** | **string** |  | [optional]
**status_text** | **string** |  | [optional]
**from** | [**\kruegge82\jumingo\Model\TrackingAddress**](TrackingAddress.md) |  | [optional]
**to** | [**\kruegge82\jumingo\Model\TrackingAddress**](TrackingAddress.md) |  | [optional]
**carrier** | [**\kruegge82\jumingo\Model\ShipmentTrackingDataCarrier**](ShipmentTrackingDataCarrier.md) |  | [optional]
**steps** | [**\kruegge82\jumingo\Model\TrackingStep[]**](TrackingStep.md) | Contains detailed tracking information | [optional]
**status** | **string** | Tracking status of the shipment | [optional]
**step_dates** | **object[]** |  | [optional]
**dates** | [**\kruegge82\jumingo\Model\TrackingDates**](TrackingDates.md) |  | [optional]
**infos** | **object[]** |  | [optional]
**progress** | **object[]** |  | [optional]
**carrier_list** | **object** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
