## Create a reservation

### Request

```shell
curl --request POST \
  --url https://api.hostaway.com/v1/reservations \
  --header 'Cache-Control: no-cache' \
  --header 'Content-Type: application/json' \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs' \
  --data '{\n	"channelId": 2000,\n    "listingMapId": 40160,\n    "isManuallyChecked": 0,\n    "guestName": "Andrew Peterson",\n    "guestFirstName": "Andrew",\n    "guestLastName": "Peterson",\n    "guestCity": "Austin",\n    "guestCountry": "US",\n    "guestEmail": "mail@test.com",\n    "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",\n    "guestRecommendations": 5,\n    "guestTrips": 10,\n    "guestWork": "test",\n    "isGuestIdentityVerified": 1,\n    "isGuestVerifiedByEmail": 1,\n    "isGuestVerifiedByWorkEmail": 1,\n    "isGuestVerifiedByFacebook": 1,\n    "isGuestVerifiedByGovernmentId": 1,\n    "isGuestVerifiedByPhone": 1,\n    "isGuestVerifiedByReviews": 1,\n    "numberOfGuests": 1,\n    "adults": 1,\n    "children": null,\n    "infants": null,\n    "pets": null,\n    "arrivalDate": "2019-05-17",\n    "departureDate": "2019-05-18",\n    "checkInTime": null,\n    "checkOutTime": null,\n    "phone": "+75125551212",\n    "totalPrice": 267,\n    "taxAmount": null,\n    "channelCommissionAmount": null,\n    "cleaningFee": null,\n    "securityDepositFee": null,\n    "isPaid": null,\n    "currency": "USD",\n    "hostNote": null,\n    "guestNote": null,\n    "doorCode": "12345",\n    "doorCodeVendor": "test",\n    "doorCodeInstruction": "test",    \n    "comment": null\n}'
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
  CURLOPT_POSTFIELDS => "{\n\t\"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-17\",\n    \"departureDate\": \"2019-05-18\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",    \n    \"comment\": null\n}",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
    "Content-Type: application/json",
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs"
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
  "channelId": 2000,
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
  "arrivalDate": "2019-05-17",
  "departureDate": "2019-05-18",
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
  "doorCode": "12345",
  "doorCodeVendor": "test",
  "doorCodeInstruction": "test",
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
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-17\",\n    \"departureDate\": \"2019-05-18\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",    \n    \"comment\": null\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations")
  .post(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs")
  .addHeader("Content-Type", "application/json")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api,hostaway,local")

payload = "{\n\t\"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-17\",\n    \"departureDate\": \"2019-05-18\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",    \n    \"comment\": null\n}"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjRhODc4MWU0YjQ5ZjYxMDc4NzEzM2MxMDQ1ODQ1MTQ1ZDNjNTZkMjliODkyYjc1ZGQ3Yjg1ZGZiNmYxMTI4ZDA5NTM2MWYyZDQ2MDc5NmQwIiwiaWF0IjoxNTE3Mzg5NTM1LCJuYmYiOjE1MTczODk1MzUsImV4cCI6MTUzMjk0MTUzNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.A_9lN7I-0qO663ELIVMMnI8u6gnfnFdJy7Fi5fpj5TGObPzwmCW1R2S_-H63ve65pId6T7gTaZK1HWc4w87lIyodAsKJotC8PDDZmhlcc3FyxuZ-0IwbmZic7ZR3aDmifEcE8ixh6LF60yb55ldYGTcxsMY-KmSz-Z3wfwpFtFs",
    'Content-Type': "application/json",
    'Cache-Control': "no-cache"
    }

conn.request("POST", "v1,reservations", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/reservations`

A reservation object should be provided in the request body. Value of `channelId` can be set to one of the following: `2000` for a direct reservation, `2002` for a Homeaway reservation

### Response

The created reservation object or error response.
