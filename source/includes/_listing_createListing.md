## Create a listing

### Request

```shell
curl --request POST \
  --url https://api.hostaway.com/v1/listings \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8' \
  --header 'Cache-control: no-cache' \
  --header 'Content-type: application/json' \
  --data '{\n    "propertyTypeId": 1,\n    "name": "Beautiful and cozy apartment close to city center",\n    "externalListingName": "Beautiful and cozy apartment close to city center",\n    "internalListingName": "Property #3",\n    "description": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",\n    "houseRules": "Additional rules",\n    "keyPickup": "Key pickup",\n    "specialInstruction": "Any special instruction",\n    "doorSecurityCode": "ddff8",\n    "country": "Germany",\n    "countryCode": "DE",\n    "state": "Bremen",\n    "city": "Bremerhaven",\n    "street": "Schulstraße 7",\n    "address": "Schulstraße 7, Bremerhaven, Bremen 27570, Germany",\n    "publicAddress": "Bremerhaven, Bremen 27570, Germany",\n    "zipcode": "27570",\n    "price": 211.62,\n    "starRating": 5,\n    "weeklyDiscount": 0.71,\n    "monthlyDiscount": 0.82,\n    "propertyRentTax": 12,\n    "guestPerPersonPerNightTax": 10,\n    "guestStayTax": 12,\n    "guestNightlyTax": 13,\n    "guestBathroomsNumber": 2,\n    "refundableDamageDeposit": 15,\n    "personCapacity": 6,\n    "maxChildrenAllowed": null,\n    "maxInfantsAllowed": null,\n    "maxPetsAllowed": null,\n    "lat": 53.5403,\n    "lng": 8.58936,\n    "checkInTimeStart": 12,\n    "checkInTimeEnd": 21,\n    "checkOutTime": 11,\n    "cancellationPolicy": "strict",\n    "cancellationPolicyId": 1,\n    "vrboCancellationPolicyId": 2,\n    "bookingCancellationPolicyId": 3,\n    "airbnbCancellationPolicyId": 4,\n    "marriottCancellationPolicyId": 5,\n    "squareMeters": 10,\n    "roomType": "entire_home",\n    "bathroomType": "shared",\n    "bedroomsNumber": 1,\n    "bedsNumber": 1,\n    "bedType": "real_bed",\n    "bathroomsNumber": 1,\n    "minNights": 1,\n    "maxNights": 1125,\n    "guestsIncluded": 3,\n    "cleaningFee": 40.32,\n    "priceForExtraPerson": 54.01,\n    "instantBookable": 0,\n    "instantBookableLeadTime": 1,\n    "allowSameDayBooking": 2,\n    "sameDayBookingLeadTime": 12,\n    "contactName": "contactName",\n    "contactSurName": "contactSurName",\n    "contactPhone1": "contactPhone1",\n    "contactPhone2": "contactPhone2",\n    "contactLanguage": "contactLanguage",\n    "contactEmail": "contactEmail@mail.com",\n    "contactAddress": "contactAddress",\n    "language": "en",\n    "currencyCode": "USD",\n    "timeZoneName": "Europe/Berlin",\n    "wifiUsername": "un",\n    "wifiPassword": "pass",\n    "cleannessStatus": null,\n    "cleaningInstruction": null,\n    "cleannessStatusUpdatedOn": null,\n    "homeawayPropertyName": "Beautiful and cozy apartment close to city center",\n    "homeawayPropertyHeadline": "Beautiful and cozy apartment close to city center with a living room and bed room",\n    "homeawayPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",\n   "bookingcomPropertyName": "Beautiful and cozy apartment close to city center",\n    "bookingcomPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",\n    "airbnbName": "Beautiful and cozy apartment close to city center",\n    "airbnbSummary": "Beautiful and cozy apartment close to city center with a living room and bed room",\n    "invoicingContactName": "Name",\n "bookingcomPropertyHasVat": true,\n    "invoicingContactSurName": "SurName",\n    "invoicingContactPhone1": "+11122334456",\n    "invoicingContactPhone2": "+11122334456",\n    "invoicingContactLanguage": "en",\n    "invoicingContactEmail": "invoice@company.com",\n    "invoicingContactAddress": "221B Baker Street",\n    "invoicingContactCity": "London",\n    "invoicingContactZipcode": "110011",\n    "invoicingContactCountry": "UK",\n    "listingAmenities": [\n        {\n            "amenityId": 2\n        },\n        {\n            "amenityId": 3\n        },\n        {\n            "amenityId": 3\n        }\n    ],\n    "listingBedTypes": [\n        {\n            "bedTypeId": 2,\n            "quantity": 1\n        },\n        {\n            "bedTypeId": 33,\n            "quantity": 1\n        },\n        {\n            "bedTypeId": 33,\n            "quantity": 1\n        }\n    ],\n    "listingImages": [\n        {\n            "caption": "Kitche",\n            "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/9/5853ff465e538.JPG",\n            "sortOrder": 2\n        },\n        {\n            "caption": "hall",\n            "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/6/57eb022da2b28.jpg",\n            "sortOrder": 3\n        }\n    ]\n ,     "customFieldValues": [{"customFieldId": 167, "value": "Custom field value one"},{"customFieldId": 243, "value": "Custom field value two"}] \n}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listings",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"propertyTypeId\": 1,\n    \"name\": \"Beautiful and cozy apartment close to city center\",\n    \"externalListingName\": \"Beautiful and cozy apartment close to city center\",\n    \"internalListingName\": \"Property #3\",\n    \"description\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n    \"houseRules\": \"Additional rules\",\n    \"keyPickup\": \"Key pickup\",\n    \"specialInstruction\": \"Any special instruction\",\n    \"doorSecurityCode\": \"ddff8\",\n    \"country\": \"Germany\",\n    \"countryCode\": \"DE\",\n    \"state\": \"Bremen\",\n    \"city\": \"Bremerhaven\",\n    \"street\": \"Schulstraße 7\",\n    \"address\": \"Schulstraße 7, Bremerhaven, Bremen 27570, Germany\",\n    \"publicAddress\": \"Bremerhaven, Bremen 27570, Germany\",\n    \"zipcode\": \"27570\",\n    \"price\": 211.62,\n    \"starRating\": 5,\n    \"weeklyDiscount\": 0.71,\n    \"monthlyDiscount\": 0.82,\n    \"propertyRentTax\": 12,\n    \"guestPerPersonPerNightTax\": 10,\n    \"guestStayTax\": 12,\n    \"guestNightlyTax\": 13,\n     \"guestBathroomsNumber\": 2,\n    \"refundableDamageDeposit\": 15,\n    \"personCapacity\": 6,\n    \"maxChildrenAllowed\": null,\n    \"maxInfantsAllowed\": null,\n    \"maxPetsAllowed\": null,\n    \"lat\": 53.5403,\n    \"lng\": 8.58936,\n    \"checkInTimeStart\": 12,\n    \"checkInTimeEnd\": 21,\n    \"checkOutTime\": 11,\n    \"cancellationPolicy\": \"strict\",\n    \"cancellationPolicyId\": 1,\n \"bookingcomPropertyHasVat\": true,\n  \"vrboCancellationPolicyId\": 2,\n    \"bookingCancellationPolicyId\": 3,\n    \"airbnbCancellationPolicyId\": 4,\n    \"marriottCancellationPolicyId\": 5,\n    \"squareMeters\": 10,\n    \"roomType\": \"entire_home\",\n    \"bathroomType\": \"shared\",\n    \"bedroomsNumber\": 1,\n    \"bedsNumber\": 1,\n    \"bedType\": \"real_bed\",\n    \"bathroomsNumber\": 1,\n    \"minNights\": 1,\n    \"maxNights\": 1125,\n    \"guestsIncluded\": 3,\n    \"cleaningFee\": 40.32,\n    \"priceForExtraPerson\": 54.01,\n    \"instantBookable\": 0,\n    \"instantBookableLeadTime\": 1,\n    \"allowSameDayBooking\": 2,\n    \"sameDayBookingLeadTime\": 12,\n    \"contactName\": \"contactName\",\n    \"contactSurName\": \"contactSurName\",\n    \"contactPhone1\": \"contactPhone1\",\n    \"contactPhone2\": \"contactPhone2\",\n    \"contactLanguage\": \"contactLanguage\",\n    \"contactEmail\": \"contactEmail@mail.com\",\n    \"contactAddress\": \"contactAddress\",\n    \"language\": \"en\",\n    \"currencyCode\": \"USD\",\n    \"timeZoneName\": \"Europe/Berlin\",\n    \"wifiUsername\": \"un\",\n    \"wifiPassword\": \"pass\",\n    \"cleannessStatus\": null,\n    \"cleaningInstruction\": null,\n    \"cleannessStatusUpdatedOn\": null,\n    \"homeawayPropertyName\": \"Beautiful and cozy apartment close to city center\",\n    \"homeawayPropertyHeadline\": \"Beautiful and cozy apartment close to city center with a living room and bed room\",\n    \"homeawayPropertyDescription\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n  \"bookingcomPropertyName\": \"Beautiful and cozy apartment close to city center\",\n    \"bookingcomPropertyDescription\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n    \"airbnbName\": \"Beautiful and cozy apartment close to city center\",\n    \"airbnbSummary\": \"Beautiful and cozy apartment close to city center with a living room and bed room\",\n    \"invoicingContactName\": \"Name\",\n    \"invoicingContactSurName\": \"SurName\",\n    \"invoicingContactPhone1\": \"+11122334456\",\n    \"invoicingContactPhone2\": \"+11122334456\",\n    \"invoicingContactLanguage\": \"en\",\n    \"invoicingContactEmail\": \"invoice@company.com\",\n    \"invoicingContactAddress\": \"221B Baker Street\",\n    \"invoicingContactCity\": \"London\",\n    \"invoicingContactZipcode\": \"110011\",\n    \"invoicingContactCountry\": \"UK\",\n    \"listingAmenities\": [\n        {\n            \"amenityId\": 2\n        },\n        {\n            \"amenityId\": 3\n        },\n        {\n            \"amenityId\": 3\n        }\n    ],\n    \"listingBedTypes\": [\n        {\n            \"bedTypeId\": 2,\n            \"quantity\": 1\n        },\n        {\n            \"bedTypeId\": 33,\n            \"quantity\": 1\n        },\n        {\n            \"bedTypeId\": 33,\n            \"quantity\": 1\n        }\n    ],\n    \"listingImages\": [\n        {\n            \"caption\": \"Kitche\",\n            \"url\": \"https://www.sharingxchange.com/spacelist/assets/uploads/property/9/5853ff465e538.JPG\",\n            \"sortOrder\": 2\n        },\n        {\n            \"caption\": \"hall\",\n            \"url\": \"https://www.sharingxchange.com/spacelist/assets/uploads/property/6/57eb022da2b28.jpg\",\n            \"sortOrder\": 3\n        }\n    ]\n,\"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8",
    "Cache-control: no-cache",
    "Content-type: application/json"
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
  "propertyTypeId": 1,
  "name": "Beautiful and cozy apartment close to city center",
  "externalListingName": "Beautiful and cozy apartment close to city center",
  "internalListingName": "Property #3",
  "description": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "houseRules": "Additional rules",
  "keyPickup": "Key pickup",
  "specialInstruction": "Any special instruction",
  "doorSecurityCode": "ddff8",
  "country": "Germany",
  "countryCode": "DE",
  "state": "Bremen",
  "city": "Bremerhaven",
  "street": "Schulstraße 7",
  "address": "Schulstraße 7, Bremerhaven, Bremen 27570, Germany",
  "publicAddress": "Bremerhaven, Bremen 27570, Germany",
  "zipcode": "27570",
  "price": 211.62,
  "starRating": 5,
  "weeklyDiscount": 0.71,
  "monthlyDiscount": 0.82,
  "propertyRentTax": 12,
  "guestPerPersonPerNightTax": 10,
  "guestStayTax": 12,
  "guestNightlyTax": 13,
  "guestBathroomsNumber": 2,
  "refundableDamageDeposit": 15,
  "personCapacity": 6,
  "maxChildrenAllowed": null,
  "maxInfantsAllowed": null,
  "maxPetsAllowed": null,
  "lat": 53.5403,
  "lng": 8.58936,
  "checkInTimeStart": 12,
  "checkInTimeEnd": 21,
  "checkOutTime": 11,
  "cancellationPolicy": "strict",
  "cancellationPolicyId": 6,
  "bookingCancellationPolicyId": 1,
  "vrboCancellationPolicyId": 2,
  "airBnbCancellationPolicyId": 3,
  "marriottBnbCancellationPolicyId": 4,
  "squareMeters": 10,
  "roomType": "entire_home",
  "bathroomType": "shared",
  "bedroomsNumber": 1,
  "bedsNumber": 1,
  "bedType": "real_bed",
  "bathroomsNumber": 1,
  "minNights": 1,
  "maxNights": 1125,
  "guestsIncluded": 3,
  "cleaningFee": 40.32,
  "priceForExtraPerson": 54.01,
  "instantBookable": 0,
  "instantBookableLeadTime": 1,
  "allowSameDayBooking": 2,
  "sameDayBookingLeadTime": 12,
  "contactName": "contactName",
  "contactSurName": "contactSurName",
  "contactPhone1": "contactPhone1",
  "contactPhone2": "contactPhone2",
  "contactLanguage": "contactLanguage",
  "contactEmail": "contactEmail@mail.com",
  "contactAddress": "contactAddress",
  "language": "en",
  "currencyCode": "USD",
  "timeZoneName": "Europe/Berlin",
  "wifiUsername": "un",
  "wifiPassword": "pass",
  "cleannessStatus": null,
  "cleaningInstruction": null,
  "cleannessStatusUpdatedOn": null,
  "homeawayPropertyName": "Beautiful and cozy apartment close to city center",
  "homeawayPropertyHeadline": "Beautiful and cozy apartment close to city center with a living room and bed room",
  "homeawayPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "bookingcomPropertyName": "Beautiful and cozy apartment close to city center",
  "bookingcomPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "airbnbName": "Beautiful and cozy apartment close to city center",
  "airbnbSummary": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "invoicingContactName": "Name",
  "invoicingContactSurName": "Surname",
  "invoicingContactPhone1": "+11122334456",
  "invoicingContactPhone2": "+11122334456",
  "invoicingContactLanguage": "en",
  "invoicingContactEmail": "invoice@company.com",
  "invoicingContactAddress": "221B Baker Street",
  "invoicingContactCity": "London",
  "invoicingContactZipcode": "110011",
  "invoicingContactCountry": "UK",
  "propertyLicenseNumber": null,
  "propertyLicenseType": null,
  "propertyLicenseIssueDate": null,
  "propertyLicenseExpirationDate": null, 
  "isRentalAgreementActive": true,
  "bookingcomPropertyHasVat": true,
  "listingAgreementText": "Rental agreement text for listing",
  "listingAmenities": [
    {
      "amenityId": 2
    },
    {
      "amenityId": 3
    },
    {
      "amenityId": 3
    }
  ],
  "listingBedTypes": [
    {
      "bedTypeId": 2,
      "quantity": 1
    },
    {
      "bedTypeId": 33,
      "quantity": 1
    },
    {
      "bedTypeId": 33,
      "quantity": 1
    }
  ],
  "listingImages": [
    {
      "caption": "Kitche",
      "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/9/5853ff465e538.JPG",
      "sortOrder": 2
    },
    {
      "caption": "hall",
      "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/6/57eb022da2b28.jpg",
      "sortOrder": 3
    }
  ],
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

xhr.open("POST", "https://api.hostaway.com/v1/listings");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8");
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"propertyTypeId\": 1,\n    \"name\": \"Beautiful and cozy apartment close to city center\",\n    \"externalListingName\": \"Beautiful and cozy apartment close to city center\",\n    \"internalListingName\": \"Property #3\",\n    \"description\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n    \"houseRules\": \"Additional rules\",\n    \"keyPickup\": \"Key pickup\",\n    \"specialInstruction\": \"Any special instruction\",\n    \"doorSecurityCode\": \"ddff8\",\n    \"country\": \"Germany\",\n    \"countryCode\": \"DE\",\n    \"state\": \"Bremen\",\n    \"city\": \"Bremerhaven\",\n    \"street\": \"Schulstraße 7\",\n    \"address\": \"Schulstraße 7, Bremerhaven, Bremen 27570, Germany\",\n    \"publicAddress\": \"Bremerhaven, Bremen 27570, Germany\",\n    \"zipcode\": \"27570\",\n    \"price\": 211.62,\n    \"starRating\": 5,\n    \"weeklyDiscount\": 0.71,\n    \"monthlyDiscount\": 0.82,\n    \"propertyRentTax\": 12,\n    \"guestPerPersonPerNightTax\": 10,\n    \"guestStayTax\": 12,\n    \"guestNightlyTax\": 13,\n    \"guestBathroomsNumber\": 2,\n    \"refundableDamageDeposit\": 15,\n    \"personCapacity\": 6,\n    \"maxChildrenAllowed\": null,\n    \"maxInfantsAllowed\": null,\n    \"maxPetsAllowed\": null,\n    \"lat\": 53.5403,\n    \"lng\": 8.58936,\n    \"checkInTimeStart\": 12,\n    \"checkInTimeEnd\": 21,\n    \"checkOutTime\": 11,\n    \"cancellationPolicy\": \"strict\",\n    \"cancellationPolicyId\": 1,\n    \"vrboCancellationPolicyId\": 2,\n    \"bookingCancellationPolicyId\": 3,\n    \"airbnbCancellationPolicyId\": 4,\n    \"marriottCancellationPolicyId\": 5,\n    \"squareMeters\": 10,\n    \"roomType\": \"entire_home\",\n    \"bathroomType\": \"shared\",\n    \"bedroomsNumber\": 1,\n    \"bedsNumber\": 1,\n    \"bedType\": \"real_bed\",\n    \"bathroomsNumber\": 1,\n    \"minNights\": 1,\n    \"maxNights\": 1125,\n    \"guestsIncluded\": 3,\n    \"cleaningFee\": 40.32,\n    \"priceForExtraPerson\": 54.01,\n    \"instantBookable\": 0,\n    \"instantBookableLeadTime\": 1,\n    \"allowSameDayBooking\": 2,\n    \"sameDayBookingLeadTime\": 12,\n    \"contactName\": \"contactName\",\n    \"contactSurName\": \"contactSurName\",\n    \"contactPhone1\": \"contactPhone1\",\n    \"contactPhone2\": \"contactPhone2\",\n    \"contactLanguage\": \"contactLanguage\",\n    \"contactEmail\": \"contactEmail@mail.com\",\n    \"contactAddress\": \"contactAddress\",\n    \"language\": \"en\",\n    \"currencyCode\": \"USD\",\n    \"timeZoneName\": \"Europe/Berlin\",\n    \"wifiUsername\": \"un\",\n    \"wifiPassword\": \"pass\",\n    \"cleannessStatus\": null,\n    \"cleaningInstruction\": null,\n    \"cleannessStatusUpdatedOn\": null,\n    \"homeawayPropertyName\": \"Beautiful and cozy apartment close to city center\",\n    \"homeawayPropertyHeadline\": \"Beautiful and cozy apartment close to city center with a living room and bed room\",\n    \"homeawayPropertyDescription\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n   \"bookingcomPropertyName\": \"Beautiful and cozy apartment close to city center\",\n    \"bookingcomPropertyDescription\": \"In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.\",\n    \"airbnbName\": \"Beautiful and cozy apartment close to city center\",\n    \"airbnbSummary\": \"Beautiful and cozy apartment close to city center with a living room and bed room\",\n    \"invoicingContactName\": \"Name\",\n    \"invoicingContactSurName\": \"SurName\",\n    \"invoicingContactPhone1\": \"+11122334456\",\n    \"invoicingContactPhone2\": \"+11122334456\",\n    \"invoicingContactLanguage\": \"en\",\n    \"invoicingContactEmail\": \"invoice@company.com\",\n    \"invoicingContactAddress\": \"221B Baker Street\",\n    \"invoicingContactCity\": \"London\",\n    \"invoicingContactZipcode\": \"110011\",\n    \"invoicingContactCountry\": \"UK\",\n  \"bookingcomPropertyHasVat\": true,\n  \"listingAmenities\": [\n        {\n            \"amenityId\": 2\n        },\n        {\n            \"amenityId\": 3\n        },\n        {\n            \"amenityId\": 3\n        }\n    ],\n    \"listingBedTypes\": [\n        {\n            \"bedTypeId\": 2,\n            \"quantity\": 1\n        },\n        {\n            \"bedTypeId\": 33,\n            \"quantity\": 1\n        },\n        {\n            \"bedTypeId\": 33,\n            \"quantity\": 1\n        }\n    ],\n    \"listingImages\": [\n        {\n            \"caption\": \"Kitche\",\n            \"url\": \"https://www.sharingxchange.com/spacelist/assets/uploads/property/9/5853ff465e538.JPG\",\n            \"sortOrder\": 2\n        },\n        {\n            \"caption\": \"hall\",\n            \"url\": \"https://www.sharingxchange.com/spacelist/assets/uploads/property/6/57eb022da2b28.jpg\",\n            \"sortOrder\": 3\n        }\n    ]\n, \"customFieldValues\": [{\"customFieldId\": 167, \"value\": \"Custom field value one\"}, {\"customFieldId\": 243, \"value\": \"Custom field value two\"}]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings")
  .post(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2In0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6Ijc4MjUwZDMxY2FmNTczMWRhZGFlMWE2YmMxYzQ4ZWE2MWZjNzU5YjljYjUyYmQyNGM3ZDBkNzA1ZTI1Nzc2MTQ4ZDIzNWRlY2NkMzJlZGU2IiwiaWF0IjoxNTA2Njc1MTc4LCJuYmYiOjE1MDY2NzUxNzgsImV4cCI6MTUyMjIyNzE3OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.flG98dFtx0M0k9E_WQq2-fqUgGOip8s0HjuKGc4paLzgC1dMvIDAHnbR4xNnELL4PSN4HmzAQVVFfcMQOW3vP-qdPUae_wiMeT0Cu47wH-0KAZVSgZzCP0WhBTBgUm4yvgeKeKj5ha5WNfUo_w0Bx3cvtHtyjfEOr5yNNQznfF8")
  .addHeader("Content-type", "application/json")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
payload = json.dumps({
  "propertyTypeId": 1,
  "name": "Beautiful and cozy apartment close to city center",
  "externalListingName": "Beautiful and cozy apartment close to city center",
  "internalListingName": "Property #3",
  "description": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "houseRules": "Additional rules",
  "keyPickup": "Key pickup",
  "specialInstruction": "Any special instruction",
  "doorSecurityCode": "ddff8",
  "country": "Germany",
  "countryCode": "DE",
  "state": "Bremen",
  "city": "Bremerhaven",
  "street": "Schulstraße 7",
  "address": "Schulstraße 7, Bremerhaven, Bremen 27570, Germany",
  "publicAddress": "Bremerhaven, Bremen 27570, Germany",
  "zipcode": "27570",
  "price": 211.62,
  "starRating": 5,
  "weeklyDiscount": 0.71,
  "monthlyDiscount": 0.82,
  "propertyRentTax": 12,
  "guestPerPersonPerNightTax": 10,
  "guestStayTax": 12,
  "guestNightlyTax": 13,
  "guestBathroomsNumber": 2,
  "refundableDamageDeposit": 12.34,
  "personCapacity": 6,
  "maxChildrenAllowed": None,
  "maxInfantsAllowed": None,
  "maxPetsAllowed": None,
  "lat": 53.5403,
  "lng": 8.58936,
  "checkInTimeStart": 12,
  "checkInTimeEnd": 21,
  "checkOutTime": 11,
  "cancellationPolicy": "strict",
  "squareMeters": 10,
  "roomType": "entire_home",
  "bathroomType": "shared",
  "bedroomsNumber": 1,
  "bedsNumber": 1,
  "bedType": "real_bed",
  "bathroomsNumber": 1,
  "minNights": 1,
  "maxNights": 1125,
  "guestsIncluded": 3,
  "cleaningFee": 40.32,
  "priceForExtraPerson": 54.01,
  "instantBookable": 0,
  "instantBookableLeadTime": 1,
  "allowSameDayBooking": 2,
  "sameDayBookingLeadTime": 12,
  "contactName": "contactName",
  "contactSurName": "contactSurName",
  "contactPhone1": "contactPhone1",
  "contactPhone2": "contactPhone2",
  "contactLanguage": "contactLanguage",
  "contactEmail": "contactEmail@mail.com",
  "contactAddress": "contactAddress",
  "language": "en",
  "currencyCode": "USD",
  "timeZoneName": "Europe/Berlin",
  "wifiUsername": "un",
  "wifiPassword": "pass",
  "cleannessStatus": None,
  "cleaningInstruction": None,
  "cleannessStatusUpdatedOn": None,
  "homeawayPropertyName": "Beautiful and cozy apartment close to city center",
  "homeawayPropertyHeadline": "Beautiful and cozy apartment close to city center with a living room and bed room",
  "homeawayPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "bookingcomPropertyName": "Beautiful and cozy apartment close to city center",
  "bookingcomPropertyRoomName": "Apartment",
  "bookingcomPropertyDescription": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "airbnbName": "Beautiful and cozy apartment close to city center",
  "airbnbSummary": "In a classic Bremerhaven house we rent out our apartment which has a living room, bed room and is close to all the restaurants and nightlife.",
  "invoicingContactName": "Name",
  "invoicingContactSurName": "Surname",
  "invoicingContactPhone1": "+11122334456",
  "invoicingContactPhone2": "+11122334456",
  "invoicingContactLanguage": "en",
  "invoicingContactEmail": "invoice@company.com",
  "invoicingContactAddress": "221B Baker Street",
  "invoicingContactCity": "London",
  "invoicingContactZipcode": "110011",
  "invoicingContactCountry": "UK",
  "bookingcomPropertyHasVat": 1,
  "listingAmenities": [
    {
      "amenityId": 2
    },
    {
      "amenityId": 3
    },
    {
      "amenityId": 3
    }
  ],
  "listingBedTypes": [
    {
      "bedTypeId": 2,
      "quantity": 1
    },
    {
      "bedTypeId": 33,
      "quantity": 1
    },
    {
      "bedTypeId": 33,
      "quantity": 1
    }
  ],
  "listingImages": [
    {
      "caption": "Kitche",
      "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/9/5853ff465e538.JPG",
      "sortOrder": 2
    },
    {
      "caption": "hall",
      "url": "https://www.sharingxchange.com/spacelist/assets/uploads/property/6/57eb022da2b28.jpg",
      "sortOrder": 3
    }
  ]
})
headers = {
  'authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImMwY2UzMWU2MWRlZmM5MTUyZDY1ZmNjNDc1ZDg5MjI5OThlNTFmNjFhOGNlZGI1ZmYxZjRjYzI4YmJiOTFiOTIyNWQyMTE4MDdiMjdmMDA4IiwiaWF0IjoxNjczMjcxNDQzLCJuYmYiOjE2NzMyNzE0NDMsImV4cCI6MTczNjQyOTg0Mywic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjIxMX0.MWyrGSUuP7KmSxRlDfM3jsMKavjBu6w5JvHEeTfYr-HOKlQld5THmrLgKY3W_2taZXteFuhC_jQu3uZO1G1jtdOUQRYzSEzzP5Hj_2sqBmZUhR2niW7UtBnrMMMZvbOL_8FHnid11j2xR6gJLnOG0Fo-BqedZK2GbZsAQrOkEhk',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/listings", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/listings`

A listing object should be provided in the request body.

### Response

The created listing object or error response.
