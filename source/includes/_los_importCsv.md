## Import CSV data

### Transmission details

This data is sent as an HTTP POST, where the CSV data is provided as a form value of the name "CSV". There should be no other form values included in the request. The CSV commas and line feeds must be URL encoded, in that each comma and newline is an escape sequence.

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/los/86156 \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo' \
  -H 'Cache-control: no-cache' \
  -d CSV=2022-09-01%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-02%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-03%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-04%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-05%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/los/86156",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "CSV=2022-09-01%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-02%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-03%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-04%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-05%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    "Cache-control: no-cache",
    "Content-type: application/x-www-form-urlencoded"
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
var data = "CSV=2022-09-01%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-02%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-03%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-04%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-05%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
    if (this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/los/86156");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo");
xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
RequestBody body = RequestBody.create(mediaType, "CSV=2022-09-01%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-02%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-03%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-04%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-05%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/los/86156")
  .post(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo")
  .addHeader("Content-type", "application/x-www-form-urlencoded")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = "CSV=2022-09-01%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-02%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-03%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-04%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800%0A2022-09-05%2C1%2C1%2C100%2C2%2C200%2C3%2C300%2C4%2C400%2C5%2C500%2C6%2C600%2C7%2C700%2C8%2C800"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    'Content-type': "application/x-www-form-urlencoded",
    'Cache-control': "no-cache",
}

conn.request("POST", "/v1/los/csv/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))

```

`POST https://api.hostaway.com/v1/los/csv/{listingMapId}`

You must place elements in the following format:

`{check-in date},{number of occupants},{nights},{price},{nights},{price},{nights},{price},{nights},{price}`

### Example of CSV field value

2022-09-01,1,1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800  
2022-09-02,1,1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800  
2022-09-03,1,1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800  
2022-09-04,1,1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800  
2022-09-05,1,1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800  

### Response

The created los objects or error response.

```json
{
    "status": "success",
    "result": [
        {
            "id": 1,
            "accountId": 1,
            "listingMapId": 1,
            "checkin": "2022-09-01",
            "occupancy": 1,
            "bookingcomRateId": "",
            "prices": "1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800",
            "isSyncedAirbnb": 0,
            "isSyncedBooking": 0,
            "isSyncedExpedia": 0,
            "isSyncedVrbo": 0,
            "syncErrorMessage": null,
            "insertedOn": "2021-09-29 16:14:33",
            "updatedOn": "2021-09-29 16:14:33"
        },
        {
            "id": 2,
            "accountId": 1,
            "listingMapId": 1,
            "checkin": "2022-09-02",
            "occupancy": 1,
            "bookingcomRateId": "",
            "prices": "1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800",
            "isSyncedAirbnb": 0,
            "isSyncedBooking": 0,
            "isSyncedExpedia": 0,
            "isSyncedVrbo": 0,
            "syncErrorMessage": null,
            "insertedOn": "2021-09-29 16:14:33",
            "updatedOn": "2021-09-29 16:14:33"
        },
        {
            "id": 3,
            "accountId": 1,
            "listingMapId": 1,
            "checkin": "2022-09-03",
            "occupancy": 1,
            "bookingcomRateId": "",
            "prices": "1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800",
            "isSyncedAirbnb": 0,
            "isSyncedBooking": 0,
            "isSyncedExpedia": 0,
            "isSyncedVrbo": 0,
            "syncErrorMessage": null,
            "insertedOn": "2021-09-29 16:14:33",
            "updatedOn": "2021-09-29 16:14:33"
        },
        {
            "id": 4,
            "accountId": 1,
            "listingMapId": 1,
            "checkin": "2022-09-04",
            "occupancy": 1,
            "bookingcomRateId": "",
            "prices": "1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800",
            "isSyncedAirbnb": 0,
            "isSyncedBooking": 0,
            "isSyncedExpedia": 0,
            "isSyncedVrbo": 0,
            "syncErrorMessage": null,
            "insertedOn": "2021-09-29 16:14:33",
            "updatedOn": "2021-09-29 16:14:33"
        },
        {
            "id": 5,
            "accountId": 1,
            "listingMapId": 1,
            "checkin": "2022-09-05",
            "occupancy": 1,
            "bookingcomRateId": "",
            "prices": "1,100,2,200,3,300,4,400,5,500,6,600,7,700,8,800",
            "isSyncedAirbnb": 0,
            "isSyncedBooking": 0,
            "isSyncedExpedia": 0,
            "isSyncedVrbo": 0,
            "syncErrorMessage": null,
            "insertedOn": "2021-09-29 16:14:33",
            "updatedOn": "2021-09-29 16:14:33"
        }
    ]
}
```
