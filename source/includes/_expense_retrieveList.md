## Get Expenses&Extras list

Get expenses and extras list

### Query params:
name | default | options
-------- |---------| ----
`limit` | 100     | amount of records to retrieve, 500 is max
`offset` | 0       | amount of records to skip
`format` | json    | one of the following: json, csv


### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/expenses' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/expenses",
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

xhr.open("GET", "https://api.hostaway.com/v1/expenses");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/expenses")
  .get()
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/expenses"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/expenses`

### Response

List of expense objects

```json
{
  "status": "success",
  "result": [
    {
      "id": 123,
      "accountId": 10638,
      "ownerStatementId": 6,
      "listingMapId": 123,
      "reservationId": 456,
      "expenseDate": "2021-10-22",
      "concept": "test",
      "amount": 123,
      "type": "extra",
      "isDeleted": 0,
      "ownerUserId": null,
      "insertedOn": "2022-01-01 00:00:00",
      "updatedOn": "2022-01-01 00:00:00",
      "ownerStatementIds": [
        6
      ],
      "categories": [],
      "categoriesNames": [],
      "attachments": [],
      "listingName": null,
      "guestName": null,
      "ownerStatementNames": [
        "test"
      ],
      "ownerStatementExpenseId": 2
    },
    {
      "id": 3,
      "accountId": 10638,
      "ownerStatementId": 16,
      "listingMapId": 123,
      "reservationId": 456,
      "expenseDate": "2021-10-21",
      "concept": "test",
      "amount": -555,
      "type": "expense",
      "isDeleted": 0,
      "ownerUserId": 123,
      "insertedOn": "2022-10-19 13:44:00",
      "updatedOn": "2023-02-10 15:30:48",
      "ownerStatementIds": [
        16,
        5,
        6
      ],
      "categories": [],
      "categoriesNames": [],
      "attachments": [],
      "ownerUserEmail": "test@test.com",
      "ownerUserFirstName": "Test",
      "ownerUserLastName": "User",
      "ownerUserName": "Test User (test@test.com)",
      "listingName": null,
      "guestName": null,
      "ownerStatementNames": [
        "test1",
        "test2",
        "test3"
      ],
      "ownerStatementExpenseId": 3
    }
  ]
}
```
