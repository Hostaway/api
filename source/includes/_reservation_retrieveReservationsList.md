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
`offset` | no | int | **Deprecated.** Number of items to skip from beginning of the list. To retrieve next items set the parameter to 100, 200, etc. accordingly. Please migrate to cursor-based pagination using `afterId` instead, as offset-based pagination has poor performance for large datasets.
`afterId` | no | int | Reservation ID to use as cursor for pagination. Returns reservations that come after this ID in the sort order. When provided, `offset` is ignored. Use the `id` of the last reservation from the previous page.
`sortOrder` | no | string | One of: arrivalDate, arrivalDateDesc, lastConversationMessageSent, lastConversationMessageSentDesc, lastConversationMessageReceived, lastConversationMessageReceivedDesc, latestActivity, latestActivityDesc, updatedOn. See [Sorting by `updatedOn`](#sorting-by-updatedon) for a common use case.
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
`includeCancellationPolicy` | no | int | If set to `1`, each reservation is supplied with `cancellationPolicyDetails` (the immutable policy snapshot) and the channel-specific cancellation policy code fields (`bookingCancellationPolicy`, `vrboCancellationPolicy`, `marriottCancellationPolicy`). Default is `0`; opt-in here to avoid bloating large paginated responses. These fields are always included on the [Retrieve a reservation](#retrieve-a-reservation) endpoint regardless of this parameter.
`latestActivityStart` | no | date |
`latestActivityEnd` | no | date |
`reservationAgreement` | no | string |
`guestEmail` | no | string | Filter reservations by guest email address

### Response

An array of reservations objects.

### Sorting by `updatedOn`

`sortOrder=updatedOn` returns reservations from oldest to newest, ordered by their last modification time. The default order (no `sortOrder`) is newest first.

**Useful when** your integration stores one record per `(listing, dates)` and later writes overwrite earlier ones.

Example — same dates, one cancelled and one active:

id  | status    | updatedOn
--- | --------- | -------------------
100 | cancelled | 2026-01-20 23:55:01
101 | modified  | 2026-03-13 18:00:54

Request:

```
GET /v1/reservations?listingId=123&sortOrder=updatedOn
```

Response order: `100`, then `101`. The active record is processed last and overwrites the cancelled one.

**Note:** this works when the cancellation has an older `updatedOn` than the active record. If a reservation is cancelled after being confirmed, the cancelled record will have a newer `updatedOn` and will appear after the active one.

### Cursor-based pagination (recommended for large datasets)

For accounts with a large number of reservations, we recommend using cursor-based pagination with the `afterId` parameter instead of `offset`. 

**How it works:**

1. Make your first request without `afterId` to get the first page
2. Take the `id` of the last reservation in the response
3. Use that `id` as the `afterId` parameter in your next request
4. Repeat until you receive an empty result set

**Example workflow:**

```
# First page
GET /v1/reservations?limit=100

# Second page (using id=12345 from last item of first page)
GET /v1/reservations?limit=100&afterId=12345

# Third page (using id=12245 from last item of second page)
GET /v1/reservations?limit=100&afterId=12245
```

**Important notes:**

- When `afterId` is provided, the `offset` parameter is ignored
- Results are ordered by `updatedOn DESC, id DESC` by default
- Since ordering is by `updatedOn`, reservations that are updated during pagination may shift between pages. For full syncs, consider using a date range filter to ensure consistency