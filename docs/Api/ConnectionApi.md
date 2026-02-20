# kruegge82\jumingo\ConnectionApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createConnection()**](ConnectionApi.md#createConnection) | **POST** /v1/connections | Create a Connection |
| [**getConnection()**](ConnectionApi.md#getConnection) | **GET** /v1/connections/{uuid} | Get the Connection |
| [**getConnections()**](ConnectionApi.md#getConnections) | **GET** /v1/connections | Retrieves the collection of Connection resources. |


## `createConnection()`

```php
createConnection($body): \kruegge82\jumingo\Model\CreateConnectionResult
```

Create a Connection

Creates a new connection.  **This API call is for e-commerce / shop plugin developers only.**  As a registered plugin developer, you have received additional, separate information for this call. If you would like to create a new shop plugin, please contact our customer support for more information.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ConnectionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \kruegge82\jumingo\Model\CreateConnection(); // \kruegge82\jumingo\Model\CreateConnection

try {
    $result = $apiInstance->createConnection($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConnectionApi->createConnection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | [**\kruegge82\jumingo\Model\CreateConnection**](../Model/CreateConnection.md)|  | |

### Return type

[**\kruegge82\jumingo\Model\CreateConnectionResult**](../Model/CreateConnectionResult.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getConnection()`

```php
getConnection($uuid): \kruegge82\jumingo\Model\Connection
```

Get the Connection

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ConnectionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$uuid = 'uuid_example'; // string | Connection uuid. For example: s_d6694ae6eb37465a81c35ebaa0045b8c

try {
    $result = $apiInstance->getConnection($uuid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConnectionApi->getConnection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **uuid** | **string**| Connection uuid. For example: s_d6694ae6eb37465a81c35ebaa0045b8c | |

### Return type

[**\kruegge82\jumingo\Model\Connection**](../Model/Connection.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getConnections()`

```php
getConnections($status, $connection_type, $sort_status, $sort_connection_type, $sort_modified, $page, $items_per_page): array[]
```

Retrieves the collection of Connection resources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ConnectionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$status = 'status_example'; // string | Status of connections
$connection_type = 3.4; // float | Connection type ID
$sort_status = 'sort_status_example'; // string | Sort by status
$sort_connection_type = 'sort_connection_type_example'; // string | Sort by connectionType
$sort_modified = 'sort_modified_example'; // string | Sort by modified
$page = 56; // int | The collection page number
$items_per_page = 56; // int | The number of items per page

try {
    $result = $apiInstance->getConnections($status, $connection_type, $sort_status, $sort_connection_type, $sort_modified, $page, $items_per_page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConnectionApi->getConnections: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **status** | **string**| Status of connections | [optional] |
| **connection_type** | **float**| Connection type ID | [optional] |
| **sort_status** | **string**| Sort by status | [optional] |
| **sort_connection_type** | **string**| Sort by connectionType | [optional] |
| **sort_modified** | **string**| Sort by modified | [optional] |
| **page** | **int**| The collection page number | [optional] |
| **items_per_page** | **int**| The number of items per page | [optional] |

### Return type

**array[]**

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
