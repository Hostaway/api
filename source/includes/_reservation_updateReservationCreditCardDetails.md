## Update reservation credit card details

This endpoint is deprecated. Please use reservation payment card endpoints.

### Request

`PUT https://api.hostaway.com/v1/reservations/{reservationId}/card`

```shell
curl -X PUT \
  https://api.hostaway.com/v1/reservations/1/card \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -d '{
  "ccNumber": "5555555555554444",
  "ccName": "john dow",
  "cvc": 123,
  "ccExpirationMonth": 12,
  "ccExpirationYear": 2034
}
'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
    CURLOPT_URL            => 'https://api.hostaway.com/v1/reservations/1/card',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING       => '',
    CURLOPT_MAXREDIRS      => 10,
    CURLOPT_TIMEOUT        => 30,
    CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST  => 'PUT',
    CURLOPT_POSTFIELDS     => "{\n  \"ccNumber\": \"5555555555554444\",\n  \"ccName\": \"john dow\",\n  \"cvc\": 123,\n  \"ccExpirationMonth\": 12,\n  \"ccExpirationYear\": 2034\n}\n",
    CURLOPT_HTTPHEADER     => [
        'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
        'cache-control: no-cache',
        'content-length: 130',
    ],
]);

$response = curl_exec($curl);
$err      = curl_error($curl);

curl_close($curl);

if ($err) {
    echo 'cURL Error #:' . $err;
} else {
    echo $response;
}
```

```javascript
var data = JSON.stringify({
    'ccNumber': '5555555555554444',
    'ccName': 'john dow',
    'cvc': 123,
    'ccExpirationMonth': 12,
    'ccExpirationYear': 2034
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener('readystatechange', function () {
    if (this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open('PUT', 'https://api.hostaway.com/v1/reservations/1/card');
xhr.setRequestHeader('authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c');
xhr.setRequestHeader('Content-Type', 'application/json');

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"ccNumber\": \"5555555555554444\",\n  \"ccName\": \"john dow\",\n  \"cvc\": 123,\n  \"ccExpirationMonth\": 12,\n  \"ccExpirationYear\": 2034\n}\n");
Request request = new Request.Builder()
        .url("https://api.hostaway.com/v1/reservations/1/card")
        .put(body)
        .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
        .addHeader("Content-Type", "application/json")
        .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/reservations/1/card"

payload = "{\n  \"ccNumber\": \"5555555555554444\",\n  \"ccName\": \"john dow\",\n  \"cvc\": 123,\n  \"ccExpirationMonth\": 12,\n  \"ccExpirationYear\": 2034\n}\n"
headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Content-Type': "application/json",
    'cache-control': "no-cache"
    }

response = requests.request("PUT", url, data=payload, headers=headers)

print(response.text)
```

### Response
Success or error message
