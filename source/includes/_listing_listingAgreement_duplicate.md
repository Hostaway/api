## Duplicate Listing Agreement

Duplicate listing agreement by listing id and listing map ids

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listingAgreement/duplicate' \
--header 'jwt;' \
--header 'Content-Type: application/json' \
--data-raw '{
    "listingId": 40270,
    "listingIds": [40271, 40272]
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listingAgreement/duplicate',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "listingId": 40270,
    "listingIds": [40271, 40272]
}',
  CURLOPT_HTTPHEADER => array(
    'jwt: ',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = JSON.stringify({
    "listingId": 40270,
    "listingIds": [40271, 40272]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listingAgreement/duplicate");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"listingId\": 40270, \"listingIds\": [40271, 40272]}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingAgreement/duplicate")
  .method("POST", body)
  .addHeader("jwt", "")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", undefined)
payload = json.dumps({
    "listingId": 40270,
    "listingIds": [40271, 40272]
})
headers = {
  'jwt': '',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/listingAgreement/duplicate", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/listingAgreement/duplicate`

Property | Required | Type | Description
-------- | -------- | ---- | -----------
`listingId` | yes | int | parent listing id
`listingIds` | yes | array | list of child listings ids
    
### Response

The listing agreement object or error response.
