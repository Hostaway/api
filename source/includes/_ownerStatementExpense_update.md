## Update Owner Statement expense by ID

Update Owner Statement expense by id

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/ownerStatementExpenses/1' \
--header 'jwt;' \
--header 'Content-type: application/json' \
--data-raw '{
        "ownerStatementId": null,
        "listingMapId": 123,
        "reservationId": null,
        "expenseDate": "2021-10-21",
        "concept": "test",
        "amount": 123,
        "isDeleted": 0,
        "ownerUserId": null,
        "ownerStatementIds": [
            5,
            6
        ],
        "categories": [
            1
        ],
        "attachments": []
    }'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/ownerStatementExpenses/1',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
        "ownerStatementId": null,
        "listingMapId": 123,
        "reservationId": null,
        "expenseDate": "2021-10-21",
        "concept": "test",
        "amount": 123,
        "isDeleted": 0,
        "ownerUserId": null,
        "ownerStatementIds": [
            5,
            6
        ],
        "categories": [
            1
        ],
        "attachments": []
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
    "ownerStatementId": null,
    "listingMapId": 123,
    "reservationId": null,
    "expenseDate": "2021-10-21",
    "concept": "test",
    "amount": 123,
    "isDeleted": 0,
    "ownerUserId": null,
    "ownerStatementIds": [
        5,
        6
    ],
    "categories": [
        1
    ],
    "attachments": []
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/ownerStatementExpenses/1");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"ownerStatementId\": null,\n    \"listingMapId\": 123,\n    \"reservationId\": null,\n    \"expenseDate\": \"2021-10-21\",\n    \"concept\": \"test\",\n    \"amount\": 123,\n    \"isDeleted\": 0,\n    \"ownerUserId\": null,\n    \"ownerStatementIds\": [\n        5,\n        6\n    ],\n    \"categories\": [\n        1\n    ],\n    \"attachments\": []\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/ownerStatementExpenses/1")
  .method("PUT", body)
  .addHeader("jwt", "")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", undefined)
payload = json.dumps({
        "ownerStatementId": null,
        "listingMapId": 123,
        "reservationId": null,
        "expenseDate": "2021-10-21",
        "concept": "test",
        "amount": 123,
        "isDeleted": 0,
        "ownerUserId": null,
        "ownerStatementIds": [
            5,
            6
        ],
        "categories": [
            1
        ],
        "attachments": []
    })
headers = {
  'jwt': '',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/ownerStatementExpenses/1", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/ownerStatementExpenses/1`

### Response

Updated owner statement expense object

```json
{
  "status": "success",
  "result": {
    "id": 1,
    "accountId": 10638,
    "ownerStatementId": 5,
    "listingMapId": 123,
    "reservationId": 456,
    "expenseDate": "2021-10-21",
    "concept": "test",
    "amount": 123,
    "isDeleted": 0,
    "ownerUserId": null,
    "insertedOn": "2022-01-01 00:00:00",
    "updatedOn": "2022-01-01 00:00:00",
    "ownerStatementIds": [
      5,
      6
    ],
    "categories": [
      1
    ],
    "categoriesNames": [
      "test"
    ],
    "attachments": [],
    "listingName": null,
    "guestName": null,
    "ownerStatementNames": [
      "test4",
      "test2"
    ],
    "ownerStatementExpenseId": 1
  }
}
```
