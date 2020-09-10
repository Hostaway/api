## Finance Standard Fields

Get finance standard fields by reservation ID

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/financeStandardField/reservation/755143' \
  --header 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'cache-control: no-cache'
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
    "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "cache-control: no-cache"
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
xhr.setRequestHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeStandardField/reservation/755143")
  .get()
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/financeStandardField/reservation/755143"

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
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
`channelId` | yes | int | 
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
`weeklyDiscount` | no | float | 
`cancellationFee` | no | float | 
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
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
    "status": "success",
    "result": {
        "id": 966,
        "accountId": 10638,
        "listingMapId": 60633,
        "channelId": 2000,
        "reservationId": 755143,
        "damageDeposit": 7000,
        "guestChannelFee": null,
        "hostChannelFee": null,
        "baseRate": 2103,
        "vat": null,
        "salesTax": null,
        "cityTax": null,
        "otherTaxes": null,
        "cleaningFeeValue": 400,
        "weeklyDiscount": 0,
        "cancellationFee": null,
        "roomTax": null,
        "transientOccupancyTax": null,
        "lodgingTax": null,
        "hotelTax": null,
        "guestNightlyTax": 0,
        "guestStayTax": 21,
        "guestPerPersonPerNightTax": 99,
        "propertyRentTax": 0,
        "priceForExtraPerson": 0,
        "monthlyDiscount": 0,
        "cancellationPayout": null,
        "cancellationHostFee": null,
        "insertedOn": "2020-05-21 18:04:21",
        "updatedOn": "2020-05-21 18:04:21"
    }
}
```
