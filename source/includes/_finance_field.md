# Finance fields

## Finance field Object

```json
{
  "id": 13303299,
  "units": 1,
  "listingFeeSettingId": null,
  "type": "price",
  "name": "totalPriceFromChannel",
  "title": "Total price from channel",
  "alias": null,
  "value": 1000,
  "isIncludedInTotalPrice": 1,
  "isOverriddenByUser": 1,
  "isMandatory": null,
  "isQuantitySelectable": 0,
  "isDeleted": 0,
  "total": 1000
}
```

Property | Required | Type   | Description
-------- | -------- |--------| ----------- 
`id` | yes | int    | Unique ID
`units` | yes | int    | Number of units (for multi unit reservation)
`listingFeeSettingId` | yes | int    | Fee ID please check ListingFeeSetting
`type` | yes | string    | Type of field (price, tax, fee, discount)
`name` | yes | string    | Name of field (e.g. BaseRate, CleaningFee) read only
`title` | yes | string    | Title of field
`alias` | yes | string | Alias of field (Fee alias)
`value` | yes | float  | Value of field (please use `total` field for amount value)
`isIncludedInTotalPrice` | yes | int    | Is component included in total price
`isOverriddenByUser` | yes | int    | Component was set manually by user
`isMandatory` | yes | int    | Fee is mandatory
`isQuantitySelectable` | yes | int    | Is quantity selectable
`isDeleted` | yes | int    | Unique ID
'quantity' | yes | int    | Quantity
`total` | yes | float  | Total amount

## Retrieve finance fields

### Request

`GET https://api.hostaway.com/v1/financeField/{reservationId}`

```shell
curl --location --request GET 'https://api.hostaway.com/v1/financeField/14150462' \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-Type: application/json' \
--data-raw '{
    "value": 1000,
    "isIncludedInTotalPrice": 1,
    "isOverriddenByUser": 1
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/financeField/14150462',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_POSTFIELDS =>'{
    "value": 1000,
    "isIncludedInTotalPrice": 1,
    "isOverriddenByUser": 1
}',
  CURLOPT_HTTPHEADER => array(
    'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = JSON.stringify({
  "value": 1000,
  "isIncludedInTotalPrice": 1,
  "isOverriddenByUser": 1
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/financeField/14150462");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"value\": 1000,\n    \"isIncludedInTotalPrice\": 1,\n    \"isOverriddenByUser\": 1\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeField/14150462")
  .method("GET", body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "value": 1000,
  "isIncludedInTotalPrice": 1,
  "isOverriddenByUser": 1
})
headers = {
  'authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-Type': 'application/json'
}
conn.request("GET", "/v1/financeField/14150462", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

### Response

```json
{
    "status": "success",
    "result": [
        {
            "id": 13303244,
            "units": 1,
            "listingFeeSettingId": null,
            "type": "price",
            "name": "baseRate",
            "title": "Base rate",
            "alias": null,
            "value": null,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 0,
            "isMandatory": null,
            "isQuantitySelectable": 0,
            "isDeleted": 1,
            "total": 0
        },
        {
            "id": 13303299,
            "units": 1,
            "listingFeeSettingId": null,
            "type": "price",
            "name": "totalPriceFromChannel",
            "title": "Total price from channel",
            "alias": null,
            "value": 1000,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 1,
            "isMandatory": null,
            "isQuantitySelectable": 0,
            "isDeleted": 0,
            "total": 1000
        }
    ]
}
```

## Update finance field

It is recommended to set `isOverriddenByUser` = 1 if you want to change finance field otherwise it can be replaced by the value from the channel as example or due recalculations on our end. But please keep in mind that if you have changed this value and mark as override it can't be updated even if we need to recalculate it.

### Request

`PUT https://api.hostaway.com/v1/financeField/{reservationId}/{financeFieldId}`

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/financeField/14150462/13303299' \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-Type: application/json' \
--data-raw '{
    "value": 1000,
    "isIncludedInTotalPrice": 1,
    "isOverriddenByUser": 1
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/financeField/14150462/13303299',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
    "value": 1000,
    "isIncludedInTotalPrice": 1,
    "isOverriddenByUser": 1
}',
  CURLOPT_HTTPHEADER => array(
    'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = JSON.stringify({
  "value": 1000,
  "isIncludedInTotalPrice": 1,
  "isOverriddenByUser": 1
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("PUT", "https://api.hostaway.com/v1/financeField/14150462/13303299");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"value\": 1000,\n    \"isIncludedInTotalPrice\": 1,\n    \"isOverriddenByUser\": 1\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeField/14150462/13303299")
  .method("PUT", body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "value": 1000,
  "isIncludedInTotalPrice": 1,
  "isOverriddenByUser": 1
})
headers = {
  'authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
  'Content-Type': 'application/json'
}
conn.request("PUT", "/v1/financeField/14150462/13303299", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

### Response

```json
{
    "status": "success",
    "result": {
        "id": 13303244,
        "units": 1,
        "listingFeeSettingId": null,
        "type": "price",
        "name": "baseRate",
        "title": "Base rate",
        "alias": null,
        "value": 1000,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 1,
        "isMandatory": null,
        "isQuantitySelectable": 0,
        "isDeleted": 1,
        "total": 0
    }
}
```