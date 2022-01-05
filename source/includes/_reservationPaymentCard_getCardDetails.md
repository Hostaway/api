## Get card details

Hostaway cannot store guest credit card data and therefore the liability of storing such personal data falls into you as the client.
In order to provide access to viewing guest card data, you will need to sign our Service Contract & Confidentiality agreement. Please send an email to support@hostaway.com to request this agreement.

Important: Please note that ONLY reservations received AFTER the Secret Key has been downloaded will have the option to decrypt credit card details.
Credit card details for reservations made before the moment you downloaded the Secret Key will not be eligible for the reveal credit card option

Please also check [Viewing Guest Credit Card Information](https://support.hostaway.com/hc/en-us/articles/360014163513-Viewing-Guest-Credit-Card-Information)
### Request

```shell
curl -X GET \
  https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622 \
  -H 'Cache-Control: no-cache' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622",
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

xhr.open("GET", "https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622")
  .get()
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q",
    'Cache-Control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/paymentCards/154242/cardDetails/622`



### Response

You need to decrypt ccNumber by the secret key. Only if isCcDecryptable equals 1.

```json
{
  "status": "success",
  "result": {
    "ccNumber": "Y2JJL2kyT1VGWFAweWlXWm1iaVNFSXdaUEM3N2ZsWVQ5clFlakFJMW9OYnh6WWx4R2dwVFJUWHcxZTYxZE1tMG9CYTZQZ2RLT1k0VDkydTFPb3hnckJZTTE4OTBhUklOVzU1aGVibVZ1TFFSVXRNN0FvMVJmdGU5SnluRWJhN1B4MUFoVnJyRHpPbTIzUnBxUnkxRnNIMmE2N1NsYmNQaTV2ZVVDazJRV24zemY2c0E0bkxFVnRFVlRQS1lJdFJnemx4ZDFGUzkvaHJLdkpUTEtkdnA3bE52QVFONitpUDlZRS9MajRnakl0UC9uT3ZWWGVLbjc1d2Y3M1ZFMHV6b0ZHSit5Ym1EZXJwVWRhakh4UTBxc1pqMzk2OEZBRUI5SDFXNldTMW9kUzNRNlEyLzc1U3FObmw0RmlUY0ZNM2JIWHErby9za2ZKc1RFa3RsUFo5bjFnc3FnMmZ1UFhiUlBZVG9TRVkvVDRLY0xhcTdUc0F2OFo0NFlRL0YwYkFhNGZoRFYrMTJUazNMSlNZZmtwNEF5bENFQng5SU5sY2U4bmlpT1p3NjVoSWhnMmtOUXBmSVNaVEFWUm9aM3I2V2dpUGVxdEVHRjRpdStic1Rrd2ZYeTVJZkJRTHAzZGdaN2U1K3d6UTg3cExZb2RPYVdVNE1vTnNnWTN1eklVYlQxcVhnNjJjNzJhTnozSWd5T3N4UU5qWmFwVTZnQW1kcHdycE91U0duVzhKOVpMWmFIUGJlV2FiTXpmRnJMaW9wQnZvVm11dE9JQ2gzUy9GY1Ntb0pCWU5Pc29wN1RZYzRuRnA0WFUxRHF0ZS9CKy93NUtVSUpTVGEvczFRd0l3ekZLQnpUK0YvWlFYQUpqVWhMVDNHTUYzYUpreXluSXlvUW5LSG5vZG84aFk9IHwgQ0NsVzF0OElzOEdZS0FuVkhYRFRIcUFLMCtOamQ1bTNTWjJ2bzNJbkhJTFluMjRRTHI2SENIa1ZjYXM2MHhSSUZ0SVRUSGRwaHQ5SlBaUVFjTm9qU2dseUtNZ3g0NHEyYkpJb1JuR2dRdnlPOVlNK3I5OFA4bE5Bb1ZOZktyMjlSa2R5T0dYdTJIbm1BR1Q5RUw5SWwzcWJxZDBhazJiVVR3a1oyaFRIMmF6UUpJRCtCcGl1c0ppN1BPa1lWd0Rya20rV2FQWUNCVndVaERTb1VyanQwN0RKK01aQ043VHM3enV2U0hFMm0vamxYMFdYbk02Yk1CTCs4WUM5VnRuZVZIM2tFT0Rvc1h5b041T0NzQS9pYUFYNm5lTXVmK21NQ3I3SVF6bEFGS1FNSUNZSmg4SE5NelB6S1pxWEtTK3FvblFSTkw5U1BBYzdaMEIrQVY3VU93PT0=",
    "ccName": "Mikhail Ivanov",
    "ccExpirationMonth": "12",
    "ccExpirationYear": "2025",
    "ccCvc": "356"
  }
}
```
