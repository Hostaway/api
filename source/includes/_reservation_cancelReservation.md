## Cancel a reservation

### Request

```shell
curl -X PUT \
  http://api.hostaway.local/v1/reservations/29/statuses/cancelled \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 38141772-79b0-cfa7-bd66-ba9e3361bf7e'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.hostaway.local/v1/reservations/29/statuses/cancelled",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
    "cache-control: no-cache",
    "content-type: application/json",
    "postman-token: 15520b08-1a34-0934-73ee-fcff5bdb374e"
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

xhr.open("PUT", "http://api.hostaway.local/v1/reservations/29/statuses/cancelled");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");
xhr.setRequestHeader("postman-token", "96594634-9cb4-d4dc-d7cb-515efe18b8f7");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("http://api.hostaway.local/v1/reservations/29/statuses/cancelled")
  .put(null)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw")
  .addHeader("content-type", "application/json")
  .addHeader("cache-control", "no-cache")
  .addHeader("postman-token", "0438122e-09b4-2609-886b-993018f5c6da")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.local")

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
    'content-type': "application/json",
    'cache-control': "no-cache",
    'postman-token': "78785b93-6036-9d92-1d04-255e4d5faa03"
    }

conn.request("PUT", "/v1/reservations/29/statuses/cancelled", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`PUT http://api.hostaway.local/v1/reservations/{reservationId}/statuses/cancelled`

### Response

The cancelled reservation object or error response.