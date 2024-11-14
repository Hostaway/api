## Update Listing Price Settings

Update listing price settings by listing map ID

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/listing/pricingSettings/40270' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
--header 'Content-type: application/json' \
--data-raw '{
    "isAirbnbLOSActive": 1,
    "isBookingLOSActive": 0,
    "isVrboLOSActive" : 1,
    "isExpediaLOSActive": 0
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listing/pricingSettings/40270',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
    "isAirbnbLOSActive": 1,
    "isBookingLOSActive": 0,
    "isVrboLOSActive" : 1,
    "isExpediaLOSActive": 0
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
    'Content-type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = JSON.stringify({
    "isAirbnbLOSActive": 1,
    "isBookingLOSActive": 0,
    "isVrboLOSActive" : 1,
    "isExpediaLOSActive": 0
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/listing/pricingSettings/40270");
xhr.setRequestHeader("Authorization", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"isAirbnbLOSActive": 1,\"isBookingLOSActive\": 0,\"isVrboLOSActive\" : 1,\"isExpediaLOSActive\": 0}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listing/pricingSettings/40270")
  .method("PUT", body)
  .addHeader("Authorization", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
    "isAirbnbLOSActive": 1,
    "isBookingLOSActive": 0,
    "isVrboLOSActive" : 1,
    "isExpediaLOSActive": 0
})
headers = {
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImNhMmJhMjAyZGMwYzU0ZWZlYmVkNTJmZjhkNjZjNjZhODBjMmVhYmQ0ZDU4ODVmZmRmMGI1YjkzODBjN2I2MzU3ZTE2NDk4YTVmNTQyOWQ4IiwiaWF0IjoxNjkxNjUzNDc2LCJuYmYiOjE2OTE2NTM0NzYsImV4cCI6MTc1NDgxMTg3Niwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjF9.cr4vNqZ1WuR5IOY-SoVitOv8PBdhMnMrUp2WZx8E6Adet-9rYI3KB3wMzxjTShXp_63TGGKYsdmNQ6DQOuB4PbN8qH1jsacmwn0cY4ynxfLaG5n9bdJ5DxLHe8EGv-MD2HIM1-zrK1bMBYTx6idti0L2IK6S6xxJCHQ5fBfsuyc'',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/listing/pricingSettings/40270", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/listing/pricingSettings/{listingId}`

### Response

The updated listing price settings object or error response.
