## Retrieve calendars for many listings

Reads the calendar of up to 50 listings in one request. Use it instead of calling [Retrieve a calendar](#retrieve-a-calendar) once per listing.

<aside class="notice">
This endpoint has its own rate limit of 20 requests per 10 seconds, per account. See [Rate limits](#rate-limits).
</aside>

### Request

```shell
curl --globoff --request GET \
  --url 'https://api.hostaway.com/v1/listings/calendar?listingMapIds[]=40160&listingMapIds[]=40161&startDate=2026-11-01&endDate=2026-11-30&includeResources=1' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -H 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings/calendar?listingMapIds[]=40160&listingMapIds[]=40161&startDate=2026-11-01&endDate=2026-11-30&includeResources=1",
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
  "url": "https://api.hostaway.com/v1/listings/calendar?listingMapIds[]=40160&listingMapIds[]=40161&startDate=2026-11-01&endDate=2026-11-30&includeResources=1",
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
  .url("https://api.hostaway.com/v1/listings/calendar?listingMapIds[]=40160&listingMapIds[]=40161&startDate=2026-11-01&endDate=2026-11-30&includeResources=1")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/listings/calendar"

querystring = [("listingMapIds[]", "40160"), ("listingMapIds[]", "40161"), ("startDate", "2026-11-01"), ("endDate", "2026-11-30"), ("includeResources", "1")]

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
```

`GET https://api.hostaway.com/v1/listings/calendar`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`listingMapIds[]` | yes | array | Listing ids, in the bracket form: `listingMapIds[]=40160&listingMapIds[]=40161`. Send from 1 to 50 positive integers. Duplicates count once. An id that is not a listing of your account is skipped, and the response has no entry for it.
`startDate` | no | date | First day to return, in `Y-m-d` format. Without it the calendar starts six months in the past.
`endDate` | no | date | Last day to return, in `Y-m-d` format. Without it the calendar ends two years in the future. It must not be later than two years from today.
`includeResources` | no | int | `1` adds a short reference to each reservation of the day to its `reservations` array. The reference is described under Response. `0` leaves them out. Send it to be sure, because the default depends on your account.
`includeInquiry` | no | int | `1` adds the reservation references of each day, and includes inquiries. Send `1`, `true`, `0` or `false`. Default is `0`.
`reservationStatuses[]` | no | array | Extra reservation statuses to add to `reservations`, for example `reservationStatuses[]=cancelled`. Used only when `includeInquiry` is `1`. Reservations that block the calendar are always included.

### Limits

A request that breaks a limit fails with HTTP **400** and a message that names the problem.

- `listingMapIds[]` is required and must hold 1 to 50 ids.
- `startDate` and `endDate` must be valid dates, and `startDate` must not be after `endDate`.
- `startDate` must not be earlier than the first day of the month two years ago.
- `endDate` must not be later than two years from today.
- `listingMapIds[]` must hold positive integers.
- `includeInquiry` must be `1`, `true`, `0` or `false`.
- The number of listings times the number of days must not be more than **18,300**. This is 50 listings for 366 days. The first and last day both count.
- `reservationStatuses[]` must be a list of strings, when `includeInquiry` is `1`.

The 18,300 limit also applies when you send no dates. The default range is about 915 days, so a request without dates fits about 20 listings. Send `startDate` and `endDate` to read more listings.

```json
{
  "status": "fail",
  "message": "At most 50 listings per call"
}
```

### Response

An array with one item for each listing found, in the order you sent the ids.

The response has no entry for a day that has no stored calendar row, and this endpoint never creates one. A listing with no stored days returns an empty `days` list.

Property | Type | Description
-------- | ---- | -----------
`listingMapId` | int | Listing id.
`days` | array | An array of [calendar day objects](#calendar-day-object), one for each stored day in the range. Each `reservations` item is a reservation reference.

```json
{
  "status": "success",
  "result": [
    {
      "listingMapId": 40160,
      "days": [
        {
          "id": 46253,
          "date": "2026-11-01",
          "isAvailable": 1,
          "isProcessed": 1,
          "status": "available",
          "price": 225,
          "currency": "USD",
          "minimumStay": 1,
          "maximumStay": 1125,
          "closedOnArrival": null,
          "closedOnDeparture": null,
          "note": null,
          "countAvailableUnits": null,
          "availableUnitsToSell": null,
          "countPendingUnits": null,
          "countBlockingReservations": null,
          "countBlockedUnits": null,
          "reservations": [
            {
              "id": 1250043,
              "status": "new",
              "arrivalDate": "2026-11-01",
              "departureDate": "2026-11-04"
            }
          ]
        }
      ]
    }
  ]
}
```

A reservation reference has only these fields. Read the full reservation with [Retrieve a reservation](#retrieve-a-reservation), `GET /v1/reservations/{id}`.

Property | Type | Description
-------- | ---- | -----------
`id` | int | Reservation id.
`status` | string | Reservation status.
`arrivalDate` | string | Arrival date, in `Y-m-d` format.
`departureDate` | string | Departure date, in `Y-m-d` format.
