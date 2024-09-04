## Retrieve a reservations list

### Request

```shell
curl -X GET \
  'https://api.hostaway.com/v1/reservations?limit=&offset=&order=&channelId=&listingId=&arrivalStartDate=&arrivalEndDate=&departureStartDate=&departureEndDate=&hasUnreadConversationMessages=' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw' \
  -H 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations?limit=&offset=&order=&channelId=&listingId=&arrivalStartDate=&arrivalEndDate=&departureStartDate=&departureEndDate=&hasUnreadConversationMessages=",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
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
var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/reservations?limit=&offset=&order=&channelId=&listingId=&arrivalStartDate=&arrivalEndDate=&departureStartDate=&departureEndDate=&hasUnreadConversationMessages=");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send();
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations?limit=&offset=&order=&channelId=&listingId=&arrivalStartDate=&arrivalEndDate=&departureStartDate=&departureEndDate=&hasUnreadConversationMessages=")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
    'Cache-control': "no-cache"
    }

conn.request("GET", "/v1/reservations?limit=&offset=&order=&channelId=&listingId=&arrivalStartDate=&arrivalEndDate=&departureStartDate=&departureEndDate=&hasUnreadConversationMessages=", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`GET https://api.hostaway.com/v1/reservations`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`limit` | no | int | Maximum number of items in the list (default limit is 100).
`offset` | no | int | Number of items to skip from beginning of the list. To retrieve next items set the parameter to 100, 200, etc. accordingly.
`sortOrder` | no | string | One of: arrivalDate, arrivalDateDesc, lastConversationMessageSent, lastConversationMessageSentDesc, lastConversationMessageReceived, lastConversationMessageReceivedDesc, latestActivity, latestActivityDesc.
`channelId` | no | int | Please check here for valid channel values: [Channels](#reservation-channels) 
`listingId` | no | int |
`assigneeUserId` | no | int |
`match` | no | string | Used to search a reservation by guest name.
`arrivalStartDate` | no | date |
`arrivalEndDate` | no | date |
`departureStartDate` | no | date |
`departureEndDate` | no | date |
`hasUnreadConversationMessages` | no | bool
`isStarred` | no | bool
`isArchived` | no | bool
`isPinned` | no | bool
`customerUserId` | no | string
`includeResources` | no | int | if includeResources flag is 1 then response object is supplied with supplementary resources, default is 0.
`latestActivityStart` | no | date |
`latestActivityEnd` | no | date |
`reservationAgreement` | no | string |
`guestEmail` | no | string | Filter reservations by guest email address

### Response

An array of reservations objects.
