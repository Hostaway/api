## Get User by ID

Get User by ID

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/user/{userId} \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/user/{userId}",
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

xhr.open("GET", "https://api.hostaway.com/v1/user/{userId}");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/user/{userId}")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/user/{userId}"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    'Cache-control': "no-cache"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/user/{userId}`

Query Parameter | Required | Type  | Description
--------- | -------- |-------| -----------
`includeResources` | no | int   | if includeResources flag is 1 then response object is supplied with supplementary resources, default is 0.


### Response

A User object

### Response

Property | Required | Type        | Description 
-------- | -------- |-------------|------------ 
`id` | yes | int         |
`accountId` | yes | int         |
`userGroupId` | yes | int         |
`userGroupName` | yes | string      |
`email` | yes | string      |
`verificationCode` | yes | string      |
`secondEmail` | yes | string      |
`firstName` | yes | string      |
`lastName` | yes | string      |
`title` | yes | string      |
`country` | yes | string      |
`city` | yes | string      |
`phone` | yes | string      |
`emergencyPhone` | yes | string      |
`preferredContactMethod` | yes | string      |
`noteBeforeContact` | yes | string      |
`address` | yes | string      |
`postalCode` | yes | string      |
`profilePictureUrl` | yes | string      |
`timezone` | yes | string      |
`createListing` | yes | int         |
`readListing` | yes | int         |
`updateListing` | yes | int         |
`deleteListing` | yes | int         |
`createReservation` | yes | int         |
`readReservation` | yes | int         |
`updateReservation` | yes | int         |
`deleteReservation` | yes | int         |
`readCalendar` | yes | int         |
`updateCalendar` | yes | int         |
`readBookingEngine` | yes | int         |
`updateBookingEngine` | yes | int         |
`readRevenueManagement` | yes | int         |
`readChannelManager` | yes | int         |
`updateChannelManager` | yes | int         |
`createTask` | yes | int         |
`readTask` | yes | int         |
`updateTask` | yes | int         |
`deleteTask` | yes | int         |
`createAutomation` | yes | int         |
`readAutomation` | yes | int         |
`updateAutomation` | yes | int         |
`deleteAutomation` | yes | int         |
`readMessage` | yes | int         |
`updateMessage` | yes | int         |
`updateIntegration` | yes | int         |
`createGuestInvoicing` | yes | int         |
`readGuestInvoicing` | yes | int         |
`updateGuestInvoicing` | yes | int         |
`deleteGuestInvoicing` | yes | int         |
`receiveReservationNotificationEmail` | yes | int         |
`isDisabledByHostaway` | yes | int         |
`isDisabledByAccount` | yes | int         |
`hasAccessToNewListings` | yes | int         |
`createReview` | yes | int         |
`readReview` | yes | int         |
`updateReview` | yes | int         |
`deleteReview` | yes | int         |
`createOwnerStatement` | yes | int         |
`readOwnerStatement` | yes | int         |
`updateOwnerStatement` | yes | int         |
`deleteOwnerStatement` | yes | int         |
`createGuestbook` | yes | int         |
`readGuestbook` | yes | int         |
`updateGuestbook` | yes | int         |
`deleteGuestbook` | yes | int         |
`isAdmin` | yes | int         |
`accessFinancialData` | yes | int         |
`accessContactData` | yes | int         |
`accessGuestNotes` | yes | int         |
`accessTagManagement` | yes | int         |
`readAnalytics` | yes | int         |
`readListingsFinancials` | yes | int         |
`readOccupancyReport` | yes | int         |
`listingMapIds` | no | array\|null | 


```json
{
    "status": "success",
    "result": [
        {
            "id": 1,
            "accountId": 1,
            "userGroupId": 1,
            "userGroupName": null,
            "email": "user@example.com",
            "icalKey": null,
            "passwordUpdatedOn": null,
            "verificationCode": "",
            "secondEmail": "",
            "firstName": "Andrew",
            "lastName": "Peterson",
            "title": "",
            "country": "",
            "city": "",
            "phone": "1234567",
            "emergencyPhone": "",
            "preferredContactMethod": "phone",
            "noteBeforeContact": "",
            "address": "",
            "postalCode": "",
            "profilePictureUrl": "",
            "timezone": "UTC",
            "createListing": 1,
            "readListing": 0,
            "updateListing": 1,
            "deleteListing": 0,
            "createReservation": 1,
            "readReservation": 0,
            "updateReservation": 0,
            "deleteReservation": 1,
            "readCalendar": 1,
            "updateCalendar": 0,
            "readBookingEngine": 1,
            "updateBookingEngine": 0,
            "readRevenueManagement": 1,
            "readChannelManager": 0,
            "updateChannelManager": 1,
            "createTask": 0,
            "readTask": 1,
            "updateTask": 0,
            "deleteTask": 1,
            "createAutomation": 0,
            "readAutomation": 1,
            "updateAutomation": 0,
            "deleteAutomation": 1,
            "readMessage": 0,
            "updateMessage": 1,
            "updateIntegration": 0,
            "createGuestInvoicing": 0,
            "readGuestInvoicing": 0,
            "updateGuestInvoicing": 0,
            "deleteGuestInvoicing": 0,
            "receiveReservationNotificationEmail": 1,
            "isDisabledByHostaway": 0,
            "isDisabledByAccount": 0,
            "hasAccessToNewListings": 0,
            "createReview": 0,
            "readReview": 0,
            "updateReview": 0,
            "deleteReview": 0,
            "createOwnerStatement": 1,
            "readOwnerStatement": 1,
            "updateOwnerStatement": 1,
            "deleteOwnerStatement": 1,
            "createGuestbook": 0,
            "readGuestbook": 0,
            "updateGuestbook": 0,
            "deleteGuestbook": 0,
            "isAdmin": 0,
            "accessFinancialData": 0,
            "accessContactData": 0,
            "accessGuestNotes": 1,
            "accessTagManagement": 0,
            "readAnalytics": 0,
            "readListingsFinancials": 0,
            "readOccupancyReport": 0,
            "lastLoginOn": null,
            "listingMapIds": [1, 2, 3, 4]
        }
    ]
}
```
