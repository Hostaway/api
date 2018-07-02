## Retrieve a message template for the conversation with filled placeholders
 
### Request

```shell
curl -X GET \
  https://api.hostaway.com/v1/reservations/2/messageTemplates/2 \
  -H 'Cache-Control: no-cache' \
  -H 'Postman-Token: 8ab5c579-bba0-4f62-9f7b-0059c274afb4' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations/2/messageTemplates/2",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
    "Postman-Token: 75a2a9d5-e6b9-4def-b492-fe88d2de2815",
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q"
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
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/reservations/2/messageTemplates/2");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q");
xhr.setRequestHeader("Cache-Control", "no-cache");
xhr.setRequestHeader("Postman-Token", "e38190b8-d851-4920-a02e-32ed0176ca78");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/2/messageTemplates/2")
  .get()
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q")
  .addHeader("Cache-Control", "no-cache")
  .addHeader("Postman-Token", "8ae15c8f-9d35-4180-93b5-432938dc5beb")
  .build();

Response response = client.newCall(request).execute();
```

```pyyhon
import requests

url = "https://api.hostaway.com/v1/reservations/2/messageTemplates/2"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-Control': "no-cache",
    'Postman-Token': "6ae16678-f0f6-49d1-8ebc-71c192f697f4"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/reservations/{reservationId}/messageTemplates/{messageTemplateId}`



### Response

An array of message template objects with filled placeholders.