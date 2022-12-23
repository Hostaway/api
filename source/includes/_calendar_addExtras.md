## Calculate reservation price with extras

You can add not mandatory extras (mondatory is added automatically) in total price calculation request and get total price and components for creating new reservation with print components in it.

For getting list of available extras please check [Listing fee settings](#list-listing-fee-settings)

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listings/90632/calendar/priceDetails' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-type: text/plain' \
--data-raw '{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "version": 2,
    "components": [
        {
            "listingFeeSettingId": 17643,
            "name": "childrenExtraFee"
        }
    ]
}'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listings/90632/calendar/priceDetails',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "version": 2,
    "components": [
        {
            "listingFeeSettingId": 17643,
            "name": "childrenExtraFee"
        }
    ]
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-type: text/plain'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\"\n        }\n    ]\n}";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listings/90632/calendar/priceDetails");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-type", "text/plain");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\"\n        }\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/90632/calendar/priceDetails")
  .method("POST", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-type", "text/plain")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\"\n        }\n    ]\n}"
headers = {
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-type': 'text/plain'
}
conn.request("POST", "/v1/listings/90632/calendar/priceDetails", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```


`POST https://api.hostaway.com/v1/listings/{listingId}/calendar/priceDetails`

Json Parameter | Required | Type  | Description
--------- |----------|-------| -----------
`startingDate` | yes      | date  | Arrival date
`endingDate` | yes      | date  | Departure date
`numberOfGuests` | yes      | int   | Number of guest
`markup` | no       | float | Markup must be more then 1.0
`reservationCouponId` | no       | int   | Reservation Coupon ID
`version` | yes      | int   | Please use version 2 (version = 2)
`components` | no | array | Components for midifying or adding extras (please check example)

### Response

### Price details object.

Json Parameter | Required | Type  | Description
--------- |----------|-------| -----------
`totalPrice` | yes      | float | Calculated total price
`components` | yes    | array | Price components

### Price component object.

Json Parameter | Required | Type   | Description
--------- |----------|--------| -----------
`listingFeeSettingId` | no       | int    | Listing fee setting ID
`type` | yes      | string | Type of component (price, tax, fee, discount)
`name` | yes      | string | Name of component
`title` | yes      | string | Title of component
`alias` | yes      | string | Alias of component
`quantity` | no       | int    | Quantity of component (only if component is quantity selectable)
`value` | yes      | float  | Price of component
`total` | yes      | float  | Total amount of component
`isIncludedInTotalPrice` | yes      | int    | Included or not included in total price
`isOverriddenByUser` | yes      | int    | Is component changed or not by the client
`isMandatory` | yes      | int    | Сomponent is mandatory for creating reservation or not
`isDeleted` | yes      | int    | Сomponent is deleted or not by the client

```json
{
  "status": "success",
  "result": {
    "totalPrice": 313160,
    "originalTotalPrice": 0,
    "selectedComponentsAmount": 0,
    "components": [
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "price",
        "name": "baseRate",
        "title": "Base rate",
        "alias": null,
        "quantity": null,
        "value": 315000,
        "total": 315000,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "discount",
        "name": "monthlyDiscount",
        "title": "Monthly discount",
        "alias": null,
        "quantity": null,
        "value": -31500,
        "total": -31500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "cleaningFee",
        "title": "Cleaning fee",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": 17643,
        "type": "fee",
        "name": "childrenExtraFee",
        "title": "Children Extra fee",
        "alias": "",
        "quantity": null,
        "value": 100,
        "total": 100,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": 0,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "salesTax",
        "title": "Sales tax",
        "alias": null,
        "quantity": null,
        "value": 28360,
        "total": 28360,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "vat",
        "title": "VAT / GST",
        "alias": null,
        "quantity": null,
        "value": 200,
        "total": 200,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "damageDeposit",
        "title": "Damage deposit",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      }
    ],
    "extraComponents": [],
    "selectedComponents": []
  }
}
```

## Set manual value for price component

You can set value of any component manually. You should set for such components flag isOverriddenByUser = 1 and value = your value. Please check next examples.

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listings/90632/calendar/priceDetails' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-type: text/plain' \
--data-raw '{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "version": 2,
    "components": [
        {
            "listingFeeSettingId": 17643,
            "name": "childrenExtraFee",
            "isOverriddenByUser": 1,
            "value": 500
        }
    ]
}'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listings/90632/calendar/priceDetails',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "version": 2,
    "components": [
        {
            "listingFeeSettingId": 17643,
            "name": "childrenExtraFee",
            "isOverriddenByUser": 1,
            "value": 500
        }
    ]
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-type: text/plain'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\",\n            \"isOverriddenByUser\": 1,\n            \"value\": 500\n        }\n    ]\n}";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listings/90632/calendar/priceDetails");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-type", "text/plain");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\",\n            \"isOverriddenByUser\": 1,\n            \"value\": 500\n        }\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/90632/calendar/priceDetails")
  .method("POST", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-type", "text/plain")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"version\": 2,\n    \"components\": [\n        {\n            \"listingFeeSettingId\": 17643,\n            \"name\": \"childrenExtraFee\",\n            \"isOverriddenByUser\": 1,\n            \"value\": 500\n        }\n    ]\n}"
headers = {
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-type': 'text/plain'
}
conn.request("POST", "/v1/listings/90632/calendar/priceDetails", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```


`POST https://api.hostaway.com/v1/listings/{listingId}/calendar/priceDetails`

Json Parameter | Required | Type  | Description
--------- |----------|-------| -----------
`startingDate` | yes      | date  | Arrival date
`endingDate` | yes      | date  | Departure date
`numberOfGuests` | yes      | int   | Number of guest
`markup` | no       | float | Markup must be more then 1.0
`reservationCouponId` | no       | int   | Reservation Coupon ID
`version` | yes      | int   | Please use version 2 (version = 2)
`components` | no | array | Components for midifying or adding extras (please check example)

### Response

### Price details object.

Json Parameter | Required | Type  | Description
--------- |----------|-------| -----------
`totalPrice` | yes      | float | Calculated total price
`components` | yes    | array | Price components

### Price component object.

Json Parameter | Required | Type   | Description
--------- |----------|--------| -----------
`listingFeeSettingId` | no       | int    | Listing fee setting ID
`type` | yes      | string | Type of component (price, tax, fee, discount)
`name` | yes      | string | Name of component
`title` | yes      | string | Title of component
`alias` | yes      | string | Alias of component
`quantity` | no       | int    | Quantity of component (only if component is quantity selectable)
`value` | yes      | float  | Price of component
`total` | yes      | float  | Total amount of component
`isIncludedInTotalPrice` | yes      | int    | Included or not included in total price
`isOverriddenByUser` | yes      | int    | Is component changed or not by the client
`isMandatory` | yes      | int    | Сomponent is mandatory for creating reservation or not
`isDeleted` | yes      | int    | Сomponent is deleted or not by the client

```json
{
  "status": "success",
  "result": {
    "totalPrice": 313600,
    "originalTotalPrice": 0,
    "selectedComponentsAmount": 0,
    "components": [
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "price",
        "name": "baseRate",
        "title": "Base rate",
        "alias": null,
        "quantity": null,
        "value": 315000,
        "total": 315000,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "discount",
        "name": "monthlyDiscount",
        "title": "Monthly discount",
        "alias": null,
        "quantity": null,
        "value": -31500,
        "total": -31500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "cleaningFee",
        "title": "Cleaning fee",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": 17643,
        "type": "fee",
        "name": "childrenExtraFee",
        "title": "Children Extra fee",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 1,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "salesTax",
        "title": "Sales tax",
        "alias": null,
        "quantity": null,
        "value": 28400,
        "total": 28400,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "vat",
        "title": "VAT / GST",
        "alias": null,
        "quantity": null,
        "value": 200,
        "total": 200,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "damageDeposit",
        "title": "Damage deposit",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      }
    ],
    "extraComponents": [],
    "selectedComponents": []
  }
}
```

## Create reservation with price components

After calculation total price you can use array of price components (compoments object in the response) for creating new reservation with price breakdown.
Please check [create reservation with price details](#create-a-reservation-with-credit-card-validation)

There are two step for creating reservation with price details components:

1. [Calculate price details](#calculate-reservation-price)
2. [Create reservation with price details](#create-a-reservation-with-credit-card-validation)

### During component pricing, you can use the following options:

After calculation total price you get price components in the response (components object). You should use components object for filling financeField object in reservation object.

If you want to change component in price breakdown you should use `isOverriddenByUser` = 1 and `value` field for setting value of the component.

If component is quantity selectable you should use `isQuantitySelectable` = 1 and `quantity` field for setting quantity of components.

If you want to remove component from the breakdown and recalculate price without it, you should use `isDeleted` = 1

If you want to add extra fee you should add additional object in components with `name` and `listingFeeSettingId` values. It the component is quantity selectable you should set `isQuantitySelectable` = 1 and `quantity` value.

## Update reservation with price components

You can also update price details component in reservation by updating reservation.

Please note that all fields must be submitted in the request because not specified fields will be deleted.

Get financeFields from price breakdown you can by [retrieving a reservation](#retrieve-a-reservation) then update the value and pass with ID with reservation update request.

If you change component in price breakdown you should also adapt total price on your side and send new totalPrice.

Also please set `isOverriddenByUser` = 1 if value was changed manually without price calculation because it guarantees that system will not change this value automatically

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/reservations/14150462' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-type: application/json' \
--data-raw '{
    "financeField": [
        {
            "id": 13303244,
            "value": 91002,
            "isOverriddenByUser": 1
        }
    ],
    "totalPrice": 91002
}'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/reservations/14150462',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
    "financeField": [
        {
            "id": 13303244,
            "value": 91002,
            "isOverriddenByUser": 1
        }
    ],
    "totalPrice": 91002
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = JSON.stringify({
    "financeField": [
        {
            "id": 13303244,
            "value": 91002,
            "isOverriddenByUser": 1
        }
    ],
    "totalPrice": 91002
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/reservations/14150462");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"financeField\": [\n        {\n            \"id\": 13303244,\n            \"value\": 91002,\n            \"isOverriddenByUser\": 1\n        }\n    ],\n    \"totalPrice\": 91002\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/14150462")
  .method("PUT", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "financeField": [
    {
      "id": 13303244,
      "value": 91002,
      "isOverriddenByUser": 1
    }
  ],
  "totalPrice": 91002
})
headers = {
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/reservations/14150462", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

## Delete finance field components

To remove a component, you need to pass a flag **isDeleted** equals to 1

Also, it is needed to adapt totalPrice if it affects total price

Please check example.

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/reservations/14150462' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-type: application/json' \
--data-raw '{
    "financeField": [
        {
            "id": 13303244,
            "isDeleted": 1
        }
    ],
    "totalPrice": 91002
}'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/reservations/14150462',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
    "financeField": [
        {
            "id": 13303244,
            "isDeleted": 1
        }
    ],
    "totalPrice": 91002
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = JSON.stringify({
    "financeField": [
        {
            "id": 13303244,
            "isDeleted": 1
        }
    ],
    "totalPrice": 91002
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/reservations/14150462");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"financeField\": [\n        {\n            \"id\": 13303244,\n            \"isDeleted\": 1\n        }\n    ],\n    \"totalPrice\": 91002\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/14150462")
  .method("PUT", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "financeField": [
    {
      "id": 13303244,
      "isDeleted": 1
    }
  ],
  "totalPrice": 91002
})
headers = {
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/reservations/14150462", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```