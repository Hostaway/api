## Add listing images

Add images to a listing. Images are processed asynchronously in the background.

### Request

```shell
curl --request POST \
  --url https://api.hostaway.com/v1/listings/12345/images \
  --header 'Authorization: Bearer {accessToken}' \
  --header 'Content-type: application/json' \
  --data '{
    "images": [
        {
            "url": "https://example.com/images/living-room.jpg",
            "caption": "Spacious living room",
            "bookingEngineCaption": "Living room with ocean view",
            "airbnbCaption": "Bright living area",
            "vrboCaption": "Main living space",
            "sortOrder": 1
        },
        {
            "url": "https://example.com/images/bedroom.jpg",
            "caption": "Master bedroom",
            "sortOrder": 2
        }
    ]
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings/12345/images",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => json_encode([
    "images" => [
      [
        "url" => "https://example.com/images/living-room.jpg",
        "caption" => "Spacious living room",
        "bookingEngineCaption" => "Living room with ocean view",
        "airbnbCaption" => "Bright living area",
        "vrboCaption" => "Main living space",
        "sortOrder" => 1
      ],
      [
        "url" => "https://example.com/images/bedroom.jpg",
        "caption" => "Master bedroom",
        "sortOrder" => 2
      ]
    ]
  ]),
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer {accessToken}",
    "Content-type: application/json"
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
var data = JSON.stringify({
  "images": [
    {
      "url": "https://example.com/images/living-room.jpg",
      "caption": "Spacious living room",
      "bookingEngineCaption": "Living room with ocean view",
      "airbnbCaption": "Bright living area",
      "vrboCaption": "Main living space",
      "sortOrder": 1
    },
    {
      "url": "https://example.com/images/bedroom.jpg",
      "caption": "Master bedroom",
      "sortOrder": 2
    }
  ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/listings/12345/images");
xhr.setRequestHeader("Authorization", "Bearer {accessToken}");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"images\":[{\"url\":\"https://example.com/images/living-room.jpg\",\"caption\":\"Spacious living room\",\"bookingEngineCaption\":\"Living room with ocean view\",\"airbnbCaption\":\"Bright living area\",\"vrboCaption\":\"Main living space\",\"sortOrder\":1},{\"url\":\"https://example.com/images/bedroom.jpg\",\"caption\":\"Master bedroom\",\"sortOrder\":2}]}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/12345/images")
  .post(body)
  .addHeader("Authorization", "Bearer {accessToken}")
  .addHeader("Content-type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "images": [
    {
      "url": "https://example.com/images/living-room.jpg",
      "caption": "Spacious living room",
      "bookingEngineCaption": "Living room with ocean view",
      "airbnbCaption": "Bright living area",
      "vrboCaption": "Main living space",
      "sortOrder": 1
    },
    {
      "url": "https://example.com/images/bedroom.jpg",
      "caption": "Master bedroom",
      "sortOrder": 2
    }
  ]
})
headers = {
  'Authorization': 'Bearer {accessToken}',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/listings/12345/images", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/listings/{listingId}/images`

### Request body

Property | Required | Type | Description
-------- | -------- | ---- | -----------
`images` | yes | array | Array of image objects to add

### Image object properties

Property | Required | Type | Description
-------- | -------- | ---- | -----------
`url` | yes | string | Public URL of the image to upload. Must be a valid, accessible URL.
`caption` | no | string | Default caption for the image
`bookingEngineCaption` | no | string | Caption displayed on the booking engine
`airbnbCaption` | no | string | Caption displayed on Airbnb
`vrboCaption` | no | string | Caption displayed on VRBO
`sortOrder` | no | int | Sort order for the image (default: 0)

### Response

> Example response

```json
{
    "status": "success",
    "result": {
        "message": "Image upload job scheduled for listing 12345. 2 images will be processed asynchronously.",
        "imagesCount": 2
    }
}
```

Property | Type | Description
-------- | ---- | -----------
`message` | string | Confirmation message with details about the scheduled job
`imagesCount` | int | Number of images that will be processed

<aside class="notice">
Images are processed asynchronously. The endpoint returns immediately after scheduling the job. It may take some time for the images to appear on the listing.
</aside>

#### Suggested way to use the API

**Case 1: just adding a new set of image to a Listing**

1. Check the existing images present on the listing using the `GET /v1/listings/{listingId}?includeResources=1` endpoint.
2. Call the new `POST /v1/listings/{listingId}/images` to upload the new images
3. Wait up to a few minutes for the images to be processed
4. Call the `GET /v1/listings/{listingId}?includeResources=1` to check the images that have been uploaded successfully.

**Case 2: adding and deleting/sorting images for a Listing**

1. Check the existing images present on the listing using the `GET /v1/listings/{listingId}?includeResources=1` endpoint.
2. Call the `PUT /v1/listings/{listingId}` altering the list of `listingImages` to remove the images you don't need, and/or changing their `sortOrder` according to your needs.
3. Call the new `POST /v1/listings/{listingId}/images` to upload the new images.
4. Wait up to a few minutes for the images to be processed.
5. Call the `GET /v1/listings/{listingId}?includeResources=1` to check the images that have been uploaded successfully.
6. (If needed) adjust the `sortOrder` again, by calling the `PUT /v1/listings/{listingId}` altering the `sortOrder` field in the existing list of `listingImages`.

### Error responses

> Missing images parameter

```json
{
    "status": "fail",
    "result": "The \"images\" parameter is required and must be a non-empty array."
}
```

> Invalid image object

```json
{
    "status": "fail",
    "result": "Image at index 0 must be an object."
}
```

> Missing URL field

```json
{
    "status": "fail",
    "result": "Image at index 0 is missing the required \"url\" field."
}
```

> Invalid URL

```json
{
    "status": "fail",
    "result": "Image at index 0 has an invalid URL: not-a-valid-url"
}
```
