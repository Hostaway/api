## Calculate reservation price

Endpoint for getting reservation quote for dates selected.

### Request

```shell
curl --location --request GET 
'https://api.hostaway.com/v1/listings/40100/calendar/priceDetails?startingDate=2020-10-01&endingDate=2020-10-02&numberOfGuests=1&reservationCouponId=1' \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings/40100/calendar/priceDetails?startingDate=2020-10-01&endingDate=2020-10-02&numberOfGuests=1&reservationCouponId=1",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw"
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.hostaway.com/v1/listings/40100/calendar/priceDetails?startingDate=2020-10-01&endingDate=2020-10-02&numberOfGuests=1&reservationCouponId=1");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw");

xhr.send();
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/40100/calendar/priceDetails?startingDate=2020-10-01&endingDate=2020-10-02&numberOfGuests=1&reservationCouponId=1")
  .method("GET", null)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import mimetypes
conn = http.client.HTTPSConnection("api.hostaway.com")
payload = ''
headers = {
  'authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw'
}
conn.request("GET", "/v1/listings/40100/calendar/priceDetails?startingDate=2020-10-01&endingDate=2020-10-02&numberOfGuests=1&reservationCouponId=1", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```


`GET https://api.hostaway.com/v1/listings/{listingId}/calendar/priceDetails`

Query Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`startingDate` | yes | date |
`endingDate` | yes | date |
`numberOfGuests` | yes | int |
`markup` | no | float |
`reservationCouponId` | no | int |

### Response

A reservation quote object.
