## Retrieve a listings index

A short list of your listings, for finding the ones you need. Each row holds only the fields in the table below. Use [Retrieve a listings list](#retrieve-a-listings-list) when you need the whole listing.

### Request

```shell
curl --globoff --request GET \
  --url 'https://api.hostaway.com/v1/listings/index?propertyTypeIds[]=1&amenityIds[]=2&excludeAmenityIds[]=7&isActive=1&isMultiUnit=0&tags[]=15' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -H 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings/index?propertyTypeIds[]=1&amenityIds[]=2&excludeAmenityIds[]=7&isActive=1&isMultiUnit=0&tags[]=15",
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
  "url": "https://api.hostaway.com/v1/listings/index?propertyTypeIds[]=1&amenityIds[]=2&excludeAmenityIds[]=7&isActive=1&isMultiUnit=0&tags[]=15",
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
  .url("https://api.hostaway.com/v1/listings/index?propertyTypeIds[]=1&amenityIds[]=2&excludeAmenityIds[]=7&isActive=1&isMultiUnit=0&tags[]=15")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/listings/index"

querystring = [("propertyTypeIds[]", "1"), ("amenityIds[]", "2"), ("excludeAmenityIds[]", "7"), ("isActive", "1"), ("isMultiUnit", "0"), ("tags[]", "15")]

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
```

`GET https://api.hostaway.com/v1/listings/index`

All parameters are optional. Send a list in the bracket form, for example `propertyTypeIds[]=1&propertyTypeIds[]=2`. A parameter with an empty or invalid value is ignored, so it does not filter.

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`propertyTypeIds[]` | no | array | Property type ids. A listing matches if it has any of them. See [Retrieve a property types list](#retrieve-a-property-types-list).
`amenityIds[]` | no | array | Amenity ids. A listing matches only if it has all of them.
`excludeAmenityIds[]` | no | array | Amenity ids. A listing is left out if it has any of them.
`isActive` | no | int | `1` returns only active listings. `0` returns only inactive listings.
`isMultiUnit` | no | int | `1` returns only multi unit listings. `0` returns only single unit listings.
`tags[]` | no | array | Tag ids. A listing matches if it has any of them. Each returned listing still shows all of its tags.

The response has no paging, so it holds every listing that matches. Child units of a multi unit listing are not returned. Rows are sorted by `id` ascending, and the `tags` of a row by name ascending.

### Response

An array of listing index rows, and `count`, the number of rows returned.

Property | Type | Description
-------- | ---- | -----------
`id` | int | Listing id.
`name` | string | Internal listing name.
`city` | string | `null` when the listing has no city.
`tags` | array | Tags of the listing. Each item has an `id` and a `name`. Empty when the listing has no tags.
`isMultiUnit` | boolean | `true` for a multi unit listing, `false` otherwise.
`parentUnitId` | int | Always `null`, because child units are not returned.
`bedroomsNumber` | int | `null` when not set.
`personCapacity` | int | `null` when not set.

```json
{
  "status": "success",
  "result": [
    {
      "id": 40160,
      "name": "Property #3",
      "city": "Bremerhaven",
      "isMultiUnit": false,
      "parentUnitId": null,
      "bedroomsNumber": 1,
      "personCapacity": 6,
      "tags": [
        {
          "id": 15,
          "name": "Downtown"
        }
      ]
    }
  ],
  "count": 1
}
```
