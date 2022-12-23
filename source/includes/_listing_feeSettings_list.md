## List Listing Fee Settings

Get listing fee settings by listing map

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/listingFeeSettings/{listingId}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listingFeeSettings/{listingId}",
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

xhr.open("GET", "https://api.hostaway.com/v1/listingFeeSettings/{listingId}");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingFeeSettings/{listingId}")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/listingFeeSettings/{listingId}"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/listingFeeSettings/{listingId}`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`accountId` | yes | int | 
`listingMapId` | yes | int |
`feeType` | yes | string | Can be one of the following: additionalCleaningFee, parkingFee, towelChangeFee, midstayCleaningFee, roomRequestFee, reservationChangeFee, lateCheckoutFee, otherFees, creditCardFee, kitchenLinenFee, linenPackageFee, transferFee, wristbandFee, extraBedsFee, serviceFee, bedLinenFee, bookingFee, petFee, skiPassFee, tourismFee, childrenExtraFee, resortFee
`feeTitle` | no | string | Fee title
`feeAppliedPer` | yes | string | Can be one of the following: reservation, person, night, person_per_night
`amount` | yes | float | 
`amountType` | yes | string | Can be one of the following: percent, flat
`isMandatory` | no | int | 1 = fee always included in total price, 0/null = is not included by default
`isQuantitySelectable` | yes | int | 1 = fee quantity can be selected, it will be multiplied to get value, 0 = quantity is not selectable and is always 1
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
  "status": "success",
  "result": [
    {
      "id": 2,
      "accountId": 10638,
      "listingMapId": 40270,
      "feeType": "parkingFee",
      "feeTitle": null,
      "feeAppliedPer": "base_rate",
      "amount": 1000,
      "amountType": "flat",
      "isMandatory": null,
      "isQuantitySelectable": 0,
      "insertedOn": "2020-07-29 15:23:49",
      "updatedOn": "2020-07-29 15:23:49"
    }
  ]
}
```
