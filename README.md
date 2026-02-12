# OpenAPIClient-php

## About

With the JUMINGO shipping API you can import your shipments into your JUMINGO account from any source.
The functionalities of the API include creating and updating shipment drafts, fetching suitable shipment rates for a given shipment and purchasing shipping labels.
Furthermore, you can retrieve tracking data and fetch shipping labels and documents for all your purchased shipments. 

The current main purpose of the API is to connect your account to e-commerce systems and marketplaces.

## General
The API is organized around REST. Our API has resource-oriented URLs and uses HTTP response codes to indicate API errors. We use built-in HTTP features, like HTTP authentication and HTTP verbs.
All API requests must be made over HTTPS. Calls made over plain HTTP will return errors.
Request data is passed to the API as JSON objects and JSON is also returned by all API responses, including errors, although our API SDKs convert requests and responses to appropriate language-specific objects.

Best practice usage of the API and business logic is described in the supplementary [integration guide](https://www.jumingo.com/cms/JUMiNGO_API-integration-guide.pdf \"JUMiNGO API Integration Guide\").

## Base URL
The base URL for all calls is: `https://api.jumingo.com/v1`

## HTTP status codes
HTTP response codes in the `2xx` range indicate success. Codes in the `4xx` range indicate an error on the client side (e.g. a required parameter is missing). Codes in the `5xx` range indicate an error with our servers. Each error should provide an error code and an error message with further information.

HTTP status code | Description
---------------- | -----------
200, 201, 204 - OK | Everything worked.
400 - Bad Request | The request was unacceptable, often due to missing a required parameter or a validation error.
401 - Unauthorized | No valid API key has been provided or your account is disabled.
403 - Forbidden | You are not allowed to talk to this endpoint. This can either be due to a wrong authentication or when you’re trying to reach an endpoint that your account isn’t allowed to access.
404 - Not Found | The requested resource doesn’t exist.
500, 502, 503, 504 - Server Errors | Something went wrong on our side. Please contact our support if you receive this error.

## Authentication
All API requests requires authentication. Unauthorized calls will return errors.

Authenticate by including your API key in the `X-AUTH-TOKEN` HTTP header of each API call, e.g.:

`X-AUTH-TOKEN: INSERT_YOUR_API_KEY`

You can find your API key in your JUMINGO user account. You can get access to the JUMiNGO customer API by enabling it in your [user account](https://www.jumingo.com/de-de/users/connections/create/8). After activation, you will get your personal API key.

## Date/Time Format
All values of type `string <date-time>` are defined in a specific [RFC 3339](https://tools.ietf.org/html/rfc3339#section-5.6) format and must also be formatted accordingly for requests.

The format is: YYYY-MM-DD hh:mm:ss

Example: 2018-07-26 15:54:13

All dates and times are specified in UTC (Coordinated Universal Time).


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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
$access_point_search = new \kruegge82\jumingo\Model\V1CarrierAccessPointsSearchPostRequest(); // \kruegge82\jumingo\Model\V1CarrierAccessPointsSearchPostRequest

try {
    $result = $apiInstance->v1CarrierAccessPointsSearchPost($access_point_search);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarrierApi->v1CarrierAccessPointsSearchPost: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.jumingo.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CarrierApi* | [**v1CarrierAccessPointsSearchPost**](docs/Api/CarrierApi.md#v1carrieraccesspointssearchpost) | **POST** /v1/carrier/access-points-search | Get carrier aaccess points by an address with some radius in kilometers
*CartApi* | [**postCartTotal**](docs/Api/CartApi.md#postcarttotal) | **POST** /v1/cart/total | Get cart total
*ConnectionApi* | [**createConnection**](docs/Api/ConnectionApi.md#createconnection) | **POST** /v1/connections | Create a Connection
*ConnectionApi* | [**v1ConnectionsGet**](docs/Api/ConnectionApi.md#v1connectionsget) | **GET** /v1/connections | Retrieves the collection of Connection resources.
*ConnectionApi* | [**v1ConnectionsUuidGet**](docs/Api/ConnectionApi.md#v1connectionsuuidget) | **GET** /v1/connections/{uuid} | Get the Connection
*OrderApi* | [**getAppOrderCollection**](docs/Api/OrderApi.md#getappordercollection) | **GET** /v1/orders | Retrieves the collection of Order resources.
*OrderApi* | [**postOrders**](docs/Api/OrderApi.md#postorders) | **POST** /v1/orders | Make a payment.
*OrderApi* | [**v1OrdersIdDocumentsGet**](docs/Api/OrderApi.md#v1ordersiddocumentsget) | **GET** /v1/orders/{id}/documents | Retrieves a OrderDocuments resource.
*OrderApi* | [**v1OrdersIdGet**](docs/Api/OrderApi.md#v1ordersidget) | **GET** /v1/orders/{id} | Retrieves a Order resource.
*ShipmentApi* | [**createShipment**](docs/Api/ShipmentApi.md#createshipment) | **POST** /v1/shipments | Create a Shipment
*ShipmentApi* | [**getShipment**](docs/Api/ShipmentApi.md#getshipment) | **GET** /v1/shipments/{shipment_id} | Retrieve a Shipment
*ShipmentApi* | [**getShipments**](docs/Api/ShipmentApi.md#getshipments) | **GET** /v1/shipments | Get Shipments
*ShipmentApi* | [**patchV1ShipmentItem**](docs/Api/ShipmentApi.md#patchv1shipmentitem) | **PATCH** /v1/shipments/{shipment_id} | Updates the Shipment resource.
*ShipmentApi* | [**updateShipmentRateCheapestTariffV1**](docs/Api/ShipmentApi.md#updateshipmentratecheapesttariffv1) | **POST** /v1/shipments/cheapest | Update shipments rate
*ShipmentApi* | [**v1ShipmentsShipmentIdDelete**](docs/Api/ShipmentApi.md#v1shipmentsshipmentiddelete) | **DELETE** /v1/shipments/{shipment_id} | Removes the Shipment resource.
*ShipmentApi* | [**v1ShipmentsShipmentIdPut**](docs/Api/ShipmentApi.md#v1shipmentsshipmentidput) | **PUT** /v1/shipments/{shipment_id} | Replaces the Shipment resource.
*ShipmentApi* | [**v1ShipmentsUuidFileUploadTypeDelete**](docs/Api/ShipmentApi.md#v1shipmentsuuidfileuploadtypedelete) | **DELETE** /v1/shipments/{uuid}/file/upload/{type} | Deletes a commercial invoice or an export declaration for a shipment
*ShipmentApi* | [**v1ShipmentsUuidFileUploadTypePost**](docs/Api/ShipmentApi.md#v1shipmentsuuidfileuploadtypepost) | **POST** /v1/shipments/{uuid}/file/upload/{type} | Uploads a commercial invoice or an export declaration for a shipment
*ShipmentRateApi* | [**v1ShipmentRatesPost**](docs/Api/ShipmentRateApi.md#v1shipmentratespost) | **POST** /v1/shipment-rates | Returns shipment rates for a given shipment.

## Models

- [AccessPoints](docs/Model/AccessPoints.md)
- [AccessPointsHoursOfOperationInner](docs/Model/AccessPointsHoursOfOperationInner.md)
- [AccessPointsResponse](docs/Model/AccessPointsResponse.md)
- [AccessPointsResponseErrorsInner](docs/Model/AccessPointsResponseErrorsInner.md)
- [CartTotalCalculatorResult](docs/Model/CartTotalCalculatorResult.md)
- [CartTotalCalculatorResultAdditionalServicesSeparately](docs/Model/CartTotalCalculatorResultAdditionalServicesSeparately.md)
- [CartTotalCalculatorResultPlusProductSurcharges](docs/Model/CartTotalCalculatorResultPlusProductSurcharges.md)
- [CartTotalCalculatorResultTaxes](docs/Model/CartTotalCalculatorResultTaxes.md)
- [CartTotalCalculatorResultTaxesDE](docs/Model/CartTotalCalculatorResultTaxesDE.md)
- [CartTotalInput](docs/Model/CartTotalInput.md)
- [CartTotalOutput](docs/Model/CartTotalOutput.md)
- [ConfirmationDocument](docs/Model/ConfirmationDocument.md)
- [Connection](docs/Model/Connection.md)
- [ConnectionCustomData](docs/Model/ConnectionCustomData.md)
- [ConnectionCustomDataItem](docs/Model/ConnectionCustomDataItem.md)
- [ConnectionDatesAggregationInner](docs/Model/ConnectionDatesAggregationInner.md)
- [ConnectionType](docs/Model/ConnectionType.md)
- [ConnectionTypeDescription](docs/Model/ConnectionTypeDescription.md)
- [ConnectionTypeFormFieldsInner](docs/Model/ConnectionTypeFormFieldsInner.md)
- [Country](docs/Model/Country.md)
- [CountryCode](docs/Model/CountryCode.md)
- [CreateConnection](docs/Model/CreateConnection.md)
- [CreateConnectionResult](docs/Model/CreateConnectionResult.md)
- [CreateShipment](docs/Model/CreateShipment.md)
- [CreateShipmentAddress](docs/Model/CreateShipmentAddress.md)
- [CreateShipmentAddressSettings](docs/Model/CreateShipmentAddressSettings.md)
- [CreateShipmentConnection](docs/Model/CreateShipmentConnection.md)
- [CreateShipmentDetails](docs/Model/CreateShipmentDetails.md)
- [CreateShipmentPackage](docs/Model/CreateShipmentPackage.md)
- [CreateShipmentRate](docs/Model/CreateShipmentRate.md)
- [CreateShipmentResult](docs/Model/CreateShipmentResult.md)
- [CreateShipmentResultWarnings](docs/Model/CreateShipmentResultWarnings.md)
- [Currency](docs/Model/Currency.md)
- [CurrencyCode](docs/Model/CurrencyCode.md)
- [CustomsInvoiceInput](docs/Model/CustomsInvoiceInput.md)
- [CustomsInvoiceOutput](docs/Model/CustomsInvoiceOutput.md)
- [CustomsLineItemInput](docs/Model/CustomsLineItemInput.md)
- [CustomsLineItemOutput](docs/Model/CustomsLineItemOutput.md)
- [Error](docs/Model/Error.md)
- [ErrorResponse](docs/Model/ErrorResponse.md)
- [Exception](docs/Model/Exception.md)
- [Insurance](docs/Model/Insurance.md)
- [InvoiceDocument](docs/Model/InvoiceDocument.md)
- [LabelDocument](docs/Model/LabelDocument.md)
- [OrderAggregatedData](docs/Model/OrderAggregatedData.md)
- [OrderDocuments](docs/Model/OrderDocuments.md)
- [OrderOutput](docs/Model/OrderOutput.md)
- [OrderOutputDatesInner](docs/Model/OrderOutputDatesInner.md)
- [OrdersOutput](docs/Model/OrdersOutput.md)
- [OrdersOutputCustomer](docs/Model/OrdersOutputCustomer.md)
- [OrdersOutputShipmentsInner](docs/Model/OrdersOutputShipmentsInner.md)
- [OrdersPostInput](docs/Model/OrdersPostInput.md)
- [OrdersPostInputData](docs/Model/OrdersPostInputData.md)
- [OrdersPostOutput](docs/Model/OrdersPostOutput.md)
- [PackageType](docs/Model/PackageType.md)
- [PackageTypeDescription](docs/Model/PackageTypeDescription.md)
- [PackagingType](docs/Model/PackagingType.md)
- [PaymentMethodsOutput](docs/Model/PaymentMethodsOutput.md)
- [ProformaDocument](docs/Model/ProformaDocument.md)
- [Shipment](docs/Model/Shipment.md)
- [ShipmentAddress](docs/Model/ShipmentAddress.md)
- [ShipmentCheapestRateInput](docs/Model/ShipmentCheapestRateInput.md)
- [ShipmentCheapestRateInputFilterData](docs/Model/ShipmentCheapestRateInputFilterData.md)
- [ShipmentCheapestRateInputSettings](docs/Model/ShipmentCheapestRateInputSettings.md)
- [ShipmentConnection](docs/Model/ShipmentConnection.md)
- [ShipmentDetails](docs/Model/ShipmentDetails.md)
- [ShipmentFileDocument](docs/Model/ShipmentFileDocument.md)
- [ShipmentPackage](docs/Model/ShipmentPackage.md)
- [ShipmentPickupDateMode](docs/Model/ShipmentPickupDateMode.md)
- [ShipmentRate](docs/Model/ShipmentRate.md)
- [ShipmentRateInput](docs/Model/ShipmentRateInput.md)
- [ShipmentRateInputFilterData](docs/Model/ShipmentRateInputFilterData.md)
- [ShipmentRateInputSettings](docs/Model/ShipmentRateInputSettings.md)
- [ShipmentRateOutput](docs/Model/ShipmentRateOutput.md)
- [ShipmentRateOutputCountriesInner](docs/Model/ShipmentRateOutputCountriesInner.md)
- [ShipmentRateOutputDetails](docs/Model/ShipmentRateOutputDetails.md)
- [ShipmentRateOutputExportDeclaration](docs/Model/ShipmentRateOutputExportDeclaration.md)
- [ShipmentRateOutputInsurance](docs/Model/ShipmentRateOutputInsurance.md)
- [ShipmentRateOutputPickupCountryHolidays](docs/Model/ShipmentRateOutputPickupCountryHolidays.md)
- [ShipmentRateOutputQuickFiltersInner](docs/Model/ShipmentRateOutputQuickFiltersInner.md)
- [ShipmentRateSummary](docs/Model/ShipmentRateSummary.md)
- [ShipmentRateSummaryPackage](docs/Model/ShipmentRateSummaryPackage.md)
- [ShipmentRateSummaryTax](docs/Model/ShipmentRateSummaryTax.md)
- [ShipmentTracking](docs/Model/ShipmentTracking.md)
- [ShipmentTrackingData](docs/Model/ShipmentTrackingData.md)
- [ShipmentTrackingDataCarrier](docs/Model/ShipmentTrackingDataCarrier.md)
- [ShipmentTrackingProgress](docs/Model/ShipmentTrackingProgress.md)
- [ShipmentTrackingProgressPoints](docs/Model/ShipmentTrackingProgressPoints.md)
- [State](docs/Model/State.md)
- [StateCode](docs/Model/StateCode.md)
- [Tariff](docs/Model/Tariff.md)
- [TariffItem](docs/Model/TariffItem.md)
- [TariffPickupCountryHolidays](docs/Model/TariffPickupCountryHolidays.md)
- [TariffTariff](docs/Model/TariffTariff.md)
- [TariffTariffDates](docs/Model/TariffTariffDates.md)
- [TariffTariffDatesDelivery](docs/Model/TariffTariffDatesDelivery.md)
- [TariffTariffDatesPickup](docs/Model/TariffTariffDatesPickup.md)
- [TariffTariffDatesTransitTimeMax](docs/Model/TariffTariffDatesTransitTimeMax.md)
- [TariffTariffDatesTransitTimeMin](docs/Model/TariffTariffDatesTransitTimeMin.md)
- [TariffTariffDatesTransitTimeRange](docs/Model/TariffTariffDatesTransitTimeRange.md)
- [TariffTariffPackagesInner](docs/Model/TariffTariffPackagesInner.md)
- [TariffTariffShipper](docs/Model/TariffTariffShipper.md)
- [TariffTariffShipperLimitsInner](docs/Model/TariffTariffShipperLimitsInner.md)
- [TrackingAddress](docs/Model/TrackingAddress.md)
- [TrackingCarrier](docs/Model/TrackingCarrier.md)
- [TrackingDates](docs/Model/TrackingDates.md)
- [TrackingStep](docs/Model/TrackingStep.md)
- [UpdateShipment](docs/Model/UpdateShipment.md)
- [UpdateShipmentRateCheapestTariffV1Request](docs/Model/UpdateShipmentRateCheapestTariffV1Request.md)
- [V1CarrierAccessPointsSearchPostRequest](docs/Model/V1CarrierAccessPointsSearchPostRequest.md)

## Authorization

Authentication schemes defined for the API:
### v1

- **Type**: API key
- **API key parameter name**: X-AUTH-TOKEN
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

connections@jumingo.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.4`
    - Generator version: `7.19.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
