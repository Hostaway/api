## Add Listing Agreement

Add listing agreement by listing map

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listingAgreement/40270' \
--header 'jwt;' \
--header 'Content-type: application/json' \
--data-raw '{
    "text": "some listing agreement text with {{template_var}}"
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
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "text": "some listing agreement text with {{template_var}}"
}',
  CURLOPT_HTTPHEADER => array(
    'jwt: ',
    'Content-type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = JSON.stringify({
    "text": "some listing agreement text with {{template_var}}"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listingAgreement/40270");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"text\": \"some listing agreement text with {{template_var}}\"}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingAgreement/40270")
  .method("POST", body)
  .addHeader("jwt", "")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", undefined)
payload = json.dumps({
  "text": "some listing agreement text with {{template_var}}"
})
headers = {
  'jwt': '',
  'Content-type': 'application/json'
}
conn.request("POST", "/v1/listingAgreement/40270", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/listingAgreement/{listingId}`

### Response

The created listing agreement object or error response.
