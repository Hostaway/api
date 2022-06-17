## Update Listing Agreement

Update listing agreement by listing map ID

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/listingAgreement/40270' \
--header 'jwt;' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "another text with {{address}}"
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listingAgreement/40270',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
    "text": "another text with {{address}}"
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
    "text": "another text with {{address}}",
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/listingAgreement/40270");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"text\": \"another text with {{address}}\"}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingAgreement/40270")
  .method("PUT", body)
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
  "text": "another text with {{address}}",
})
headers = {
  'jwt': '',
  'Content-Type': 'application/json'
}
conn.request("PUT", "/v1/listingAgreement/40270", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/listingAgreement/{listingId}`

### Response

The updated listing agreement object or error response.
