## Finance Standard Report

Retrieve standard fields report

### Request

```shell
curl --request POST \
  --url 'https://api.hostaway.com/v1/finance/report/standard' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'Cache-control: no-cache' \
  --form 'listingMapIds[0]=123' \
  --form 'fromDate=2019-01-30' \
  --form 'toDate=2019-02-25' \
  --form 'dateType=arrivalDate' \
  --form 'channelIds[0]=2007' \
  --form 'statuses[0]=new' \
  --form 'format=csv' \
  --form 'sortBy=arrivalDate' \
  --form 'sortOrder=asc' \
  --form 'delimiter=tab'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/finance/report/standard",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_POSTFIELDS => array(
  'listingMapIds' => array(123),
  'fromDate' => '2019-01-30',
  'toDate' => '2019-02-25',
  'dateType' => 'arrivalDate',
  'channelIds' => array(2007),
  'statuses' => array('new'),
  'format' => 'csv',
  'sortBy' => 'arrivalDate',
  'sortOrder' => 'asc',
  'delimiter' => 'tab'
  ),
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
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
var data = new FormData();
data.append("listingMapIds[0]", "123");
data.append("fromDate", "2019-01-30");
data.append("toDate", "2019-02-25");
data.append("dateType", "arrivalDate");
data.append("channelIds[0]", "2007");
data.append("statuses[0]", "new");
data.append("format", "csv");
data.append("sortBy", "arrivalDate");
data.append("sortOrder", "asc");
data.append("delimiter", "tab");

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/finance/report/standard");
xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = new MultipartBody.Builder().setType(MultipartBody.FORM)
  .addFormDataPart("listingMapIds[0]", "123")
  .addFormDataPart("fromDate", "2019-01-30")
  .addFormDataPart("toDate", "2019-02-25")
  .addFormDataPart("dateType", "arrivalDate")
  .addFormDataPart("channelIds[0]", "2007")
  .addFormDataPart("statuses[0]", "new")
  .addFormDataPart("format", "csv")
  .addFormDataPart("sortBy", "arrivalDate")
  .addFormDataPart("sortOrder", "asc")
  .addFormDataPart("delimiter", "tab")
  .build();
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/finance/report/standard")
  .method("POST", body)
  .addHeader("Content-type", "application/json")
  .addHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .build();
Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/finance/report/standard"

headers = {
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'Cache-control': "no-cache",
    }

payload = 'listingMapIds%5B0%5D=123&fromDate=2019-01-30&toDate=2019-02-25&dateType=arrivalDate&channelIds%5B0%5D=2007&statuses%5B0%5D=new&format=csv&sortBy=arrivalDate&sortOrder=asc&delimiter=tab'

response = requests.request("POST", url, headers=headers, data = payload)

print(response.text)
```

`POST https://api.hostaway.com/v1/finance/report/standard`

Parameters can be sent using POST form data:

Parameter | Required | Type | Description
-------- | -------- | ---- | ----------- 
`listingMapIds[]` | no | int[] | Array of Listing IDs 
`fromDate` | no | date string | Y-m-d
`toDate` | no | date string | Y-m-d
`dateType` | no | float | Can be one of the following: arrivalDate, departureDate, reservationDate
`channelIds[]` | no | int[] | Array of channel ids
`statuses[]` | no | string[] | Array of reservation statuses
`format` | no | string | csv
`sortBy` | no | string | Field to sort by
`sortOrder` | no | string | Can be one of the following: asc, desc
`delimiter` | no | string | Can be one of the following: comma, tab

### Response

CSV text with report data

```text
"Reservation ID"	Channel	Status	Arrival	Departure	Listing	Owner	Description	Amount
724558	direct	new	2019-02-01	2019-02-02	"(60636) Great place"	john1	"Damage deposit"	7000
724558	direct	new	2019-02-01	2019-02-02	"(60636) Great place"	john1	"Guest channel fee"	0
```
