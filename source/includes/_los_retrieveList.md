## Get LOS records list

To check the status of the synchronization process with channels, you can use these requests to get LOS objects

These flags are responsible for the status of synchronization with channels. (the value 1 means that los exported, 0 means that not exported):

- `isSyncedAirbnb`
- `isSyncedBooking`
- `isSyncedExpedia`
- `isSyncedVrbo`

### Request

```shell
curl -X GET \
  'https://api.hostaway.com/v1/los?listingMapId=1&checkinStart=2022-09-01&checkInEnd=2022-09-01&isSyncedAirbnb=0&isSyncedBooking=0&isSyncedExpedia=0&isSyncedVrbo=0&occupancy=1' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo' \
  -H 'Cache-Control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/los?listingMapId=1&checkinStart=2022-09-01&checkInEnd=2022-09-01&isSyncedAirbnb=0&isSyncedBooking=0&isSyncedExpedia=0&isSyncedVrbo=0&occupancy=1",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    "Cache-Control: no-cache"
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
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
    if (this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("GET", "https://api.hostaway.com/v1/los?listingMapId=1&checkinStart=2022-09-01&checkInEnd=2022-09-01&isSyncedAirbnb=0&isSyncedBooking=0&isSyncedExpedia=0&isSyncedVrbo=0&occupancy=1");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/los?listingMapId=1&checkinStart=2022-09-01&checkInEnd=2022-09-01&isSyncedAirbnb=0&isSyncedBooking=0&isSyncedExpedia=0&isSyncedVrbo=0&occupancy=1")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.com")

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    'Cache-Control': "no-cache"
    }

conn.request("GET", "v1,los", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`GET https://api.hostaway.com/v1/los?listingMapId=83546&checkinStart=2022-09-01&checkInEnd=2022-09-01&isSyncedAirbnb=0&isSyncedBooking=0&isSyncedExpedia=0&isSyncedVrbo=0&occupancy=1`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`limit` | no | int | Maximum number of items in the list.
`offset` | no | int | Number of items to skip from beginning of the list.
`listingMapId` | no | int | Identifier of listing object.
`occupancy` | no | int | Occupancy of LOS record
`checkinStart` | no | date (YYYY-MM-DD) | Check in date start for filtering
`checkInEnd` | no | date (YYYY-MM-DD) | Check in date end for filtering
`isSyncedAirbnb` | no | int | It’s an internal informational field to show if the item was successfully pushed to Airbnb
`isSyncedBooking` | no | int | It’s an internal informational field to show if the item was successfully pushed to Booking.com
`isSyncedExpedia` | no | int | It’s an internal informational field to show if the item was successfully pushed to Expedia
`isSyncedVrbo` | no | int | It’s an internal informational field to show if the item was successfully pushed to Vrbo

### Response

An array of los objects.