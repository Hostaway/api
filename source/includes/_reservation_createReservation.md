## Create a reservation

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/reservations?forceOverbooking=1 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII' \
  -d '{
    "channelId": 2000,
    "listingMapId": 40160,
    "isManuallyChecked": 0,
    "isInitial": 0,
    "guestName": "Andrew Peterson",
    "guestFirstName": "Andrew",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
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
    "arrivalDate": "2019-05-19",
    "departureDate": "2019-05-20",
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
    "doorCode": "12345",
    "doorCodeVendor": "test",
    "doorCodeInstruction": "test",
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
  CURLOPT_URL => "https://api.hostaway.com/v1/reservations?forceOverbooking=1",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"isInitial\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-19\",\n    \"departureDate\": \"2019-05-20\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n   \"guestLocale\": null,\n   \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",\n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 111.12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 111.12,\n    \"airbnbTotalPaidAmount\": 111.12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 111.12,\n    \"airbnbCancellationPolicy\": \"moderate\"\n,\n   \"customerUserId\": null\n,\n   \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
    "Content-Type: application/json",
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII"
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
  "isInitial": 0,
  "guestName": "Andrew Peterson",
  "guestFirstName": "Andrew",
  "guestLastName": "Peterson",
  "guestZipCode": "TX 78705",
  "guestAddress": "3411 Cedar street",
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
  "arrivalDate": "2019-05-19",
  "departureDate": "2019-05-20",
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
  "doorCode": "12345",
  "doorCodeVendor": "test",
  "doorCodeInstruction": "test",
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

xhr.open("POST", "https://api.hostaway.com/v1/reservations?forceOverbooking=1");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"isInitial\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-19\",\n    \"departureDate\": \"2019-05-20\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n   \"guestLocale\": null,\n   \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",\n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 111.12,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 111.12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 111.12,\n    \"airbnbTotalPaidAmount\": 111.12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 111.12,\n    \"airbnbCancellationPolicy\": \"moderate\"\n,\n   \"customerUserId\": null\n,\n   \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations?forceOverbooking=1")
  .post(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII")
  .addHeader("Content-Type", "application/json")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.com")

payload = "{\n    \"channelId\": 2000,\n    \"listingMapId\": 40160,\n    \"isManuallyChecked\": 0,\n    \"isInitial\": 0,\n    \"guestName\": \"Andrew Peterson\",\n    \"guestFirstName\": \"Andrew\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mail@test.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2019-05-19\",\n    \"departureDate\": \"2019-05-20\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 267,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n   \"guestLocale\": null,\n   \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",\n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 111.12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 111.12,\n    \"airbnbTotalPaidAmount\": 111.12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 111.12,\n    \"airbnbCancellationPolicy\": \"moderate\"\n,\n   \"customerUserId\": null\n,\n   \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII",
    'Content-Type': "application/json",
    'Cache-Control': "no-cache"
    }

conn.request("POST", "v1/reservations?forceOverbooking=1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/reservations?forceOverbooking=1`

A reservation object should be provided in the request body. 
Value of `channelId` can be set to one of the following: `2000` for a direct reservation, `2020` for Partner reservation.
Also `couponName` string field can be provided inside reservation object, it will cause the corresponding coupon to 
be applied to the specified reservation, however, keep in mind that it won't affect price, it will only decrement 
coupon usages.

To calculate correct total price, including coupon discounts make sure you call [calculate reservation price](#calculate-reservation-price)
with all necessary query params and use total price received from it as `totalPrice` value for reservation object + include 
`couponName` (if any). This will help you to get coupon usage counter, price and financial reporting aligned.

### Query parameters

Query parameter | Required | Type | Description
-------- | -------- | ---- | ----------- 
`forceOverbooking` | no | int | Ignore overbooking protection

### Response

The created reservation object or error response.
