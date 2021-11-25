## Retrieve custom fields
###Query params:
name | default | options
-------- | -------- | ---- 
`limit` | 100 | max is 500
`offset` | 0 | 
`objectType` | null | one of the following: reservation, listing, task
 If object type query param is not specified all custom fields are returned

```shell
curl -X GET \
  'https://api.hostaway.com/v1/customFields?limit=&offset=&objectType=' \
  -H 'Cache-Control: no-cache' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/customFields?limit=&offset=&objectType=",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
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

xhr.open("GET", "https://api.hostaway.com/v1/customFields?limit=&offset=&objectType=");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/customFields?limit=&offset=&objectType=")
  .get()
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/customFields?limit=&offset=&objectType="

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-Control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/reservations/customFields`



### Response

Array of custom field objects.
