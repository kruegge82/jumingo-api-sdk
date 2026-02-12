# kruegge82\jumingo\CartApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postCartTotal()**](CartApi.md#postCartTotal) | **POST** /v1/cart/total | Get cart total |


## `postCartTotal()`

```php
postCartTotal($cart): \kruegge82\jumingo\Model\CartTotalOutput
```

Get cart total

Get cart total costs with a description of the calculations

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\CartApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$cart = new \kruegge82\jumingo\Model\CartTotalInput(); // \kruegge82\jumingo\Model\CartTotalInput | The List of shipment id and voucher code

try {
    $result = $apiInstance->postCartTotal($cart);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CartApi->postCartTotal: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cart** | [**\kruegge82\jumingo\Model\CartTotalInput**](../Model/CartTotalInput.md)| The List of shipment id and voucher code | |

### Return type

[**\kruegge82\jumingo\Model\CartTotalOutput**](../Model/CartTotalOutput.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
