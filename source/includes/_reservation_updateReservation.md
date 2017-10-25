## Update a reservation

### Request

```shell
curl --request PUT \
  --url https://api.hostaway.com/v1/reservations/593 \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json' \
  --data '{\n    "listingMapId": 40160,\n    "isManuallyChecked": 0,\n    "guestName": "Andrew Peterson",\n    "guestFirstName": "Andrew",\n    "guestLastName": "Peterson",\n    "guestCity": "Austin",\n    "guestCountry": "US",\n    "guestEmail": "mail@test.com",\n    "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",\n    "guestRecommendations": 1,\n    "guestTrips": 1,\n    "guestWork": "test",\n    "isGuestIdentityVerified": 2,\n    "isGuestVerifiedByEmail": 2,\n    "isGuestVerifiedByWorkEmail": 2,\n    "isGuestVerifiedByFacebook": 2,\n    "isGuestVerifiedByGovernmentId": 2,\n    "isGuestVerifiedByPhone": 2,\n    "isGuestVerifiedByReviews": 2,\n    "numberOfGuests": 1,\n    "adults": 1,\n    "children": null,\n    "infants": null,\n    "pets": null,\n    "arrivalDate": "2018-04-15",\n    "departureDate": "2018-04-16",\n    "checkInTime": null,\n    "checkOutTime": null,\n    "phone": "+75125551212",\n    "totalPrice": 267,\n    "taxAmount": null,\n    "channelCommissionAmount": null,\n    "cleaningFee": null,\n    "securityDepositFee": null,\n    "isPaid": null,\n    "currency": "USD",\n    "hostNote": null,\n    "guestNote": null,\n    "comment": null\n}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations/593",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_POSTFIELDS => "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 1,\n    \"guestTrips\": 1,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 2,\n    \"isGuestVerifiedByEmail\": 2,\n    \"isGuestVerifiedByWorkEmail\": 2,\n    \"isGuestVerifiedByFacebook\": 2,\n    \"isGuestVerifiedByGovernmentId\": 2,\n    \"isGuestVerifiedByPhone\": 2,\n    \"isGuestVerifiedByReviews\": 2,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8",
    "cache-control: no-cache",
    "content-type: application/json",
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
  "guestRecommendations": 1,
  "guestTrips": 1,
  "guestWork": "test",
  "isGuestIdentityVerified": 2,
  "isGuestVerifiedByEmail": 2,
  "isGuestVerifiedByWorkEmail": 2,
  "isGuestVerifiedByFacebook": 2,
  "isGuestVerifiedByGovernmentId": 2,
  "isGuestVerifiedByPhone": 2,
  "isGuestVerifiedByReviews": 2,
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

xhr.open("PUT", "https://api.hostaway.com/v1/reservations/593");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 1,\n    \"guestTrips\": 1,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 2,\n    \"isGuestVerifiedByEmail\": 2,\n    \"isGuestVerifiedByWorkEmail\": 2,\n    \"isGuestVerifiedByFacebook\": 2,\n    \"isGuestVerifiedByGovernmentId\": 2,\n    \"isGuestVerifiedByPhone\": 2,\n    \"isGuestVerifiedByReviews\": 2,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/593")
  .put(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8")
  .addHeader("content-type", "application/json")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.local")

payload = "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 1,\n    \"guestTrips\": 1,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 2,\n    \"isGuestVerifiedByEmail\": 2,\n    \"isGuestVerifiedByWorkEmail\": 2,\n    \"isGuestVerifiedByFacebook\": 2,\n    \"isGuestVerifiedByGovernmentId\": 2,\n    \"isGuestVerifiedByPhone\": 2,\n    \"isGuestVerifiedByReviews\": 2,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8",
    'content-type': "application/json",
    'cache-control': "no-cache"
    }

conn.request("PUT", "/v1/reservations/593", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/reservations/{reservationId}`

A reservation object should be provided in the request body.

### Response

The updated reservation object or error response.
