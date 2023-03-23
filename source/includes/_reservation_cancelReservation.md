## Cancel a reservation

### Request

```shell
curl --request PUT \
  --url https://api.hostaway.com/v1/reservations/117243/statuses/cancelled \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs' \
  --header 'Cache-control: no-cache' \
  --header 'Content-type: application/json' \
  --data '{\n	"cancelledBy": "guest"\n}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations/117243/statuses/cancelled",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_POSTFIELDS => "{\n\t\"cancelledBy\": \"guest\"\n}",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs",
    "Cache-control: no-cache",
    "Content-type: application/json"
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
var data = JSON.stringify({
  "cancelledBy": "guest"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("PUT", "https://api.hostaway.com/v1/reservations/117243/statuses/cancelled");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs");
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"cancelledBy\": \"guest\"\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/117243/statuses/cancelled")
  .put(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs")
  .addHeader("Content-type", "application/json")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = "{\n\t\"cancelledBy\": \"guest\"\n}"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs",
    'Content-type': "application/json",
    'Cache-control': "no-cache"
    }

conn.request("PUT", "/v1/reservations/117243/statuses/cancelled", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/reservations/{reservationId}/statuses/cancelled`

`cancelledBy` JSON body parameter should be specified with value `host` or `guest`.

### Response

The cancelled reservation object or error response.
