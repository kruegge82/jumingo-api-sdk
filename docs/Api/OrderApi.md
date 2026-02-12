# kruegge82\jumingo\OrderApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getAppOrderCollection()**](OrderApi.md#getAppOrderCollection) | **GET** /v1/orders | Retrieves the collection of Order resources. |
| [**postOrders()**](OrderApi.md#postOrders) | **POST** /v1/orders | Make a payment. |
| [**v1OrdersIdDocumentsGet()**](OrderApi.md#v1OrdersIdDocumentsGet) | **GET** /v1/orders/{id}/documents | Retrieves a OrderDocuments resource. |
| [**v1OrdersIdGet()**](OrderApi.md#v1OrdersIdGet) | **GET** /v1/orders/{id} | Retrieves a Order resource. |


## `getAppOrderCollection()`

```php
getAppOrderCollection($export, $payment_method, $payment_status, $created_before, $created_after, $sort_created, $sort_gross, $sort_order_number, $sort_unpaid, $search, $page, $items_per_page): \kruegge82\jumingo\Model\OrdersOutput[]
```

Retrieves the collection of Order resources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$export = 56; // int | Use this parameter with value 1 to export data. For example: 1
$payment_method = array('payment_method_example'); // string[] | Filter by array of exact payment method names. For example: [\"paypal\", \"sofort\"]
$payment_status = 'payment_status_example'; // string | Filter by Payment status number. Use prefix 1 for unpaid and 0 for paid\"
$created_before = 'created_before_example'; // string | Filter by created before the date and/or time. For example: \"2020-09-19T00:00:00.000\"
$created_after = 'created_after_example'; // string | Filter by created after the date and/or time.  For example: \"2020-09-19T00:00:00.000\"
$sort_created = 'sort_created_example'; // string | Sort by created.  For example: \"asc\"
$sort_gross = 'sort_gross_example'; // string | Sort by gross.  For example: \"desc\"
$sort_order_number = 'sort_order_number_example'; // string | Sort by orderNumber.  For example: \"asc\"
$sort_unpaid = 'sort_unpaid_example'; // string | Sort by unpaid.  For example: \"desc\"
$search = 'search_example'; // string | Full text search by data: - Shipping number - Tracking number - Pickup code - Sender address (return address) - Recipient address - Billing address - E-mail address (email_label_copy OR email_tracking)
$page = 56; // int | The collection page number
$items_per_page = 56; // int | The number of items per page, 10 by default

try {
    $result = $apiInstance->getAppOrderCollection($export, $payment_method, $payment_status, $created_before, $created_after, $sort_created, $sort_gross, $sort_order_number, $sort_unpaid, $search, $page, $items_per_page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->getAppOrderCollection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **export** | **int**| Use this parameter with value 1 to export data. For example: 1 | [optional] |
| **payment_method** | [**string[]**](../Model/string.md)| Filter by array of exact payment method names. For example: [\&quot;paypal\&quot;, \&quot;sofort\&quot;] | [optional] |
| **payment_status** | **string**| Filter by Payment status number. Use prefix 1 for unpaid and 0 for paid\&quot; | [optional] |
| **created_before** | **string**| Filter by created before the date and/or time. For example: \&quot;2020-09-19T00:00:00.000\&quot; | [optional] |
| **created_after** | **string**| Filter by created after the date and/or time.  For example: \&quot;2020-09-19T00:00:00.000\&quot; | [optional] |
| **sort_created** | **string**| Sort by created.  For example: \&quot;asc\&quot; | [optional] |
| **sort_gross** | **string**| Sort by gross.  For example: \&quot;desc\&quot; | [optional] |
| **sort_order_number** | **string**| Sort by orderNumber.  For example: \&quot;asc\&quot; | [optional] |
| **sort_unpaid** | **string**| Sort by unpaid.  For example: \&quot;desc\&quot; | [optional] |
| **search** | **string**| Full text search by data: - Shipping number - Tracking number - Pickup code - Sender address (return address) - Recipient address - Billing address - E-mail address (email_label_copy OR email_tracking) | [optional] |
| **page** | **int**| The collection page number | [optional] |
| **items_per_page** | **int**| The number of items per page, 10 by default | [optional] |

### Return type

[**\kruegge82\jumingo\Model\OrdersOutput[]**](../Model/OrdersOutput.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postOrders()`

```php
postOrders($order): \kruegge82\jumingo\Model\OrdersPostOutput
```

Make a payment.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order = new \kruegge82\jumingo\Model\OrdersPostInput(); // \kruegge82\jumingo\Model\OrdersPostInput

try {
    $result = $apiInstance->postOrders($order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->postOrders: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order** | [**\kruegge82\jumingo\Model\OrdersPostInput**](../Model/OrdersPostInput.md)|  | [optional] |

### Return type

[**\kruegge82\jumingo\Model\OrdersPostOutput**](../Model/OrdersPostOutput.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersIdDocumentsGet()`

```php
v1OrdersIdDocumentsGet($id): \kruegge82\jumingo\Model\OrderDocuments
```

Retrieves a OrderDocuments resource.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Order number

try {
    $result = $apiInstance->v1OrdersIdDocumentsGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->v1OrdersIdDocumentsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Order number | |

### Return type

[**\kruegge82\jumingo\Model\OrderDocuments**](../Model/OrderDocuments.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersIdGet()`

```php
v1OrdersIdGet($id): \kruegge82\jumingo\Model\OrderOutput
```

Retrieves a Order resource.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->v1OrdersIdGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->v1OrdersIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\kruegge82\jumingo\Model\OrderOutput**](../Model/OrderOutput.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
