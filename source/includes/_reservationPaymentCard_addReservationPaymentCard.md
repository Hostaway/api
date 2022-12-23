## Add credit card

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/paymentCards/154242 \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjNhMWY4MzIwZTU5Zjc5YTJlNzMxNzBkYzU5MDk5MzdlNTU2NGVmNWQwOTgzNjk3N2ZjMjZiYmQ4MWJlYWFjNzI0OTk5Y2ZiZWQ1N2FiMmYiLCJpYXQiOjE2Mzc0ODc0ODYsIm5iZiI6MTYzNzQ4NzQ4NiwiZXhwIjoxNzAwNTU5NDg2LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Mn0.Mt3I5myc1G1aJ3Rls5JYGggFiNh3LH9I88AJYmucXjd3qeE-jICpg49eIvBHSv6KGGqzl-ApuV3_3j5pSIbHXjUYqmXvE6WeU-kcRMCnZ3V4yDQ4Zh_-m5kKCEn4gx4A_flWf4EhS7UJL24FPS3y5CWIQR2rvWJUPnMs_obV1s4' \
  -d '{
    "ccName": "Mikhail Ivanov",
    "ccNumber": "4242424242424242",
    "ccExpirationYear": "2024",
    "ccExpirationMonth": "12",
    "ccCvc": "345",
    "isDefault": 1
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/paymentCards/154242",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"ccName\": \"Mikhail Ivanov\",\n    \"ccNumber\": \"4242424242424242\",\n    \"ccExpirationYear\": \"2024\",\n    \"ccExpirationMonth\": \"12\",\n    \"ccCvc\": \"123\",\n    \"isDefault\": 1\n}",
  CURLOPT_HTTPHEADER => array(
    "Cache-control: no-cache",
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q"
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
var data = "{\n    \"ccName\": \"Mikhail Ivanov\",\n    \"ccNumber\": \"4242424242424242\",\n    \"ccExpirationYear\": \"2024\",\n    \"ccExpirationMonth\": \"12\",\n    \"ccCvc\": \"123\",\n    \"isDefault\": 1\n}";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/paymentCards/154242");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

RequestBody body = RequestBody.create(mediaType, "{\n    \"ccName\": \"Mikhail Ivanov\",\n    \"ccNumber\": \"4242424242424242\",\n    \"ccExpirationYear\": \"2024\",\n    \"ccExpirationMonth\": \"12\",\n    \"ccCvc\": \"123\",\n    \"isDefault\": 1\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/paymentCards/154242")
  .post(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/paymentCards/154242"

payload = "{\n    \"ccName\": \"Mikhail Ivanov\",\n    \"ccNumber\": \"4242424242424242\",\n    \"ccExpirationYear\": \"2024\",\n    \"ccExpirationMonth\": \"12\",\n    \"ccCvc\": \"123\",\n    \"isDefault\": 1\n}"
headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-control': "no-cache",
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
```

`POST https://api.hostaway.com/v1/paymentCards/154242`



### Response

```json
{
  "status": "success",
  "result": {
    "id": 61,
    "userId": null,
    "reservationId": 154242,
    "ccName": "Mikhail Ivanov",
    "ccNumberEndingDigits": "4242",
    "ccExpirationYear": "2024",
    "ccExpirationMonth": "12",
    "ccCvc": "123",
    "isDefault": 1,
    "isAddedByGuest": null,
    "paymentProviderMessage": null,
    "paymentProvider": "stripe",
    "isCcDecryptable": 0
  }
}
```
