# kruegge82\jumingo\CarrierApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postAccessPointsSearch()**](CarrierApi.md#postAccessPointsSearch) | **POST** /v1/carrier/access-points-search | Get carrier aaccess points by an address with some radius in kilometers |


## `postAccessPointsSearch()`

```php
postAccessPointsSearch($access_point_search): \kruegge82\jumingo\Model\AccessPointsResponse[]
```

Get carrier aaccess points by an address with some radius in kilometers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\CarrierApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$access_point_search = new \kruegge82\jumingo\Model\PostAccessPointsSearchRequest(); // \kruegge82\jumingo\Model\PostAccessPointsSearchRequest

try {
    $result = $apiInstance->postAccessPointsSearch($access_point_search);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarrierApi->postAccessPointsSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **access_point_search** | [**\kruegge82\jumingo\Model\PostAccessPointsSearchRequest**](../Model/PostAccessPointsSearchRequest.md)|  | |

### Return type

[**\kruegge82\jumingo\Model\AccessPointsResponse[]**](../Model/AccessPointsResponse.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
