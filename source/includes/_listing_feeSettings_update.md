## Update Listing Fee Settings

Update listing fee settings by listing map and ID

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/listingFeeSettings/40270/1' \
--header 'jwt;' \
--header 'Content-type: application/json' \
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
  CURLOPT_URL => 'https://api.hostaway.com/v1/listingFeeSettings/40270/1',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
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
    'Content-type: application/json'
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

xhr.open("PUT", "https://api.hostaway.com/v1/listingFeeSettings/40270/1");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"feeType\": \"parkingFee\",\n    \"feeTitle\": null,\n    \"feeAppliedPer\": \"base_rate\",\n    \"amount\": 1000,\n    \"amountType\": \"flat\",\n    \"isMandatory\": 0,\n    \"isQuantitySelectable\": 1\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/listingFeeSettings/40270/1")
  .method("PUT", body)
  .addHeader("jwt", "")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")
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
  'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImNhMmJhMjAyZGMwYzU0ZWZlYmVkNTJmZjhkNjZjNjZhODBjMmVhYmQ0ZDU4ODVmZmRmMGI1YjkzODBjN2I2MzU3ZTE2NDk4YTVmNTQyOWQ4IiwiaWF0IjoxNjkxNjUzNDc2LCJuYmYiOjE2OTE2NTM0NzYsImV4cCI6MTc1NDgxMTg3Niwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXSwic2VjcmV0SWQiOjF9.cr4vNqZ1WuR5IOY-SoVitOv8PBdhMnMrUp2WZx8E6Adet-9rYI3KB3wMzxjTShXp_63TGGKYsdmNQ6DQOuB4PbN8qH1jsacmwn0cY4ynxfLaG5n9bdJ5DxLHe8EGv-MD2HIM1-zrK1bMBYTx6idti0L2IK6S6xxJCHQ5fBfsuyc'',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/listingFeeSettings/40270/1", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/listingFeeSettings/{listingId}`

### Response

The updated listing fee object or error response.
