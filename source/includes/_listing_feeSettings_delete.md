## Delete Listing Fee Settings

Delete listing fee settings by ID

### Request

```shell
curl --location --request DELETE 'https://api.hostaway.com/v1/listingFeeSettings/4' \
--header 'jwt;'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listingFeeSettings/4',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'DELETE',
  CURLOPT_HTTPHEADER => array(
    'jwt: '
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("DELETE", "https://api.hostaway.com/v1/listingFeeSettings/4");
xhr.setRequestHeader("jwt", "");

xhr.send();
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingFeeSettings/4")
  .method("DELETE", body)
  .addHeader("jwt", "")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("backend.hostaway.local", undefined)
payload = ''
headers = {
  'jwt': ''
}
conn.request("DELETE", "/v1/listingFeeSettings/4", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`DELETE https://api.hostaway.com/v1/listingFeeSettings/{id}`

### Response

Success or error response.
