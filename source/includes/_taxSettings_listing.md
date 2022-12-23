## Listing Tax Settings

Get listing tax settings

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/listingTaxSettings/{listingId}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/listingTaxSettings/{listingId}",
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

xhr.open("GET", "https://api.hostaway.com/v1/listingTaxSettings/{listingId}");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingTaxSettings/{listingId}")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/listingTaxSettings/{listingId}"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/listingTaxSettings/{listingId}`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`accountId` | yes | int | 
`listingMapId` | yes | int | 
`taxType` | yes | string | Can be one of the following: salesTax, hotelTax, vat, lodgingTax, occupancyTax, cityTax, roomTax, otherTaxes
`taxAppliedPer` | yes | string | Can be one of the following: reservation, person, night, person_per_night
`amount` | yes | float | 
`amountType` | yes | string | Can be one of the following: percent, flat
`applyTo` | yes | string | Json list of following strings: baseRate, cleaningFee
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
    "status": "success",
    "result": [
        {
            "id": 1,
            "accountId": 10638,
            "listingMapId": 60701,
            "taxType": "roomTax",
            "taxAppliedPer": "reservation",
            "amount": 1234,
            "amountType": "percent",
            "applyTo": "[\"baseRate\",\"cleaningFee\"]",
            "insertedOn": "2020-05-27 13:57:58",
            "updatedOn": "2020-05-27 13:58:50"
        },
        {
            "id": 2,
            "accountId": 10638,
            "listingMapId": 60701,
            "taxType": "cityTax",
            "taxAppliedPer": "reservation",
            "amount": 1234,
            "amountType": "percent",
            "applyTo": "[\"baseRate\",\"cleaningFee\"]",
            "insertedOn": "2020-05-27 13:57:58",
            "updatedOn": "2020-05-27 13:58:50"
        }
    ]
}
```
