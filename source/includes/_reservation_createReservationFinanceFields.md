## Create a reservation with price details

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/reservations?forceOverbooking=1' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ' \
--header 'Content-type: text/plain' \
--data-raw '{
    "channelId": 2000,
    "listingMapId": 90632,
    "isManuallyChecked": 0,
    "isInitial": 0,
    "guestName": "Mikhail",
    "guestFirstName": "Mikhail",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
    "guestCity": "Austin",
    "guestCountry": "US",
    "guestEmail": "mikhail@hostaway.com",
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
    "arrivalDate": "2022-11-19",
    "departureDate": "2022-11-20",
    "checkInTime": null,
    "checkOutTime": null,
    "phone": "+75125551212",
    "totalPrice": 13520,
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
    "financeField": [
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "price",
        "name": "baseRate",
        "title": "Base rate",
        "alias": null,
        "quantity": null,
        "value": 12320,
        "total": 12320,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "cleaningFee",
        "title": "Cleaning fee",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "vat",
        "title": "VAT / GST",
        "alias": null,
        "quantity": null,
        "value": 200,
        "total": 200,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "damageDeposit",
        "title": "Damage deposit",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      }
    ]
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/reservations?forceOverbooking=1',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "channelId": 2000,
    "listingMapId": 90632,
    "isManuallyChecked": 0,
    "isInitial": 0,
    "guestName": "Mikhail",
    "guestFirstName": "Mikhail",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
    "guestCity": "Austin",
    "guestCountry": "US",
    "guestEmail": "mikhail@hostaway.com",
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
    "arrivalDate": "2022-11-19",
    "departureDate": "2022-11-20",
    "checkInTime": null,
    "checkOutTime": null,
    "phone": "+75125551212",
    "totalPrice": 13520,
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
    "financeField": [
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "price",
        "name": "baseRate",
        "title": "Base rate",
        "alias": null,
        "quantity": null,
        "value": 12320,
        "total": 12320,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "cleaningFee",
        "title": "Cleaning fee",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "tax",
        "name": "vat",
        "title": "VAT / GST",
        "alias": null,
        "quantity": null,
        "value": 200,
        "total": 200,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      },
      {
        "id": null,
        "listingFeeSettingId": null,
        "type": "fee",
        "name": "damageDeposit",
        "title": "Damage deposit",
        "alias": null,
        "quantity": null,
        "value": 500,
        "total": 500,
        "isIncludedInTotalPrice": 1,
        "isOverriddenByUser": 0,
        "isQuantitySelectable": 0,
        "isMandatory": null,
        "isDeleted": 0
      }
    ]
}',
  CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ',
    'Content-type: text/plain'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = "{\n    \"channelId\": 2000,\n    \"listingMapId\": 90632,\n    \"isManuallyChecked\": 0,\n    \"isInitial\": 0,\n    \"guestName\": \"Mikhail\",\n    \"guestFirstName\": \"Mikhail\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mikhail@hostaway.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2022-11-19\",\n    \"departureDate\": \"2022-11-20\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 13520,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"guestLocale\": null,\n    \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",\n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 332,\n    \"airbnbTotalPaidAmount\": 12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 0,\n    \"airbnbCancellationPolicy\": \"moderate\",\n    \"customerUserId\": null,\n    \"financeField\": [\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"price\",\n        \"name\": \"baseRate\",\n        \"title\": \"Base rate\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 12320,\n        \"total\": 12320,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"fee\",\n        \"name\": \"cleaningFee\",\n        \"title\": \"Cleaning fee\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 500,\n        \"total\": 500,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"tax\",\n        \"name\": \"vat\",\n        \"title\": \"VAT / GST\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 200,\n        \"total\": 200,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"fee\",\n        \"name\": \"damageDeposit\",\n        \"title\": \"Damage deposit\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 500,\n        \"total\": 500,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      }\n    ]\n}";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/reservations?forceOverbooking=1");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ");
xhr.setRequestHeader("Content-type", "text/plain");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "{\n    \"channelId\": 2000,\n    \"listingMapId\": 90632,\n    \"isManuallyChecked\": 0,\n    \"isInitial\": 0,\n    \"guestName\": \"Mikhail\",\n    \"guestFirstName\": \"Mikhail\",\n    \"guestLastName\": \"Peterson\",\n    \"guestZipCode\": \"TX 78705\",\n    \"guestAddress\": \"3411 Cedar street\",\n    \"guestCity\": \"Austin\",\n    \"guestCountry\": \"US\",\n    \"guestEmail\": \"mikhail@hostaway.com\",\n    \"guestPicture\": \"https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small\",\n    \"guestRecommendations\": 5,\n    \"guestTrips\": 10,\n    \"guestWork\": \"test\",\n    \"isGuestIdentityVerified\": 1,\n    \"isGuestVerifiedByEmail\": 1,\n    \"isGuestVerifiedByWorkEmail\": 1,\n    \"isGuestVerifiedByFacebook\": 1,\n    \"isGuestVerifiedByGovernmentId\": 1,\n    \"isGuestVerifiedByPhone\": 1,\n    \"isGuestVerifiedByReviews\": 1,\n    \"numberOfGuests\": 1,\n    \"adults\": 1,\n    \"children\": null,\n    \"infants\": null,\n    \"pets\": null,\n    \"arrivalDate\": \"2022-11-19\",\n    \"departureDate\": \"2022-11-20\",\n    \"checkInTime\": null,\n    \"checkOutTime\": null,\n    \"phone\": \"+75125551212\",\n    \"totalPrice\": 13520,\n    \"taxAmount\": null,\n    \"channelCommissionAmount\": null,\n    \"cleaningFee\": null,\n    \"securityDepositFee\": null,\n    \"isPaid\": null,\n    \"currency\": \"USD\",\n    \"hostNote\": null,\n    \"guestNote\": null,\n    \"guestLocale\": null,\n    \"doorCode\": \"12345\",\n    \"doorCodeVendor\": \"test\",\n    \"doorCodeInstruction\": \"test\",\n    \"comment\": null,\n    \"airbnbExpectedPayoutAmount\": 111.12,\n    \"airbnbListingBasePrice\": 110,\n    \"airbnbListingCancellationHostFee\": 12.02,\n    \"airbnbListingCancellationPayout\": 122,\n    \"airbnbListingCleaningFee\": 1,\n    \"airbnbListingHostFee\": 43,\n    \"airbnbListingSecurityPrice\": 12,\n    \"airbnbOccupancyTaxAmountPaidToHost\": 332,\n    \"airbnbTotalPaidAmount\": 12,\n    \"airbnbTransientOccupancyTaxPaidAmount\": 0,\n    \"airbnbCancellationPolicy\": \"moderate\",\n    \"customerUserId\": null,\n    \"financeField\": [\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"price\",\n        \"name\": \"baseRate\",\n        \"title\": \"Base rate\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 12320,\n        \"total\": 12320,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"fee\",\n        \"name\": \"cleaningFee\",\n        \"title\": \"Cleaning fee\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 500,\n        \"total\": 500,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"tax\",\n        \"name\": \"vat\",\n        \"title\": \"VAT / GST\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 200,\n        \"total\": 200,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      },\n      {\n        \"id\": null,\n        \"listingFeeSettingId\": null,\n        \"type\": \"fee\",\n        \"name\": \"damageDeposit\",\n        \"title\": \"Damage deposit\",\n        \"alias\": null,\n        \"quantity\": null,\n        \"value\": 500,\n        \"total\": 500,\n        \"isIncludedInTotalPrice\": 1,\n        \"isOverriddenByUser\": 0,\n        \"isQuantitySelectable\": 0,\n        \"isMandatory\": null,\n        \"isDeleted\": 0\n      }\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/reservations?forceOverbooking=1")
  .method("POST", body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqF_b-WgMifBtQ")
  .addHeader("Content-type", "text/plain")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = {
    "channelId": 2000,
    "listingMapId": 90632,
    "isManuallyChecked": 0,
    "isInitial": 0,
    "guestName": "Mikhail",
    "guestFirstName": "Mikhail",
    "guestLastName": "Peterson",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar street",
    "guestCity": "Austin",
    "guestCountry": "US",
    "guestEmail": "mikhail@hostaway.com",
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
    "children": None,
    "infants": None,
    "pets": None,
    "arrivalDate": "2022-11-19",
    "departureDate": "2022-11-20",
    "checkInTime": None,
    "checkOutTime": None,
    "phone": "+75125551212",
    "totalPrice": 13520,
    "taxAmount": None,
    "channelCommissionAmount": None,
    "cleaningFee": None,
    "securityDepositFee": None,
    "isPaid": None,
    "currency": "USD",
    "hostNote": None,
    "guestNote": None,
    "guestLocale": None,
    "doorCode": "12345",
    "doorCodeVendor": "test",
    "doorCodeInstruction": "test",
    "comment": None,
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
    "customerUserId": None,
    "financeField": [
        {
            "type": "price",
            "name": "baseRate",
            "value": 12320,
            "total": 12320,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 0,
            "isQuantitySelectable": 0,
            "isDeleted": 0
        },
        {
            "type": "fee",
            "name": "cleaningFee",
            "value": 500,
            "total": 500,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 0,
            "isQuantitySelectable": 0,
            "isDeleted": 0
        },
        {
            "type": "tax",
            "name": "vat",
            "value": 200,
            "total": 200,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 0,
            "isQuantitySelectable": 0,
            "isDeleted": 0
        },
        {
            "type": "fee",
            "name": "damageDeposit",
            "value": 500,
            "total": 500,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 0,
            "isQuantitySelectable": 0,
            "isDeleted": 0
        }
    ]
}
payload_json = json.dumps(payload)

headers = {
    'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyODY3MyIsImp0aSI6IjJjYjk4NWRlNDIzYmExZTBiMzdiZjgzNjdjOWExZDE0ZmIwNDE3YjIxNGQ0Yjk4OGJkYzE5NjU3NjI4YmFiZDQ0YTQxNGRlZmI5NTYyMGRhIiwiaWF0IjoxNjY3MzEyNjUxLCJuYmYiOjE2NjczMTI2NTEsImV4cCI6MTczMDQ3MTA1MSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjI3MTd9.JSvlt8VuBvPygoSjBeShiG0SQgwleninXSMuD4S4NwpsvljtHmsfM5CF1uQT-FTVeRuc8BdxNVPFuobWovQIEOlh6dYZJtaYv8PECp-EzgJCZKyv7-sY6cEC9s8Kf8hmJP3uOc-T90gxmOmOWm5zeL09HzWrdOqFI noticed that you're using the header `'Content-type': 'text/plain'`. This might not be the correct content type if you're sending a JSON payload. The standard content type for JSON is `'application/json'`. If you intend to send JSON data, you should update the content type in the headers as follows:

```python
headers = {
    'Authorization': 'Bearer ...',
    'Content-type': 'application/json',
}

```

`POST https://api.hostaway.com/v1/reservations?forceOverbooking=1`

You can create a reservation with flexible price details using price calculator [calculate reservation price](#calculate-reservation-price).
From the calculator response you should use components array of objects for creating reservation with price details.

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

### Finance component object.

Array of finance components from [calculate reservation price](#calculate-reservation-price) response you should use for filling `financeField` object in reservation creation.

Json Parameter | Required | Type   | Description
--------- |----------|--------| -----------
`listingFeeSettingId` | no       | int    | Listing fee setting ID
`type` | yes      | string | Type of component (price, tax, fee, discount)
`name` | yes      | string | Name of component
`title` | yes      | string | Title of component
`alias` | yes      | string | Alias of component
`quantity` | no       | int    | Quantity of component (only if component is quantity selectable)
`value` | yes      | float  | Price of component
`total` | yes      | float  | Total amount of component
`isIncludedInTotalPrice` | yes      | int    | Included or not included in total price
`isOverriddenByUser` | yes      | int    | Is component changed or not by the client
`isMandatory` | yes      | int    | Сomponent is mandatory for creating reservation or not
`isDeleted` | yes      | int    | Сomponent is deleted or not by the client

### Response

The created reservation object or error response.
