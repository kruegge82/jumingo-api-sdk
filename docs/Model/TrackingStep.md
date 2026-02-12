# # TrackingStep

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **string** | Date of tracking information | [optional]
**time** | **string** | Time of tracking information | [optional]
**type** | **string** | The type of tracking information. The text comes directly from the respective carrier. This is usually a free text, which is very different depending on the carrier. As a rule, one cannot rely on the expressiveness of the texts; in addition, the texts could be changed by the carrier at any time. Please always read the actual tracking status from the ShipmentTracking&#39;s status field. | [optional]
**location** | **string** | The location of the scan. The text comes directly from the respective carrier. The format and information density varies considerably depending on the carrier and region. Mostly the country code is included, sometimes also the city. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
