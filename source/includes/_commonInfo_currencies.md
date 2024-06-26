## Currency codes and currencies list

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/currencies \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIn0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIiwiaWF0IjoxNTQzODcyMDMzLCJuYmYiOjE1NDM4NzIwMzMsImV4cCI6MTU1OTQyNDAzMywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.Fx-hyFdOENc_n_2GPPpYlGHXSwGck01EpQ7IMz-kTSpzZ-sNxPYf2bK9wnCYApCFqSYQsmNaUcEN7spUz-6sT0sFpBCNhOVqm_lK6vvHkGn8Z9ScfowSWcdrl6E8BAQxGDRxLQx4RgVAlBdZsN0HgHRVuB49bjTnpTWlQs0N-iM' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/currencies",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIn0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIiwiaWF0IjoxNTQzODcyMDMzLCJuYmYiOjE1NDM4NzIwMzMsImV4cCI6MTU1OTQyNDAzMywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.Fx-hyFdOENc_n_2GPPpYlGHXSwGck01EpQ7IMz-kTSpzZ-sNxPYf2bK9wnCYApCFqSYQsmNaUcEN7spUz-6sT0sFpBCNhOVqm_lK6vvHkGn8Z9ScfowSWcdrl6E8BAQxGDRxLQx4RgVAlBdZsN0HgHRVuB49bjTnpTWlQs0N-iM",
    "Cache-control: no-cache"
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

xhr.open("GET", "https://api.hostaway.com/v1/currencies");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIn0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIiwiaWF0IjoxNTQzODcyMDMzLCJuYmYiOjE1NDM4NzIwMzMsImV4cCI6MTU1OTQyNDAzMywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.Fx-hyFdOENc_n_2GPPpYlGHXSwGck01EpQ7IMz-kTSpzZ-sNxPYf2bK9wnCYApCFqSYQsmNaUcEN7spUz-6sT0sFpBCNhOVqm_lK6vvHkGn8Z9ScfowSWcdrl6E8BAQxGDRxLQx4RgVAlBdZsN0HgHRVuB49bjTnpTWlQs0N-iM");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/currencies")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIn0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIiwiaWF0IjoxNTQzODcyMDMzLCJuYmYiOjE1NDM4NzIwMzMsImV4cCI6MTU1OTQyNDAzMywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.Fx-hyFdOENc_n_2GPPpYlGHXSwGck01EpQ7IMz-kTSpzZ-sNxPYf2bK9wnCYApCFqSYQsmNaUcEN7spUz-6sT0sFpBCNhOVqm_lK6vvHkGn8Z9ScfowSWcdrl6E8BAQxGDRxLQx4RgVAlBdZsN0HgHRVuB49bjTnpTWlQs0N-iM")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/currencies"

payload = ""
headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIn0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImRlNTVlZTc1ZGI3YzhkZmYyMGE4MzU2ODFjMGNkNmY0OGE3ZDI5ODg4NmU4ZGI5ZmRhMDM2ODg5YTFhZDNjNWFkOTAzY2QyOGNmNTExZTBjIiwiaWF0IjoxNTQzODcyMDMzLCJuYmYiOjE1NDM4NzIwMzMsImV4cCI6MTU1OTQyNDAzMywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.Fx-hyFdOENc_n_2GPPpYlGHXSwGck01EpQ7IMz-kTSpzZ-sNxPYf2bK9wnCYApCFqSYQsmNaUcEN7spUz-6sT0sFpBCNhOVqm_lK6vvHkGn8Z9ScfowSWcdrl6E8BAQxGDRxLQx4RgVAlBdZsN0HgHRVuB49bjTnpTWlQs0N-iM",
    'Cache-control': "no-cache"
    }

response = requests.request("GET", url, data=payload, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/currencies`

### Response

An associative array which keys are ISO 4217 currency codes and values are full currency names in English, sorted by keys.

Example:
```
{
    "status": "success",
    "result": {
        "AUD": "AUD - Australian Dollar",
        "BRL": "BRL - Brazilian Real",
        ... ,
        "USD": "USD - United States Dollar",
        "ZAR": "ZAR - South African Rand"
    }
}
```
