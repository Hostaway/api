---
title: Hostaway Public API Reference

language_tabs:
  - shell
  - php
  - javascript
  - java
  - python

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>

includes:
  - listing
  - listing_listingObject
  - listing_listingAmenityObject
  - listing_listingBedTypeObject
  - listing_listingImageObject
  - listing_retrieveListingsList
  - listing_retrieveListing
  - listing_createListing
  - listing_updateListing
  - listing_deleteListing
  - reservation
  - reservation_reservationObject
  - reservation_retrieveReservationsList
  - reservation_retrieveReservation
  - reservation_createReservation
  - reservation_updateReservation
  - reservation_cancelReservation
  - reservation_deleteReservation
  - calendar
  - calendar_calendarDayObject
  - calendar_retrieveCalendar
  - propertyType
  - errors

search: true
---

# Introduction

Welcome to the Hostaway Public API! This API allows Hostaway users to create, update and delete 
listings and reservations, read listing calendars, block and unblock calendar days.
Hostaway Public API is RESTful, JSON data format is used in both requests and responses bodies, 
Only HTTPS protocol is allowed.

<aside class="notice">
Base URL for all API endpoints is: https://api.hostaway.com/v1/
</aside>

Please notice that boolean type should be considered as integer 0 or 1 value. 

# Authentication

We use [Client Credentials Grant](https://tools.ietf.org/html/rfc6749#page-40) of OAuth 2.0 protocol for API authentication. 

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/accessTokens \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -d 'grant_type=client_credentials&client_id=10450&client_secret=yourclientsecret&scope=general'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/accessTokens",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general",
  CURLOPT_HTTPHEADER => array(
    "cache-control: no-cache",
    "content-type: application/x-www-form-urlencoded"
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
var data = "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/accessTokens");
xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
RequestBody body = RequestBody.create(mediaType, "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/accessTokens")
  .post(body)
  .addHeader("content-type", "application/x-www-form-urlencoded")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.com")

payload = "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general"

headers = {
    'content-type': "application/x-www-form-urlencoded",
    'cache-control': "no-cache"
    }

conn.request("POST", "/v1/accessTokens", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/accessTokens`

To issue a new access token the client sends a `POST` request with following request body parameters to the 
authorization server endpoint:

Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`grant_type` | yes | string | With the value `client_credentials`
`client_id` | yes | int | With the account ID
`client_secret` | yes | string | With the client’s secret (can be obtained in your Hostaway dashboard)
`scope` | yes | string | With the value `general`

### Response

```json
{
    "token_type": "Bearer",
    "expires_in": 15897600,
    "access_token": "yournewaccesstoken"
}
```

The authorization server will respond with a JSON object containing the following properties:

Property | Type | Description
-------- | ---- | ----------- 
`token_type` | string | With the value `Bearer`
`expires_in` | int | With an integer representing the TTL of the access token
`access_token` | string | A JWT signed with the authorization server’s private key

The access token should be included in all other API requests to the server in a header and should look like the following:

`authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiId
sImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZ
jIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2J
kZWM0MDNiMzMwNzhhYTIyN2JmIiwi`

Time to live for the generated access token is 6 months.

<aside class="warning">
Please keep your API secret and access tokens strictly private
</aside>