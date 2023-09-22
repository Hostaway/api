## Update a reservation

### Request

```shell
curl -X PUT \
  https://api.hostaway.com/v1/reservations/117277?forceOverbooking=1 \
  -H 'Cache-control: no-cache' \
  -H 'Content-type: application/json' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII' \
  -d '{
    "listingMapId": 40160,
    "isManuallyChecked": 0,
    "guestName": "Andrew Peterson",
    "guestFirstName": "Andrew",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
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
    "guestLocale": null,
    "doorCode": "2222222",
    "doorCodeVendor": "test2",
    "doorCodeInstruction": "test2", 
    "comment": null,
    "airbnbExpectedPayoutAmount": 111.12,
    "airbnbListingBasePrice": 110,
    "airbnbListingCancellationHostFee": 12.02,
    "airbnbListingCancellationPayout": 122,
    "airbnbListingCleaningFee": 1,
    "airbnbListingHostFee": 43,
    "airbnbListingSecurityPrice": 12,
    "airbnbOccupancyTaxAmountPaidToHost": 332,
    "airbnbTotalPaidAmount": 12,
    "airbnbTransientOccupancyTaxPaidAmount": 0,
    "airbnbCancellationPolicy": "moderate",
    "customerUserId": null,
    "customFieldValues": [
        {
            "customFieldId": 167,
            "value": "Custom field value one"
        },
        {
            "customFieldId": 243,
            "value": "Custom field value two"
        }
    ]
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations/117277?forceOverbooking=1",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_POSTFIELDS => "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 1,\n    \"guestTrips\": 1,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 2,\n    \"isGuestVerifiedByEmail\": 2,\n    \"isGuestVerifiedByWorkEmail\": 2,\n    \"isGuestVerifiedByFacebook\": 2,\n    \"isGuestVerifiedByGovernmentId\": 2,\n    \"isGuestVerifiedByPhone\": 2,\n    \"isGuestVerifiedByReviews\": 2,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n   \"guestLocale\": null,\n   \"doorCode\": \"2222222\",\n    \"doorCodeVendor\": \"test2\",\n    \"doorCodeInstruction\": \"test2\", \n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 111.12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 111.12,\n    \"airbnbTotalPaidAmount\": 111.12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 111.12,\n    \"airbnbCancellationPolicy\": \"moderate\"\n,\n   \"customerUserId\": null\n,\n   \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}",
  CURLOPT_HTTPHEADER => array(
    "Cache-control: no-cache",
    "Content-type: application/json",
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII"
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
  "guestZipCode": "TX 78705",
  "guestAddress": "3411 Cedar street",
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
  "guestLocale": null,
  "doorCode": "2222222",
  "doorCodeVendor": "test2",
  "doorCodeInstruction": "test2",
  "comment": null,
  "airbnbExpectedPayoutAmount": 111.12,
  "airbnbListingBasePrice": 110,
  "airbnbListingCancellationHostFee": 12.02,
  "airbnbListingCancellationPayout": 122,
  "airbnbListingCleaningFee": 1,
  "airbnbListingHostFee": 43,
  "airbnbListingSecurityPrice": 12,
  "airbnbOccupancyTaxAmountPaidToHost": 332,
  "airbnbTotalPaidAmount": 12,
  "airbnbTransientOccupancyTaxPaidAmount": 0,
  "airbnbCancellationPolicy": "moderate",
  "customerUserId": null,
  "customFieldValues": [
      {
          "customFieldId": 167,
          "value": "Custom field value one"
      },
      {
          "customFieldId": 243,
          "value": "Custom field value two"
      }
  ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("PUT", "https://api.hostaway.com/v1/reservations/117277?forceOverbooking=1");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII");
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 1,\n    \"guestTrips\": 1,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 2,\n    \"isGuestVerifiedByEmail\": 2,\n    \"isGuestVerifiedByWorkEmail\": 2,\n    \"isGuestVerifiedByFacebook\": 2,\n    \"isGuestVerifiedByGovernmentId\": 2,\n    \"isGuestVerifiedByPhone\": 2,\n    \"isGuestVerifiedByReviews\": 2,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2018-04-15\",\n    \"departureDate\": \"2018-04-16\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n   \"guestLocale\": null,\n   \"doorCode\": \"2222222\",\n    \"doorCodeVendor\": \"test2\",\n    \"doorCodeInstruction\": \"test2\", \n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 111.12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 111.12,\n    \"airbnbTotalPaidAmount\": 111.12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 111.12,\n    \"airbnbCancellationPolicy\": \"moderate\"\n,\n   \"customerUserId\": null\n,\n   \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations/117277?forceOverbooking=1")
  .put(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII")
  .addHeader("Content-type", "application/json")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = {
    "listingMapId": 40160,
    "isManuallyChecked": 0,
    "guestName": "Andrew Peterson",
    "guestFirstName": "Andrew",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
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
    "children": None,
    "infants": None,
    "pets": None,
    "arrivalDate": "2018-04-15",
    "departureDate": "2018-04-16",
    "checkInTime": None,
    "checkOutTime": None,
    "phone": "+75125551212",
    "totalPrice": 267,
    "taxAmount": None,
    "channelCommissionAmount": None,
    "cleaningFee": None,
    "securityDepositFee": None,
    "isPaid": None,
    "currency": "USD",
    "hostNote": None,
    "guestNote": None,
    "guestLocale": None,
    "doorCode": "2222222",
    "doorCodeVendor": "test2",
    "doorCodeInstruction": "test2",
    "comment": None,
    "airbnbExpectedPayoutAmount": 111.12,
    "airbnbListingBasePrice": 110,
    "airbnbListingCancellationHostFee": 12.02,
    "airbnbListingCancellationPayout": 122,
    "airbnbListingCleaningFee": 1,
    "airbnbListingHostFee": 43,
    "airbnbListingSecurityPrice": 111.12,
    "airbnbOccupancyTaxAmountPaidToHost": 111.12,
    "airbnbTotalPaidAmount": 111.12,
    "airbnbTransientOccupancyTaxPaidAmount": 111.12,
    "airbnbCancellationPolicy": "moderate",
    "customerUserId": None,
    "customFieldValues": [
        {"customFieldId": 167, "value": "Custom field value one"},
        {"customFieldId": 243, "value": "Custom field value two"}
    ]
}

payload_json = json.dumps(payload)

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII",
    'Content-type': "application/json",
    'Cache-control': "no-cache",
}


conn.request("PUT", "v1/reservations/117277?forceOverbooking=1", payload_json, headers)

res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))

```

`PUT https://api.hostaway.com/v1/reservations/{reservationId}?forceOverbooking=1`

A reservation object should be provided in the request body.
It’s not possible to update the listingMapId of a reservation with this request.

### Query parameters

Query parameter | Required | Type | Description
-------- | -------- | ---- | ----------- 
`forceOverbooking` | no | int | Ignore overbooking protection

### Response

The updated reservation object or error response.
