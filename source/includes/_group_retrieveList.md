## Get Groups list

Get list of groups

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/userGroups \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw' \
  --header 'cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/userGroups",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    "cache-control: no-cache"
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

xhr.open("GET", "https://api.hostaway.com/v1/userGroups");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/userGroups")
  .get()
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/userGroups"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    'cache-control': "no-cache"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/userGroups`


### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`name` | yes | string |
`description` | yes | string |
`createListing` | yes | int |
`readListing` | yes | int |
`updateListing` | yes | int |
`deleteListing` | yes | int |
`createReservation` | yes | int |
`readReservation` | yes | int |
`updateReservation` | yes | int |
`deleteReservation` | yes | int |
`readCalendar` | yes | int |
`updateCalendar` | yes | int |
`readBookingEngine` | yes | int |
`updateBookingEngine` | yes | int |
`readRevenueManagement` | yes | int |
`readChannelManager` | yes | int |
`updateChannelManager` | yes | int |
`createTask` | yes | int |
`readTask` | yes | int |
`updateTask` | yes | int |
`deleteTask` | yes | int |
`createAutomation` | yes | int |
`readAutomation` | yes | int |
`updateAutomation` | yes | int |
`deleteAutomation` | yes | int |
`readMessage` | yes | int |
`updateMessage` | yes | int |
`updateIntegration` | yes | int |
`createGuestInvoicing` | yes | int |
`readGuestInvoicing` | yes | int |
`updateGuestInvoicing` | yes | int |
`deleteGuestInvoicing` | yes | int |
`receiveReservationNotificationEmail` | yes | int |
`isAdmin` | yes | int |
`accessFinancialData` | yes | int |
`accessContactData` | yes | int |
`hasAccessToNewListings` | yes | int |
`createReview` | yes | int |
`readReview` | yes | int |
`updateReview` | yes | int |
`deleteReview` | yes | int |
`createOwnerStatement` | yes | int |
`readOwnerStatement` | yes | int |
`updateOwnerStatement` | yes | int |
`deleteOwnerStatement` | yes | int |
`createGuestbook` | yes | int |
`readGuestbook` | yes | int |
`updateGuestbook` | yes | int |
`deleteGuestbook` | yes | int |
`readAnalytics` | yes | int |
`readListingsFinancials` | yes | int |
`readOccupancyReport` | yes | int |


```json
{
    "status": "success",
    "result": [
        {
            "id": 1,
            "accountId": 1,
            "name": "Group",
            "description": "Group description",
            "createListing": 1,
            "readListing": 1,
            "updateListing": 1,
            "deleteListing": 1,
            "createReservation": 1,
            "readReservation": 1,
            "updateReservation": 1,
            "deleteReservation": 0,
            "readCalendar": 1,
            "updateCalendar": 1,
            "readBookingEngine": 1,
            "updateBookingEngine": 1,
            "readRevenueManagement": 1,
            "readChannelManager": 1,
            "updateChannelManager": 1,
            "createTask": 1,
            "readTask": 1,
            "updateTask": 1,
            "deleteTask": 1,
            "createAutomation": 1,
            "readAutomation": 1,
            "updateAutomation": 1,
            "deleteAutomation": 1,
            "readMessage": 1,
            "updateMessage": 1,
            "updateIntegration": 1,
            "createGuestInvoicing": 0,
            "readGuestInvoicing": 0,
            "updateGuestInvoicing": 0,
            "deleteGuestInvoicing": 0,
            "receiveReservationNotificationEmail": 0,
            "isAdmin": 0,
            "accessFinancialData": 0,
            "accessContactData": 0,
            "hasAccessToNewListings": 0,
            "createReview": 0,
            "readReview": 0,
            "updateReview": 0,
            "deleteReview": 0,
            "createOwnerStatement": 0,
            "readOwnerStatement": 0,
            "updateOwnerStatement": 0,
            "deleteOwnerStatement": 0,
            "createGuestbook": 0,
            "readGuestbook": 0,
            "updateGuestbook": 0,
            "deleteGuestbook": 0,
            "readAnalytics": 0,
            "readListingsFinancials": 0,
            "readOccupancyReport": 0
        }
    ]
}
```
