## Retrieve a coupons list

### Request
```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/coupons' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -H 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/coupons",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "Cache-control: no-cache"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
```

```javascript
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.hostaway.com/v1/coupons",
  "method": "GET",
  "headers": {
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "Cache-control": "no-cache"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/coupons")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/coupons"

querystring = {
}

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
}

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
```

`GET https://api.hostaway.com/v1/coupons`

### Response

An array of coupon objects.

## Create reservation coupon object

### Request
```shell
curl --location --request POST 'https://api.hostaway.com/v1/reservationCoupons' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "couponName": "COUPONNAME",
    "listingMapId": 40100,
    "startingDate": "2023-01-01",
    "endingDate": "2023-12-31"
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/reservationCoupons',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "couponName": "COUPONNAME",
    "listingMapId": 40100,
    "startingDate": "2023-01-01",
    "endingDate": "2023-12-31"
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc',
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var myHeaders = new Headers();
myHeaders.append("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc");
myHeaders.append("Content-Type", "text/plain");

var raw = "{\n    \"couponName\": \"COUPONNAME\",\n    \"listingMapId\": 40100,\n    \"startingDate\": \"2023-01-01\",\n    \"endingDate\": \"2023-12-31\"\n}";

var requestOptions = {
    method: 'POST',
    headers: myHeaders,
    body: raw,
    redirect: 'follow'
};

fetch("https://api.hostaway.com/v1/reservationCoupons", requestOptions)
    .then(response => response.text())
    .then(result => console.log(result))
    .catch(error => console.log('error', error));
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "{\n    \"couponName\": \"COUPONNAME\",\n    \"listingMapId\": 40100,\n    \"startingDate\": \"2023-01-01\",\n    \"endingDate\": \"2023-12-31\"\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservationCoupons")
  .method("POST", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc")
  .addHeader("Content-Type", "text/plain")
  .build();
Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/reservationCoupons"

payload = {
    "couponName": "COUPONNAME",
    "listingMapId": 40100,
    "startingDate": "2023-01-01",
    "endingDate": "2023-12-31"
}

headers = {
    'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6ImFmMjM3NWZiYjJkZmNiM2Y3YmJhZTk2MTFkY2YxYTc1ZGU5MjllZTQ0YWIxYjcwZmE4NzQzYjNlNGE1M2I5ZDBiNzk2NmVhZDk2MDQ5Nzg3IiwiaWF0IjoxNjY3MzEyMTYwLCJuYmYiOjE2NjczMTIxNjAsImV4cCI6MTczMDQ3MDU2MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.ArIr26BPlgMDbexpkR-J2Xi_NrLdCXi186YTOYlZHlTMzXrfopeY2T9tzKC6oNNRoedEGKCVrSrDiEnt00fErNETaRiYj2wH7dwoHpmOgEqfajhQImUFlC_uHuMgtyoN1slzX9oj80px156RaZEK6Dnxf1qXsFhWsb0YETQFohc',
    'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, json=payload)

print(response.text)

```

`POST https://api.hostaway.com/v1/reservationCoupons`

### Json request body fields

Json Parameter | Required | Type    | Description
--------- | -------- |---------| -----------
`couponName` | yes | string  | Coupon name
`listingMapId` | yes | int     | Listing ID
`startingDate` | yes | string  | Arrival date
`endingDate` | no | float   | Departure date

### Response

An array with reservationCouponId value which you should use for calculating total price with breakdown. [calculate reservation total price and breakdown](#reservation-price-calculation)

### Response body fields

Name | Type | Description
--------- | -------- |----------
`reservationCouponId` | int | ReservationCoupon ID object
