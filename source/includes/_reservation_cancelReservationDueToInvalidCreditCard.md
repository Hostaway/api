## Cancel a booking.com reservation due to an invalid credit card after [reporting about that](#report-an-invalid-payment-card-for-booking-com)

### Request

```shell
curl --request DELETE \
  --url https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs' \
  --header 'Cache-control: no-cache' \
  --header 'Content-type: application/json'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "DELETE",
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
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("DELETE", "https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs");
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard")
  .delete(null)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs")
  .addHeader("Content-type", "application/json")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-control': "no-cache",
    }

response = requests.request("DELETE", url, headers=headers)

print(response.text)
```

`DELETE https://api.hostaway.com/v1/reservations/117243/statuses/cancelledDueToInvalidCreditCard`

### Response

The cancelled reservation object or error response.
