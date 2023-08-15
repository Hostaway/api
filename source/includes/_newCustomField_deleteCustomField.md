## Delete a custom field
You can delete a custom field by this endpoint. This endpoint might return error if removing the custom field is not allowed.

```shell
curl --location --request DELETE 'https://api.hostaway.com/v1/customFields/2' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFjM2QxN2Q1Y2YyYmRiYWM2YjFhODRhNTA0MmU4Nzc0NTU4Y2MzZDkwYTViYTJkYjU2MTAyOWjGdDA3MTQ2N2IzODA5NmI5MzhhNWY5NDU1In0.eyJhdWQiOiIxIiwianRpIjoiYWMzZDE3ZDVjZjJiZGJhYzZiMWE4NGE1MDQyZTg3NzQ1NThjYzNkOTBhNWJhMmRiNTYxMDI5YmQ4MDcxNDY3YjM4MDk2YjkzOGE1Zjk0NTUiLCJpYXQiOjE1NjgyMDk3MzIsIm5iZiI6MTU2ODIwOTczMiwiZXhwIjoxNjMxMzY4MTMyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdfQ.U41DnBKE4JrL167fY7gcIV4x5BefNlNjJIN1hI8BspT16XZKfuTW4E4pqN4WdqkNDp5WKZjh8Jz_qrnJVL_XYK99JufN4ABTNkPVGjxEp_6L5yTikgX77llYrUv9liCybwwM69iW6UNMjsJ3RjJkS_C-3LkJVdYKc-945Co8P-Y' \
--data-raw ''
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/customFields/2',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'DELETE',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFjM2QxN2Q1Y2YyYmRiYWM2YjFhODRhNTA0MmU4Nzc0NTU4Y2MzZDkwYTViYTJkYjU2MTAyOWjGdDA3MTQ2N2IzODA5NmI5MzhhNWY5NDU1In0.eyJhdWQiOiIxIiwianRpIjoiYWMzZDE3ZDVjZjJiZGJhYzZiMWE4NGE1MDQyZTg3NzQ1NThjYzNkOTBhNWJhMmRiNTYxMDI5YmQ4MDcxNDY3YjM4MDk2YjkzOGE1Zjk0NTUiLCJpYXQiOjE1NjgyMDk3MzIsIm5iZiI6MTU2ODIwOTczMiwiZXhwIjoxNjMxMzY4MTMyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdfQ.U41DnBKE4JrL167fY7gcIV4x5BefNlNjJIN1hI8BspT16XZKfuTW4E4pqN4WdqkNDp5WKZjh8Jz_qrnJVL_XYK99JufN4ABTNkPVGjxEp_6L5yTikgX77llYrUv9liCybwwM69iW6UNMjsJ3RjJkS_C-3LkJVdYKc-945Co8P-Y'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = "";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("DELETE", "https://api.hostaway.com/v1/customFields/2");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFjM2QxN2Q1Y2YyYmRiYWM2YjFhODRhNTA0MmU4Nzc0NTU4Y2MzZDkwYTViYTJkYjU2MTAyOWjGdDA3MTQ2N2IzODA5NmI5MzhhNWY5NDU1In0.eyJhdWQiOiIxIiwianRpIjoiYWMzZDE3ZDVjZjJiZGJhYzZiMWE4NGE1MDQyZTg3NzQ1NThjYzNkOTBhNWJhMmRiNTYxMDI5YmQ4MDcxNDY3YjM4MDk2YjkzOGE1Zjk0NTUiLCJpYXQiOjE1NjgyMDk3MzIsIm5iZiI6MTU2ODIwOTczMiwiZXhwIjoxNjMxMzY4MTMyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdfQ.U41DnBKE4JrL167fY7gcIV4x5BefNlNjJIN1hI8BspT16XZKfuTW4E4pqN4WdqkNDp5WKZjh8Jz_qrnJVL_XYK99JufN4ABTNkPVGjxEp_6L5yTikgX77llYrUv9liCybwwM69iW6UNMjsJ3RjJkS_C-3LkJVdYKc-945Co8P-Y");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/customFields/2")
  .method("DELETE", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFjM2QxN2Q1Y2YyYmRiYWM2YjFhODRhNTA0MmU4Nzc0NTU4Y2MzZDkwYTViYTJkYjU2MTAyOWjGdDA3MTQ2N2IzODA5NmI5MzhhNWY5NDU1In0.eyJhdWQiOiIxIiwianRpIjoiYWMzZDE3ZDVjZjJiZGJhYzZiMWE4NGE1MDQyZTg3NzQ1NThjYzNkOTBhNWJhMmRiNTYxMDI5YmQ4MDcxNDY3YjM4MDk2YjkzOGE1Zjk0NTUiLCJpYXQiOjE1NjgyMDk3MzIsIm5iZiI6MTU2ODIwOTczMiwiZXhwIjoxNjMxMzY4MTMyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdfQ.U41DnBKE4JrL167fY7gcIV4x5BefNlNjJIN1hI8BspT16XZKfuTW4E4pqN4WdqkNDp5WKZjh8Jz_qrnJVL_XYK99JufN4ABTNkPVGjxEp_6L5yTikgX77llYrUv9liCybwwM69iW6UNMjsJ3RjJkS_C-3LkJVdYKc-945Co8P-Y")
  .build();
Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/customFields/2"
headers = {
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImFjM2QxN2Q1Y2YyYmRiYWM2YjFhODRhNTA0MmU4Nzc0NTU4Y2MzZDkwYTViYTJkYjU2MTAyOWjGdDA3MTQ2N2IzODA5NmI5MzhhNWY5NDU1In0.eyJhdWQiOiIxIiwianRpIjoiYWMzZDE3ZDVjZjJiZGJhYzZiMWE4NGE1MDQyZTg3NzQ1NThjYzNkOTBhNWJhMmRiNTYxMDI5YmQ4MDcxNDY3YjM4MDk2YjkzOGE1Zjk0NTUiLCJpYXQiOjE1NjgyMDk3MzIsIm5iZiI6MTU2ODIwOTczMiwiZXhwIjoxNjMxMzY4MTMyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdfQ.U41DnBKE4JrL167fY7gcIV4x5BefNlNjJIN1hI8BspT16XZKfuTW4E4pqN4WdqkNDp5WKZjh8Jz_qrnJVL_XYK99JufN4ABTNkPVGjxEp_6L5yTikgX77llYrUv9liCybwwM69iW6UNMjsJ3RjJkS_C-3LkJVdYKc-945Co8P-Y",
    "Content-type": "text/plain",
}

response = requests.delete(url, headers=headers)
print(response.text)
```
