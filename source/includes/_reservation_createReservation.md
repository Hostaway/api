## Create a reservation

### Request

```shell
curl --request POST \
  --url https://api.hostaway.com/v1/reservations \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json' \
  --header 'postman-token: 2e62f483-b672-7308-6cc1-d85e91b15719' \
  --data '{\n    "listingMapId": 40160,\n    "isManuallyChecked": 0,\n    "guestName": "Andrew Peterson",\n    "guestFirstName": "Andrew",\n    "guestLastName": "Peterson",\n    "guestCity": "Austin",\n    "guestCountry": "US",\n    "guestEmail": "mail@test.com",\n    "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",\n    "guestRecommendations": 5,\n    "guestTrips": 10,\n    "guestWork": "test",\n    "isGuestIdentityVerified": 1,\n    "isGuestVerifiedByEmail": 1,\n    "isGuestVerifiedByWorkEmail": 1,\n    "isGuestVerifiedByFacebook": 1,\n    "isGuestVerifiedByGovernmentId": 1,\n    "isGuestVerifiedByPhone": 1,\n    "isGuestVerifiedByReviews": 1,\n    "numberOfGuests": 1,\n    "adults": 1,\n    "children": null,\n    "infants": null,\n    "pets": null,\n    "arrivalDate": "2019-03-13",\n    "departureDate": "2019-03-14",\n    "checkInTime": null,\n    "checkOutTime": null,\n    "phone": "+75125551212",\n    "totalPrice": 267,\n    "taxAmount": null,\n    "channelCommissionAmount": null,\n    "cleaningFee": null,\n    "securityDepositFee": null,\n    "isPaid": null,\n    "currency": "USD",\n    "hostNote": null,\n    "guestNote": null,\n    "comment": null\n}'
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
  CURLOPT_POSTFIELDS => "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-03-13\",\n    \"departureDate\": \"2019-03-14\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8",
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
  "guestRecommendations": 5,
  "guestTrips": 10,
  "guestWork": "test",
  "isGuestIdentityVerified": 1,
  "isGuestVerifiedByEmail": 1,
  "isGuestVerifiedByWorkEmail": 1,
  "isGuestVerifiedByFacebook": 1,
  "isGuestVerifiedByGovernmentId": 1,
  "isGuestVerifiedByPhone": 1,
  "isGuestVerifiedByReviews": 1,
  "numberOfGuests": 1,
  "adults": 1,
  "children": null,
  "infants": null,
  "pets": null,
  "arrivalDate": "2019-03-13",
  "departureDate": "2019-03-14",
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
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-03-13\",\n    \"departureDate\": \"2019-03-14\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations")
  .post(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8")
  .addHeader("content-type", "application/json")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.local")

payload = "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-03-13\",\n    \"departureDate\": \"2019-03-14\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"comment\": null\n}"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8",
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
