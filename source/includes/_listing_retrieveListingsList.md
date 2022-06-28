## Retrieve a listings list

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/listings?limit=&offset=&sortOrder=&city=&match=&country=&contactName=&propertyTypeId=' \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -H 'cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings?limit=&offset=&sortOrder=&city=&match=&country=&contactName=&propertyTypeId=",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
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
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.hostaway.com/v1/listings?limit=&offset=&sortOrder=&city=&match=&country=&isSyncig=&contactName=&propertyTypeId=",
  "method": "GET",
  "headers": {
    "authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "cache-control": "no-cache"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings?limit=&offset=&sortOrder=&city=&match=&country=&contactName=&propertyTypeId=")
  .get()
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/listings"

querystring = {"limit":"","offset":"","sortOrder":"","city":"","match":"","country":"","contactName":"","propertyTypeId":""}

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
```

`GET https://api.hostaway.com/v1/listings`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`limit` | no | int | Maximum number of items in the list.
`offset` | no | int | Number of items to skip from beginning of the list.
`sortOrder` | no | string | One of: name, nameReversed, order, orderReversed, contactName, contactNameReversed.
`city` | no | string | 
`match` | no | string | Used to search a listing by listing name.
`country` | no | string |
`contactName` | no | string |
`propertyTypeId` | no | int |
`includeResources` | no | int | if includeResources flag is 1 then response objects are supplied with supplementary resources, default is 1.
`availabilityDateStart` | no | string | date in Y-m-d format
`availabilityDateEnd` | no | string | date in Y-m-d format
`availabilityGuestNumber` | no | int | Listing person capacity
`userId` | no | int | Used to limit listing to user got access to
`isBookingEngineActive` | no | bool | Listing is active on website (Booking Engine)
### Response

An array of listing objects.
