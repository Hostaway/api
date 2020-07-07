## Finance Calculated Fields

Get finance calculated fields by reservation ID

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/financeCalculatedField/reservation/755143' \
  --header 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/financeCalculatedField/reservation/755143",
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

xhr.open("GET", "https://api.hostaway.com/v1/financeCalculatedField/reservation/755143");
xhr.setRequestHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeCalculatedField/reservation/755143")
  .get()
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/financeCalculatedField/reservation/755143"

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/financeCalculatedField/reservation/{reservationId}`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`accountId` | yes | int | 
`listingMapId` | yes | int | 
`financeCustomFormulaId` | no | int | 
`channelId` | yes | int | 
`reservationId` | yes | int |
`formulaName` | yes | string | 
`formulaValue` | yes | string | 
`formulaFilled` | yes | string | 
`formulaResult` | yes | float | 
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
    "status": "success",
    "result": [
        {
            "id": 10630,
            "accountId": 10638,
            "listingMapId": 60633,
            "financeCustomFormulaId": null,
            "channelId": 2000,
            "reservationId": 755143,
            "formulaName": "totalTax",
            "formulaValue": "vat + hotelTax + lodgingTax + salesTax + transientOccupancyTax + cityTax + roomTax + otherTaxes",
            "formulaFilled": "0 + 0 + 0 + 0 + 0 + 0 + 0 + 0",
            "formulaResult": 0,
            "insertedOn": "2020-05-25 11:35:16",
            "updatedOn": "2020-06-04 14:29:06"
        },
        {
            "id": 10631,
            "accountId": 10638,
            "listingMapId": 60633,
            "financeCustomFormulaId": null,
            "channelId": 2000,
            "reservationId": 755143,
            "formulaName": "totalGuestFees",
            "formulaValue": "cleaningFeeValue",
            "formulaFilled": "400",
            "formulaResult": 400,
            "insertedOn": "2020-05-25 11:35:16",
            "updatedOn": "2020-06-04 14:29:06"
        }
    ]
}
```
