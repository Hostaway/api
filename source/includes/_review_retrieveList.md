## Get reviews list

Get Reviews list

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/reviews \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reviews",
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

xhr.open("GET", "https://api.hostaway.com/v1/reviews");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reviews")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/reviews"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    'Cache-control': "no-cache"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/reviews`

Query Parameter | Required | Type   | Description
--------- | -------- |--------| -----------
`listingMapIds` | no | int[]  | Array of Listing IDs
`limit` | no | int    | Maximum number of items in the list. Defaults to `100`, capped at `500`.
`offset` | no | int    | Number of items to skip from beginning of the list.
`sortBy` | no | string | One of: id, listingMapId, reservationId, autoReviewId, autoReviewTemplateId, scheduledDateTime, timeDelta, channelId, type, status, rating, submittedAt, guestName, arrivalDate, departureDate, channelReservationId, listingInternalName, listingExternalName. Unrecognised values are ignored.
`sortOrder` | no | string | Asc or desc. Defaults to desc.
`reservationId` | no | int    | Hostaway reservation ID.
`channelReservationIds` | no | int[]  | Array of reservation IDs as assigned by the channel.
`channelIds` | no | int[]  | Array of channel IDs. Please check here for valid channel values: [Channels](#reservation-channels). Channels that are not enabled on the account are ignored.
`type` | no | string | One of: guest-to-host, host-to-guest
`statuses` | no | array  | awaiting, pending, scheduled, submitted, published, expired
`guestName` | no | string | Partial, case-insensitive match against the reservation guest name, first name or last name.
`listingInternalNames` | no | string[] | Array of listing internal names. Exact match.
`listingExternalNames` | no | string[] | Array of listing external (channel) names. Exact match.
`tags` | no | int[]  | Array of listing tag IDs. Returns reviews of listings carrying any of the given tags.
`ratingMin` | no | float  | Lower bound on `rating` (0-10).
`ratingMax` | no | float  | Upper bound on `rating` (0-10).
`submittedAtStart` | no | datetime | Lower bound on `submittedAt`.
`submittedAtEnd` | no | datetime | Upper bound on `submittedAt`. Rolls to the end of the day when no time is given.
`departureDateStart` | no | date   | Lower bound on the reservation departure date.
`departureDateEnd` | no | date   | Upper bound on the reservation departure date.
`stayDateStart` | no | date   | Keeps reviews whose reservation departs on or after this date.
`stayDateEnd` | no | date   | Keeps reviews whose reservation arrives on or before this date.
`hasHostReply` | no | bool   | `true` returns only reviews with a non-empty `revieweeResponse`, `false` only reviews without one.
`preview` | no | bool   | When `true`, template variables in `publicReview` and `privateFeedback` are replaced with their actual values.

### Response

An array of review objects.

```json
{
    "status": "success",
    "result": [
        {
            "id": 1,
            "accountId": 1,
            "listingMapId": 1,
            "reservationId": 1,
            "autoReviewId": null,
            "timeDelta": null,
            "scheduledDateTime": null,
            "channelId": 2005,
            "type": "guest-to-host",
            "status": "awaiting",
            "rating": null,
            "externalReviewId": null,
            "externalReservationId": null,
            "publicReview": null,
            "privateFeedback": null,
            "revieweeResponse": null,
            "isRevieweeRecommended": null,
            "isCancelled": 0,
            "autoReviewTemplateId": null,
            "reviewCategory": [],
            "departureDate": "2021-05-11 22:00:00",
            "arrivalDate": "2021-05-06 08:00:00",
            "listingName": "Beautiful and cozy apartment close to city center",
            "guestName": "Andrew Peterson"
        }
    ],
    "count": 1,
    "offset": null
}
```
