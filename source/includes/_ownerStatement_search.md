## Search owner statements

Finds owner statements by status, listing and period. Each row holds the summary of a statement. Use [Get Owner Statement by id](#get-owner-statement-by-id) to read the financial data of one statement.

### Request

```shell
curl --request POST \
  --url 'https://api.hostaway.com/v1/ownerStatements/search' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  -H 'Cache-control: no-cache' \
  -H 'Content-type: application/json' \
  -d '{
  "statuses": [
    "new",
    "archived"
  ],
  "listingMapIds": [
    40160,
    40161
  ],
  "dateToFrom": "2026-01-01",
  "dateToTo": "2026-09-30",
  "limit": 100,
  "offset": 0
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/ownerStatements/search",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => json_encode(array(
    "statuses" => array("new", "archived"),
    "listingMapIds" => array(40160, 40161),
    "dateToFrom" => "2026-01-01",
    "dateToTo" => "2026-09-30",
    "limit" => 100,
    "offset" => 0
  )),
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "Cache-control: no-cache",
    "Content-type: application/json"
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
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.hostaway.com/v1/ownerStatements/search",
  "method": "POST",
  "headers": {
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "Cache-control": "no-cache",
    "Content-type": "application/json"
  },
  "processData": false,
  "data": JSON.stringify({
    "statuses": [
      "new",
      "archived"
    ],
    "listingMapIds": [
      40160,
      40161
    ],
    "dateToFrom": "2026-01-01",
    "dateToTo": "2026-09-30",
    "limit": 100,
    "offset": 0
  })
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"statuses\": [\n    \"new\",\n    \"archived\"\n  ],\n  \"listingMapIds\": [\n    40160,\n    40161\n  ],\n  \"dateToFrom\": \"2026-01-01\",\n  \"dateToTo\": \"2026-09-30\",\n  \"limit\": 100,\n  \"offset\": 0\n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/ownerStatements/search")
  .post(body)
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("Cache-control", "no-cache")
  .addHeader("Content-type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests
import json

url = "https://api.hostaway.com/v1/ownerStatements/search"

payload = {
    "statuses": [
        "new",
        "archived"
    ],
    "listingMapIds": [
        40160,
        40161
    ],
    "dateToFrom": "2026-01-01",
    "dateToTo": "2026-09-30",
    "limit": 100,
    "offset": 0
}

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    'Content-type': "application/json",
    }

response = requests.request("POST", url, data=json.dumps(payload), headers=headers)

print(response.text)
```

`POST https://api.hostaway.com/v1/ownerStatements/search`

Send the parameters as a JSON object in the request body. All of them are optional. Other keys are ignored.

Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`statuses` | no | array | List of statuses, as strings. A statement matches if it has any of them. Statuses are `new`, `archived` and `draft`.
`listingMapIds` | no | array | List of listing ids, as integers. Returns statements that cover every listing in the list, and statements that cover all listings of the account. A statement limited only by units is not returned.
`dateToFrom` | no | date | Returns statements whose period ends on or after this day. Use the `Y-m-d` format.
`dateToTo` | no | date | Returns statements whose period ends on or before this day. Use the `Y-m-d` format.
`limit` | no | int | Maximum number of statements to return. Default is `100` and the maximum is `500`. A value below `1` gives the default, and a value above `500` gives `500`.
`offset` | no | int | Number of statements to skip. Default is `0`.

A request fails with HTTP **400** when the body is not valid JSON, when `statuses` or `listingMapIds` is not a list of the right type, or when `dateToFrom` or `dateToTo` is not a valid date.

```json
{
  "status": "fail",
  "message": "statuses must be a list of strings"
}
```

### Response

An array of owner statements, and these fields next to it.

Property | Type | Description
-------- | ---- | -----------
`count` | int | Number of statements that match the filters, before `limit` and `offset`.
`limit` | int | The limit used.
`offset` | int | The offset used.
`defaultReportingCurrency` | string | Default reporting currency of the account. `null` when the account has none.
`grandTotalAmountSum` | float | Sum of the grand total of all statements that match the filters, not only the ones in this page.

Each statement has these main fields. The contact fields (`propertyManager*`, `propertyOwner*`), `notes` and `logoUrl` are the same as in [Get Owner Statement by id](#get-owner-statement-by-id).

Property | Type | Description
-------- | ---- | -----------
`id` | int |
`invoiceName` | string | Name of the invoice
`accountId` | int | Account ID
`statementName` | string | Name of the owner statement
`status` | string | One of `new`, `archived`, `draft`.
`previousStatus` | string |
`dateFrom` | string | First day of the statement period
`dateTo` | string | Last day of the statement period
`grandTotalAmount` | float | Grand total of the statement
`filterParametersJson` | object | Parameters of the filter used to generate the statement
`lastEmailedOn` | string | `null` when the statement was never emailed
`statusChangedOn` | string |
`creationSource` | string |
`createdBy` | object | Has a `userId` and a `name`. `null` when an automation created the statement.
`insertedOn` | string |
`updatedOn` | string |

`financeDataJson`, `summaryDataJson` and `expenses` are always `null` in this list. Read one statement to get them.

Statements are sorted by `id`, descending, so the newest come first.

```json
{
  "status": "success",
  "result": [
    {
      "id": 1,
      "accountId": 123,
      "statementName": "owner-statement-test-1",
      "invoiceName": "33",
      "status": "new",
      "previousStatus": null,
      "dateFrom": "2026-08-01",
      "dateTo": "2026-08-31",
      "grandTotalAmount": 37681.75,
      "filterParametersJson": {
        "listingMapIds": [
          40160,
          40161
        ],
        "fromDate": "2026-08-01",
        "toDate": "2026-08-31",
        "statuses": [
          "new",
          "modified"
        ],
        "dateType": "arrivalDate"
      },
      "financeDataJson": null,
      "summaryDataJson": null,
      "expenses": null,
      "lastEmailedOn": "2026-09-02 09:30:00",
      "statusChangedOn": "2026-09-01 10:00:00",
      "creationSource": "manual",
      "createdBy": {
        "userId": 7,
        "name": "Jane Doe"
      },
      "insertedOn": "2026-09-01 10:00:00",
      "updatedOn": "2026-09-02 09:30:00"
    }
  ],
  "count": 1,
  "limit": 100,
  "offset": 0,
  "defaultReportingCurrency": "USD",
  "grandTotalAmountSum": 37681.75
}
```
