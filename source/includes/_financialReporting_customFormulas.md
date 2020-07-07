## Finance Custom Formulas

Get finance custom formulas

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/financeCustomFormula' \
  --header 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'cache-control: no-cache'
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

xhr.open("GET", "https://api.hostaway.com/v1/financeCustomFormula");
xhr.setRequestHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/financeCustomFormula")
  .get()
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/financeCustomFormula"

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
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
`channelId` | yes | int | 
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
            "id": 20,
            "accountId": 10638,
            "listingMapId": 0,
            "channelId": 0,
            "formulaName": "pmCommissionAbc",
            "formulaValue": "(vat + 40) / cleaningFeeValue + 3 / 0",
            "isOverride": 0,
            "insertedOn": "2020-06-04 14:29:03",
            "updatedOn": "2020-06-04 14:29:03"
        },
        {
            "id": 21,
            "accountId": 10638,
            "listingMapId": 60701,
            "channelId": 0,
            "formulaName": "pmCommissionAbc",
            "formulaValue": "(vat + 40) / cleaningFeeValue + 3 / 0",
            "isOverride": 0,
            "insertedOn": "2020-06-04 14:29:03",
            "updatedOn": "2020-06-04 14:29:03"
        },
        {
            "id": 22,
            "accountId": 10638,
            "listingMapId": 60636,
            "channelId": 0,
            "formulaName": "pmCommissionAbc",
            "formulaValue": "(vat + 40) / cleaningFeeValue + 3 / 0",
            "isOverride": 0,
            "insertedOn": "2020-06-04 14:29:03",
            "updatedOn": "2020-06-04 14:29:03"
        }
    ]
}
```
