# kruegge82\jumingo\ShipmentRateApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postShipmentRates()**](ShipmentRateApi.md#postShipmentRates) | **POST** /v1/shipment-rates | Returns shipment rates for a given shipment. |


## `postShipmentRates()`

```php
postShipmentRates($shipment_rate): \kruegge82\jumingo\Model\ShipmentRateOutput
```

Returns shipment rates for a given shipment.

With this endpoint you can fetch available shipment rates for a given shipment. It is necessary to include a valid shipmentId in the request body. Best practice is to create a shipment first, including the sender and delivery address, the packaging type and all package dimensions. The returned shipment ID can be used in the shipment-rates call to get all available rates for this shipment from the JUMiNGO system.  **Minimum input** replace shipment id with shipment from your account to receive available rates. Although it is not required to include the packaging type ID in the request, the results will be more relevant if you add one. ```   {     \"shipmentId\":\"s_2b28a63d65684f0aa4bcca24dafdc9df\",     \"filterData\": {       \"timeMax\": 1440,       \"timeMin\": 0     },     \"settings\":{       \"mode\":\"m\"     }   } ``` **Get data for a single rate** replace shipment id with shipment from your account and valid tariffId that is suitable for this shipment id ```   {     \"shipmentId\": \"s_2b28a63d65684f0aa4bcca24dafdc9df\",     \"filterData\": {       \"timeMax\": 1440,       \"timeMin\": 0     },                 \"settings\": {       \"mode\": \"single\",       \"tariffId\": \"s-420\"     }   } ```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentRateApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment_rate = new \kruegge82\jumingo\Model\ShipmentRateInput(); // \kruegge82\jumingo\Model\ShipmentRateInput

try {
    $result = $apiInstance->postShipmentRates($shipment_rate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentRateApi->postShipmentRates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment_rate** | [**\kruegge82\jumingo\Model\ShipmentRateInput**](../Model/ShipmentRateInput.md)|  | [optional] |

### Return type

[**\kruegge82\jumingo\Model\ShipmentRateOutput**](../Model/ShipmentRateOutput.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
