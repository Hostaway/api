## Add Listing Fee Settings

Add listing fee settings by listing map. Then you can use it for calculate total price and create reservation. Please check <a href="#calculate-reservation-price-with-extras">this</a>

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/listingFeeSettings/40270' \
--header 'jwt;' \
--header 'Content-Type: application/json' \
--data-raw '{
    "feeType": "parkingFee",
    "feeTitle": null,
    "feeAppliedPer": "base_rate",
    "amount": 1000,
    "amountType": "flat",
    "isMandatory": 0,
    "isQuantitySelectable": 1
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/listingFeeSettings/40270',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "feeType": "parkingFee",
    "feeTitle": null,
    "feeAppliedPer": "base_rate",
    "amount": 1000,
    "amountType": "flat",
    "isMandatory": 0,
    "isQuantitySelectable": 1
}',
  CURLOPT_HTTPHEADER => array(
    'jwt: ',
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = JSON.stringify({
    "feeType": "parkingFee",
    "feeTitle": null,
    "feeAppliedPer": "base_rate",
    "amount": 1000,
    "amountType": "flat",
    "isMandatory": 0,
    "isQuantitySelectable": 1
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/listingFeeSettings/40270");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"feeType\": \"parkingFee\",\n    \"feeTitle\": null,\n    \"feeAppliedPer\": \"base_rate\",\n    \"amount\": 1000,\n    \"amountType\": \"flat\",\n    \"isMandatory\": 0,\n    \"isQuantitySelectable\": 1\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingFeeSettings/40270")
  .method("POST", body)
  .addHeader("jwt", "")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", undefined)
payload = json.dumps({
  "feeType": "parkingFee",
  "feeTitle": None,
  "feeAppliedPer": "base_rate",
  "amount": 1000,
  "amountType": "flat",
  "isMandatory": 0,
  "isQuantitySelectable": 1
})
headers = {
  'jwt': '',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/listingFeeSettings/40270", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/listingFeeSettings/{listingId}`

### Response

The created listing fee object or error response.
