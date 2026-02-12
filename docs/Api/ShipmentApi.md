# kruegge82\jumingo\ShipmentApi



All URIs are relative to https://api.jumingo.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createShipment()**](ShipmentApi.md#createShipment) | **POST** /v1/shipments | Create a Shipment |
| [**getShipment()**](ShipmentApi.md#getShipment) | **GET** /v1/shipments/{shipment_id} | Retrieve a Shipment |
| [**getShipments()**](ShipmentApi.md#getShipments) | **GET** /v1/shipments | Get Shipments |
| [**patchV1ShipmentItem()**](ShipmentApi.md#patchV1ShipmentItem) | **PATCH** /v1/shipments/{shipment_id} | Updates the Shipment resource. |
| [**updateShipmentRateCheapestTariffV1()**](ShipmentApi.md#updateShipmentRateCheapestTariffV1) | **POST** /v1/shipments/cheapest | Update shipments rate |
| [**v1ShipmentsShipmentIdDelete()**](ShipmentApi.md#v1ShipmentsShipmentIdDelete) | **DELETE** /v1/shipments/{shipment_id} | Removes the Shipment resource. |
| [**v1ShipmentsShipmentIdPut()**](ShipmentApi.md#v1ShipmentsShipmentIdPut) | **PUT** /v1/shipments/{shipment_id} | Replaces the Shipment resource. |
| [**v1ShipmentsUuidFileUploadTypeDelete()**](ShipmentApi.md#v1ShipmentsUuidFileUploadTypeDelete) | **DELETE** /v1/shipments/{uuid}/file/upload/{type} | Deletes a commercial invoice or an export declaration for a shipment |
| [**v1ShipmentsUuidFileUploadTypePost()**](ShipmentApi.md#v1ShipmentsUuidFileUploadTypePost) | **POST** /v1/shipments/{uuid}/file/upload/{type} | Uploads a commercial invoice or an export declaration for a shipment |


## `createShipment()`

```php
createShipment($body): \kruegge82\jumingo\Model\CreateShipmentResult
```

Create a Shipment

Creates a new shipment. If you are using an e-commerce connection, you must specify the order data with \"connection_custom_data\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \kruegge82\jumingo\Model\CreateShipment(); // \kruegge82\jumingo\Model\CreateShipment

try {
    $result = $apiInstance->createShipment($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->createShipment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | [**\kruegge82\jumingo\Model\CreateShipment**](../Model/CreateShipment.md)|  | |

### Return type

[**\kruegge82\jumingo\Model\CreateShipmentResult**](../Model/CreateShipmentResult.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getShipment()`

```php
getShipment($shipment_id): \kruegge82\jumingo\Model\Shipment
```

Retrieve a Shipment

Get a specific shipment based on the given shipment ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment_id = s_fb1bc92aba1c4d70a3eaa44d687ae179; // string

try {
    $result = $apiInstance->getShipment($shipment_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->getShipment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment_id** | **string**|  | |

### Return type

[**\kruegge82\jumingo\Model\Shipment**](../Model/Shipment.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getShipments()`

```php
getShipments($status, $import_progress_status, $created_before, $created_after, $sort_created, $sort_modified, $search, $order_number, $page, $items_per_page, $pagination): \kruegge82\jumingo\Model\Shipment[]
```

Get Shipments

Gets a list of all shipments. You can filter and sort the shipments. The pagination is done by limit and offset parameters.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$status = 'all'; // string | Status of shipments
$import_progress_status = 'import_progress_status_example'; // string | Import Progress Status of shipments
$created_before = 'created_before_example'; // string | Filter by created before the date and/or time. For example: \"2020-09-19T00:00:00.000\"
$created_after = 'created_after_example'; // string | Filter by created after the date and/or time.  For example: \"2020-09-19T00:00:00.000\"
$sort_created = 'sort_created_example'; // string | Sort by created.  For example: \"asc\"
$sort_modified = 'sort_modified_example'; // string | Sort by modified.  For example: \"desc\"
$search = 'search_example'; // string | Full text search
$order_number = 'order_number_example'; // string | Filter shipments by orderNumber
$page = 56; // int | The collection page number
$items_per_page = 56; // int | The number of items per page
$pagination = True; // bool | Client enable pagination

try {
    $result = $apiInstance->getShipments($status, $import_progress_status, $created_before, $created_after, $sort_created, $sort_modified, $search, $order_number, $page, $items_per_page, $pagination);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->getShipments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **status** | **string**| Status of shipments | [optional] [default to &#39;all&#39;] |
| **import_progress_status** | **string**| Import Progress Status of shipments | [optional] |
| **created_before** | **string**| Filter by created before the date and/or time. For example: \&quot;2020-09-19T00:00:00.000\&quot; | [optional] |
| **created_after** | **string**| Filter by created after the date and/or time.  For example: \&quot;2020-09-19T00:00:00.000\&quot; | [optional] |
| **sort_created** | **string**| Sort by created.  For example: \&quot;asc\&quot; | [optional] |
| **sort_modified** | **string**| Sort by modified.  For example: \&quot;desc\&quot; | [optional] |
| **search** | **string**| Full text search | [optional] |
| **order_number** | **string**| Filter shipments by orderNumber | [optional] |
| **page** | **int**| The collection page number | [optional] |
| **items_per_page** | **int**| The number of items per page | [optional] |
| **pagination** | **bool**| Client enable pagination | [optional] |

### Return type

[**\kruegge82\jumingo\Model\Shipment[]**](../Model/Shipment.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchV1ShipmentItem()`

```php
patchV1ShipmentItem($shipment_id, $shipment): \kruegge82\jumingo\Model\Shipment
```

Updates the Shipment resource.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment_id = 'shipment_id_example'; // string
$shipment = new \kruegge82\jumingo\Model\CreateShipment(); // \kruegge82\jumingo\Model\CreateShipment | The updated Shipment resource

try {
    $result = $apiInstance->patchV1ShipmentItem($shipment_id, $shipment);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->patchV1ShipmentItem: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment_id** | **string**|  | |
| **shipment** | [**\kruegge82\jumingo\Model\CreateShipment**](../Model/CreateShipment.md)| The updated Shipment resource | [optional] |

### Return type

[**\kruegge82\jumingo\Model\Shipment**](../Model/Shipment.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/merge-patch+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateShipmentRateCheapestTariffV1()`

```php
updateShipmentRateCheapestTariffV1($shipment, $shipping_type, $tariff_type, $carrier, $sort)
```

Update shipments rate

Update shipments rate with cheapest tariff

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment = new \kruegge82\jumingo\Model\UpdateShipmentRateCheapestTariffV1Request(); // \kruegge82\jumingo\Model\UpdateShipmentRateCheapestTariffV1Request | The new Shipment resource
$shipping_type = 'shipping_type_example'; // string | Rate shipping type
$tariff_type = 'tariff_type_example'; // string | Rate tariff type
$carrier = 'carrier_example'; // string | Rate carrier
$sort = 'sort_example'; // string | Results sorting

try {
    $apiInstance->updateShipmentRateCheapestTariffV1($shipment, $shipping_type, $tariff_type, $carrier, $sort);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->updateShipmentRateCheapestTariffV1: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment** | [**\kruegge82\jumingo\Model\UpdateShipmentRateCheapestTariffV1Request**](../Model/UpdateShipmentRateCheapestTariffV1Request.md)| The new Shipment resource | |
| **shipping_type** | **string**| Rate shipping type | [optional] |
| **tariff_type** | **string**| Rate tariff type | [optional] |
| **carrier** | **string**| Rate carrier | [optional] |
| **sort** | **string**| Results sorting | [optional] |

### Return type

void (empty response body)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ShipmentsShipmentIdDelete()`

```php
v1ShipmentsShipmentIdDelete($shipment_id)
```

Removes the Shipment resource.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment_id = 'shipment_id_example'; // string

try {
    $apiInstance->v1ShipmentsShipmentIdDelete($shipment_id);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->v1ShipmentsShipmentIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment_id** | **string**|  | |

### Return type

void (empty response body)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ShipmentsShipmentIdPut()`

```php
v1ShipmentsShipmentIdPut($shipment_id, $shipment): \kruegge82\jumingo\Model\Shipment
```

Replaces the Shipment resource.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$shipment_id = 'shipment_id_example'; // string
$shipment = new \kruegge82\jumingo\Model\UpdateShipment(); // \kruegge82\jumingo\Model\UpdateShipment | The updated Shipment resource

try {
    $result = $apiInstance->v1ShipmentsShipmentIdPut($shipment_id, $shipment);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->v1ShipmentsShipmentIdPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **shipment_id** | **string**|  | |
| **shipment** | [**\kruegge82\jumingo\Model\UpdateShipment**](../Model/UpdateShipment.md)| The updated Shipment resource | [optional] |

### Return type

[**\kruegge82\jumingo\Model\Shipment**](../Model/Shipment.md)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ShipmentsUuidFileUploadTypeDelete()`

```php
v1ShipmentsUuidFileUploadTypeDelete($uuid, $type)
```

Deletes a commercial invoice or an export declaration for a shipment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$uuid = 'uuid_example'; // string | The shipment uuid. E.g. s_fbf8e2a57185478194fa264583b5b388
$type = 'type_example'; // string | The document type for the shipment to be deleted. E.g. <b>commercial-invoice</b> or <b>export-declaration</b>

try {
    $apiInstance->v1ShipmentsUuidFileUploadTypeDelete($uuid, $type);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->v1ShipmentsUuidFileUploadTypeDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **uuid** | **string**| The shipment uuid. E.g. s_fbf8e2a57185478194fa264583b5b388 | |
| **type** | **string**| The document type for the shipment to be deleted. E.g. &lt;b&gt;commercial-invoice&lt;/b&gt; or &lt;b&gt;export-declaration&lt;/b&gt; | |

### Return type

void (empty response body)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ShipmentsUuidFileUploadTypePost()`

```php
v1ShipmentsUuidFileUploadTypePost($uuid, $type, $file)
```

Uploads a commercial invoice or an export declaration for a shipment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: v1
$config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKey('X-AUTH-TOKEN', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = kruegge82\jumingo\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-AUTH-TOKEN', 'Bearer');


$apiInstance = new kruegge82\jumingo\Api\ShipmentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$uuid = 'uuid_example'; // string | The shipment uuid. E.g. s_fbf8e2a57185478194fa264583b5b388
$type = 'type_example'; // string | The document type for the shipment to be uploaded. E.g. <b>commercial-invoice</b> or <b>export-declaration</b>
$file = '/path/to/file.txt'; // \SplFileObject

try {
    $apiInstance->v1ShipmentsUuidFileUploadTypePost($uuid, $type, $file);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentApi->v1ShipmentsUuidFileUploadTypePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **uuid** | **string**| The shipment uuid. E.g. s_fbf8e2a57185478194fa264583b5b388 | |
| **type** | **string**| The document type for the shipment to be uploaded. E.g. &lt;b&gt;commercial-invoice&lt;/b&gt; or &lt;b&gt;export-declaration&lt;/b&gt; | |
| **file** | **\SplFileObject****\SplFileObject**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[v1](../../README.md#v1)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
