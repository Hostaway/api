## Finance Custom Formulas

Get finance custom formulas

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/financeCustomFormula' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/financeCustomFormula",
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

xhr.open("GET", "https://api.hostaway.com/v1/financeCustomFormula");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeCustomFormula")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/financeCustomFormula"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/financeCustomFormula`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`accountId` | yes | int | 
`listingMapId` | yes | int | 
`channelIds` | yes | int[] | Array of channel IDs to apply formula to (empty = all channels). <br>Please check here for valid channel values: [Channels](#reservation-channels)
`formulaName` | yes | string | 
`formulaValue` | yes | string | 
`isOverride` | yes | int | 
`insertedOn` | yes | date time | 
`updatedOn` | yes | date time | 

```json
{
  "status": "success",
  "result": [
    {
      "id": 9723,
      "accountId": 10496,
      "listingMapId": 60636,
      "channelIds": [
        2000
      ],
      "formulaName": "totalGuestFees",
      "formulaValue": "cleaningFeeValue + 15",
      "isOverride": 1,
      "insertedOn": "2021-01-15 13:45:33",
      "updatedOn": "2021-09-13 13:45:26"
    },
    {
      "id": 9723,
      "accountId": 10496,
      "listingMapId": 60636,
      "channelIds": [
        2000, 2018
      ],
      "formulaName": "testFormula",
      "formulaValue": "baseRate + 123",
      "isOverride": 0,
      "insertedOn": "2021-01-15 13:45:33",
      "updatedOn": "2021-09-13 13:45:26"
    }
  ],
  "count": "1",
  "offset": null
}
```
