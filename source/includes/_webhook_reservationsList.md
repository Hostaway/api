## Get reservation webhooks list

Get reservation webhooks list

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/webhooks/reservations \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/webhooks/reservations",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
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
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/webhooks/reservations");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```
```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/webhooks/reservations")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/webhooks/reservations"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    'Cache-control': "no-cache"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/webhooks/reservations`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`limit` | no | int | Maximum number of items in the list.
`offset` | no | int | Number of items to skip from beginning of the list.


### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`listingMapId` | no | int |
`channelId` | no | int | Please check here for valid channel values: [Channels](#reservation-channels)
`isEnabled` | yes | bool |
`url` | yes | string |
`type` | yes | string |
`insertedOn` | yes | string |
`updatedOn` | yes | string |
`listingName` | yes | string |
`login` | no | string | Login for basic auth (if login and password provided we'll send basic auth header)
`password` | no | string | Password for basic auth


```json
{
    "status": "success",
    "result": [
      {
        "id": 1,
        "accountId": 1,
        "listingMapId": null,
        "channelId": null,
        "isEnabled": 1,
        "url": "http://httpbin.org/post",
        "type": "manual",
        "insertedOn": "2021-08-05 10:08:01",
        "updatedOn": "2021-08-05 10:08:01",
        "listingName": null,
        "login": "my_login",
        "password": "****"
      }
    ]
}
```
