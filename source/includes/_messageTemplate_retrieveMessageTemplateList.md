## Retrieve a message templates list

### Request

```shell
curl -X GET \
  https://api.hostaway.com/v1/messageTemplates \
  -H 'Cache-control: no-cache' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/messageTemplates",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
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
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/messageTemplates");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/messageTemplates")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/messageTemplates"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/messageTemplates`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`messageTemplateGroupId` | no | int | message template grpup id.
`channelId` | no | int | channel id. Please check here for valid channel values: [Channels](#reservation-channels)
`listingMapId` | no | int | listing map id
`reservationId` | no | int | reservation id

### Response

An array of message template objects with placeholders.
* placeholders get filled when reservationId is provided