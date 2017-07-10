## Create a reservation

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/reservations \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '{
    "listingMapId": 40160,
    "isManuallyChecked": 0,
    "guestName": "Andrew Peterson",
    "guestFirstName": "Andrew",
    "guestLastName": "Peterson",
    "guestCity": "Austin",
    "guestCountry": "US",
    "guestEmail": "mail@test.com",
    "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",
    "numberOfGuests": 1,
    "adults": 1,
    "children": null,
    "infants": null,
    "pets": null,
    "arrivalDate": "2018-04-15",
    "departureDate": "2018-04-16",
    "checkInTime": null,
    "checkOutTime": null,
    "phone": "+75125551212",
    "totalPrice": 267,
    "taxAmount": null,
    "channelCommissionAmount": null,
    "cleaningFee": null,
    "securityDepositFee": null,
    "isPaid": null,
    "currency": "USD",
    "hostNote": null,
    "guestNote": null,
    "comment": null
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
    "cache-control: no-cache",
    "content-type: application/json"
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
  "listingMapId": 40160,
  "isManuallyChecked": 0,
  "guestName": "Andrew Peterson",
  "guestFirstName": "Andrew",
  "guestLastName": "Peterson",
  "guestCity": "Austin",
  "guestCountry": "US",
  "guestEmail": "mail@test.com",
  "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",
  "numberOfGuests": 1,
  "adults": 1,
  "children": null,
  "infants": null,
  "pets": null,
  "arrivalDate": "2018-04-15",
  "departureDate": "2018-04-16",
  "checkInTime": null,
  "checkOutTime": null,
  "phone": "+75125551212",
  "totalPrice": 267,
  "taxAmount": null,
  "channelCommissionAmount": null,
  "cleaningFee": null,
  "securityDepositFee": null,
  "isPaid": null,
  "currency": "USD",
  "hostNote": null,
  "guestNote": null,
  "comment": null
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/reservations");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations")
  .post(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw")
  .addHeader("content-type", "application/json")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client
 
 conn = http.client.HTTPConnection("api.hostaway.com")
 
 payload = "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}"
 
 headers = {
     'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZjIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2JmIiwiaWF0IjoxNDk4NTc5NzQ0LCJuYmYiOjE0OTg1Nzk3NDQsImV4cCI6MTUxNDM5MDk0NCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.TsbJaDOZ0VlEF4vBg7mqLX8DxEuu5rjtsmqix1IbsEcR7F9cdx8F3dDq2zOc6mw8FNAfXT8xp1r5qKu2AYoxv4ublZhxxW0Y6uPSFs0jv5Fh5lliNBJAeQqFOChOVEbYzdbfH_6uu4HHSL31si1RvpVccAjA1Ap9vXlSg3DcPgw",
     'content-type': "application/json",
     'cache-control': "no-cache"
     }
 
 conn.request("POST", "/v1/reservations", payload, headers)
 
 res = conn.getresponse()
 data = res.read()
 
 print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/reservations`

A reservation object should be provided in the request body.

### Response

The created reservation object or error response.