# Reservation price calculation

## Calculate reservation price

This API was updated on 2022-11-01. If you use API version 1 (GET request) we recommend to migrate to API version 2 because previous version is deprecated. It is quite similar with previous version but allow you to create reservation with flexible price breakdown. 

If you need to use reservation coupon discount you should create reservation coupon object before price calculation and then calculate price by passing reservationCouponId.
For getting `reservationCouponId` please follow  [create reservation coupon object](#create-reservation-coupon-object)

### Request

```shell
curl --location --request POST --data-raw '{"startingDate": "2022-11-01", "endingDate": "2022-11-03", "numberOfGuests": 2, "reservationCouponId": 1, "markup": 1, "version": 2}' 
'https://api.hostaway.com/v1/listings/90632/calendar/priceDetails' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings/90632/calendar/priceDetails",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => '{"startingDate": "2022-11-01", "endingDate": "2022-11-03", "numberOfGuests": 2, "reservationCouponId": 1, "markup": 1, "version": 2}'
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc"
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

var data = "{\n    \"startingDate\": \"2022-12-01\",\n    \"endingDate\": \"2022-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"cleaningFee\": 123,\n    \"version\": 2,\n    \"weeklyDiscount\": \"\",\n    \"includeInTotal\": [\n        \"parkingFee\",\n        \"employeeDiscount\"\n    ]\n}";

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/listings/90632/calendar/priceDetails");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "{\n    \"startingDate\": \"2022-12-01\",\n    \"endingDate\": \"2022-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"cleaningFee\": 123,\n    \"version\": 2,\n    \"weeklyDiscount\": \"\",\n    \"includeInTotal\": [\n        \"parkingFee\",\n        \"employeeDiscount\"\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/40100/calendar/priceDetails")
  .method("POST", body)
  .addHeader("Authorization", "Bearer {{publicApiToken}}")
  .addHeader("Content-type", "text/plain")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = {
    "startingDate": "2022-12-01",
    "endingDate": "2022-12-31",
    "numberOfGuests": "1",
    "version": 2
}

headers = {
    'Authorization': 'Bearer {{publicApiToken}}',
    'Content-type': 'application/json',
    'Cache-control': 'no-cache'
}

payload_json = json.dumps(payload)

conn.request("POST", "/v1/listings/40100/calendar/priceDetails", payload_json, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```


`POST https://api.hostaway.com/v1/listings/{listingId}/calendar/priceDetails`

Json Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`startingDate` | yes | date | Arrival date
`endingDate` | yes | date | Departure date
`numberOfGuests` | yes | int | Number of guest
`markup` | no | float | Markup must be more then 1.0
`reservationCouponId` | no | int | Reservation Coupon ID / [How to create reservation coupon object](#create-reservation-coupon-object)
`version` | yes | int | Please use version 2 (version = 2)

Please note: for getting `reservationCouponId` please follow  [How to create reservation coupon object](#create-reservation-coupon-object) 

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
    "totalPrice": 13520,
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
        "value": 12320,
        "total": 12320,
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
