## Finance Standard Fields

Get finance standard fields by reservation ID

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/financeStandardField/reservation/755143' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/financeStandardField/reservation/755143",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "Cache-control: no-cache"
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

xhr.open("GET", "https://api.hostaway.com/v1/financeStandardField/reservation/755143");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeStandardField/reservation/755143")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/financeStandardField/reservation/755143"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/financeStandardField/reservation/{reservationId}`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`accountId` | yes | int | 
`listingMapId` | yes | int | 
`channelId` | yes | int | Please check here for valid channel values: [Channels](#reservation-channels) 
`reservationId` | yes | int | 
`damageDeposit` | no | float | 
`guestChannelFee` | no | float | 
`hostChannelFee` | no | float | 
`baseRate` | no | float | 
`vat` | no | float | 
`salesTax` | no | float | 
`cityTax` | no | float | 
`otherTaxes` | no | float | 
`cleaningFeeValue` | no | float | 
`additionalCleaningFee` | no | float | 
`parkingFee` | no | float | 
`towelChangeFee` | no | float | 
`midstayCleaningFee` | no | float | 
`roomRequestFee` | no | float | 
`reservationChangeFee` | no | float | 
`checkinFee` | no | float | 
`lateCheckoutFee` | no | float | 
`otherFees` | no | float | 
`creditCardFee` | no | float | 
`kitchenLinenFee` | no | float | 
`linenPackageFee` | no | float | 
`transferFee` | no | float | 
`wristbandFee` | no | float | 
`extraBedsFee` | no | float | 
`serviceFee` | no | float | 
`bedLinenFee` | no | float | 
`bookingFee` | no | float | 
`petFee` | no | float | 
`skiPassFee` | no | float | 
`tourismFee` | no | float | 
`childrenExtraFee` | no | float | 
`resortFee` | no | float | 
`resortFeeAirbnb` | no | float | 
`communityFeeAirbnb` | no | float | 
`managementFeeAirbnb` | no | float | 
`linenFeeAirbnb` | no | float | 
`weeklyDiscount` | no | float | 
`roomTax` | no | float | 
`transientOccupancyTax` | no | float | 
`lodgingTax` | no | float | 
`hotelTax` | no | float | 
`guestNightlyTax` | no | float | 
`guestStayTax` | no | float | 
`guestPerPersonPerNightTax` | no | float | 
`propertyRentTax` | no | float | 
`priceForExtraPerson` | no | float | 
`monthlyDiscount` | no | float | 
`cancellationPayout` | no | float | 
`cancellationHostFee` | no | float | 
`couponDiscount` | no | float | 
`shareholderDiscount` | no | float | 
`lastMinuteDiscount` | no | float | 
`employeeDiscount` | no | float | 
`otherSpecialDiscount` | no | float | 
`paymentServiceProcessingFees` | no | float | 
`bookingComCancellationGuestFee` | no | float | 
`otaPaymentProcessingFee` | no | float | 
`insuranceFee` | no | float | 
`manuallySetFields` | no | string | JSON serialized string with manually set fields list
`customFeeValuesJson` | no | string | JSON serialized string with custom fees configuration
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
  "status": "success",
  "result": {
    "id": 1,
    "accountId": 10496,
    "listingMapId": 40106,
    "channelId": 2000,
    "reservationId": 222000,
    "damageDeposit": 0,
    "guestChannelFee": null,
    "hostChannelFee": null,
    "baseRate": 1055,
    "vat": null,
    "salesTax": null,
    "cityTax": null,
    "otherTaxes": null,
    "cleaningFeeValue": 40.32,
    "additionalCleaningFee": null,
    "parkingFee": null,
    "towelChangeFee": null,
    "midstayCleaningFee": null,
    "roomRequestFee": null,
    "reservationChangeFee": null,
    "checkinFee": null,
    "lateCheckoutFee": null,
    "otherFees": null,
    "creditCardFee": null,
    "kitchenLinenFee": null,
    "linenPackageFee": null,
    "transferFee": null,
    "wristbandFee": null,
    "extraBedsFee": null,
    "serviceFee": null,
    "bedLinenFee": null,
    "bookingFee": null,
    "petFee": null,
    "skiPassFee": null,
    "tourismFee": null,
    "childrenExtraFee": null,
    "resortFee": null,
    "resortFeeAirbnb": null,
    "communityFeeAirbnb": null,
    "managementFeeAirbnb": null,
    "linenFeeAirbnb": null,
    "weeklyDiscount": 0,
    "roomTax": null,
    "transientOccupancyTax": null,
    "lodgingTax": null,
    "hotelTax": null,
    "guestNightlyTax": null,
    "guestStayTax": null,
    "guestPerPersonPerNightTax": null,
    "propertyRentTax": null,
    "priceForExtraPerson": 0,
    "monthlyDiscount": 0,
    "cancellationPayout": null,
    "cancellationHostFee": null,
    "couponDiscount": 0,
    "shareholderDiscount": null,
    "lastMinuteDiscount": null,
    "employeeDiscount": null,
    "otherSpecialDiscount": null,
    "paymentServiceProcessingFees": 0,
    "bookingComCancellationGuestFee": null,
    "otaPaymentProcessingFee": null,
    "insuranceFee": null,
    "manuallySetFields": "[\"baseRate\"]",
    "customFeeValuesJson": "[{\"feeType\":\"creditCardFee\",\"feeAppliedPer\":\"reservation\",\"accountId\":10638,\"isQuantitySelectable\":false,\"isMandatory\":false,\"feeTitle\":null,\"amountType\":\"flat\",\"listingMapId\":86249,\"insertedOn\":\"2021-07-01 07:13:25\",\"amount\":15,\"updatedOn\":\"2021-07-01 07:27:17\",\"id\":1214,\"name\":\"creditCardFee\",\"title\":null,\"isIncludedInTotalPrice\":true,\"isOverriddenByUser\":false,\"value\":15,\"quantity\":1,\"feeId\":1214}]",
    "insertedOn": "2021-09-17 17:22:52",
    "updatedOn": "2021-09-17 17:22:52"
  }
}
```
