## Calculate reservation price components

Endpoint for getting reservation quote based on components for dates selected.

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listings/60701/calendar/priceDetails' \
--header 'authorization: Bearer ' \
--header 'Content-Type: application/json' \
--data-raw '{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "weeklyDiscount": "",
    "customFees": [
        {
            "feeId": 1
        },
        {
            "feeId": 3,
            "quantity": 3,
            "isManuallySet": false
        },
        {
            "feeId": 4,
            "quantity": 3,
            "amount": 21,
            "isManuallySet": false
        }
    ],
    "includeInTotal": [
        "employeeDiscount"
    ]
}'
```
```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listings/60701/calendar/priceDetails',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "weeklyDiscount": "",
    "customFees": [
        {
            "feeId": 1
        },
        {
            "feeId": 3,
            "quantity": 3,
            "isManuallySet": false
        },
        {
            "feeId": 4,
            "quantity": 3,
            "amount": 21,
            "isManuallySet": false
        }
    ],
    "includeInTotal": [
        "employeeDiscount"
    ]
}',
  CURLOPT_HTTPHEADER => array(
    'authorization: Bearer ',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

```javascript
var data = JSON.stringify({
    "startingDate": "2020-12-01",
    "endingDate": "2020-12-31",
    "numberOfGuests": "1",
    "weeklyDiscount": "",
    "customFees": [
        {
            "feeId": 1
        },
        {
            "feeId": 3,
            "quantity": 3,
            "isManuallySet": false
        },
        {
            "feeId": 4,
            "quantity": 3,
            "amount": 21,
            "isManuallySet": false
        }
    ],
    "includeInTotal": [
        "employeeDiscount"
    ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listings/60701/calendar/priceDetails");
xhr.setRequestHeader("authorization", "Bearer ");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"startingDate\": \"2020-12-01\",\n    \"endingDate\": \"2020-12-31\",\n    \"numberOfGuests\": \"1\",\n    \"weeklyDiscount\": \"\",\n    \"customFees\": [\n        {\n            \"feeId\": 1\n        },\n        {\n            \"feeId\": 3,\n            \"quantity\": 3,\n            \"isManuallySet\": false\n        },\n        {\n            \"feeId\": 4,\n            \"quantity\": 3,\n            \"amount\": 21,\n            \"isManuallySet\": false\n        }\n    ],\n    \"includeInTotal\": [\n        \"employeeDiscount\"\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listings/60701/calendar/priceDetails")
  .method("POST", body)
  .addHeader("authorization", "Bearer ")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", 80)
payload = json.dumps({
  "startingDate": "2020-12-01",
  "endingDate": "2020-12-31",
  "numberOfGuests": "1",
  "weeklyDiscount": "",
  "customFees": [
    {
      "feeId": 1
    },
    {
      "feeId": 3,
      "quantity": 3,
      "isManuallySet": False
    },
    {
      "feeId": 4,
      "quantity": 3,
      "amount": 21,
      "isManuallySet": False
    }
  ],
  "includeInTotal": [
    "employeeDiscount"
  ]
})
headers = {
  'authorization': 'Bearer ',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/listings/60701/calendar/priceDetails", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```


`POST https://api.hostaway.com/v1/listings/{listingId}/calendar/priceDetails`

JSON Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`startingDate` | yes | date |
`endingDate` | yes | date |
`numberOfGuests` | yes | int |
`markup` | no | float |
`couponName` | no | string |
`includeInTotal` | no | array of strings | Names of optional components to include in total price
`customFees` | no | array of objects | Custom fee objects to set quantities or override price

Note: if custom direct channel fees feature flag is active then endpoint supports additional parameter `customFees`.
It is an array of objects following structure:

Custom fee field | Required | Type | Description
--------- | -------- | ---- | -----------
`feeId` | yes | int | ID number of `listingFeeSetting` object
`quantity` | no | int | Quantity (1 is default). Only appliable to listing fees that allow select quantity
`amount` | no | float | Price amount (quantity already multiplied)
`isManuallySet` | no | int | 1 if value is manually set by user (0 default value meaning it is calculated automatically)

### Response

A reservation quote components object.
