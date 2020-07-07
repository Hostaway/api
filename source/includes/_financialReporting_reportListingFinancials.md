## Listing Financials Report

Retrieve Listing Financials Report

### Request

```shell
curl --request POST \
  --url 'https://api.hostaway.com/v1/finance/report/listingFinancials' \
  --header 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'cache-control: no-cache' \
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
  CURLOPT_URL => "https://api.hostaway.com/v1/finance/report/listingFinancials",
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

xhr.open("POST", "https://api.hostaway.com/v1/finance/report/listingFinancials");
xhr.setRequestHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("cache-control", "no-cache");

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
  .url("https://api.hostaway.com/v1/finance/report/listingFinancials")
  .method("POST", body)
  .addHeader("Content-Type", "application/json")
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .build();
Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/finance/report/listingFinancials"

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
    }

payload = 'listingMapIds%5B0%5D=123&fromDate=2019-01-30&toDate=2019-02-25&dateType=arrivalDate&channelIds%5B0%5D=2007&statuses%5B0%5D=new&format=csv&sortBy=arrivalDate&sortOrder=asc&delimiter=tab'

response = requests.request("POST", url, headers=headers, data = payload)

print(response.text)
```

`POST https://api.hostaway.com/v1/finance/report/listingFinancials`

Parameters can be sent using POST form data:

Parameter | Required | Type | Description
-------- | -------- | ---- | ----------- 
`listingMapIds[]` | no | int[] | Array of Listing IDs 
`fromDate` | no | date string | Y-m-d
`toDate` | no | date string | Y-m-d
`dateType` | no | float | Can be one of the following: arrivalDate, departureDate, reservationDate
`channelIds[]` | no | int[] | Array of channel ids
`statuses[]` | no | string[] | Array of reservation statuses
`format` | yes | string | csv or json
`sortBy` | no | string | Field to sort by
`sortOrder` | no | string | Can be one of the following: asc, desc
`delimiter` | no | string | Can be one of the following: comma, tab

### Response

CSV/JSON with report data

```text
"Listing name","Total guest fees","Total tax","Accommodation fee","PM Commission","Owner payout",pmCommissionAbc,"Base rate","Price for extra person","Cleaning fee value","City / Tourism tax","Hotel tax","Lodging tax","Room tax","Sales tax","Transient occupancy tax","VAT / GST","Other taxes","Property rent tax","Guest per person per night tax","Guest stay tax","Guest nightly tax","Guest channel fee","Host channel fee","Monthly discount","Weekly discount","Damage deposit","Cancellation fee","Cancellation payout","Cancellation host fee","Sub total price"
"(123) Great place",400,0,1150,150,1150,43,750,0,400,0,0,0,0,0,0,0,0,75,10,10,10,0,0,0,0,7000,0,0,0,1150
"(123) A building - Calm place Otteveny",0,0,267,53.4,267,43,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,267
Totals,400,0,1417,203.4,1417,86,1017,0,400,0,0,0,0,0,0,0,0,75,10,10,10,0,0,0,0,7000,0,0,0,1417

```

```json
{
    "status": "success",
    "result": {
        "columns": [
            {
                "name": "listingName",
                "title": "Listing name",
                "valueType": "string"
            },
            {
                "name": "totalGuestFees",
                "title": "Total guest fees",
                "valueType": "money"
            },
            {
                "name": "totalTax",
                "title": "Total tax",
                "valueType": "money"
            },
            {
                "name": "accommodationFee",
                "title": "Accommodation fee",
                "valueType": "money"
            },
            {
                "name": "pmCommission",
                "title": "PM Commission",
                "valueType": "money"
            },
            {
                "name": "ownerPayout",
                "title": "Owner payout",
                "valueType": "money"
            },
            {
                "name": "pmCommissionAbc",
                "title": "pmCommissionAbc",
                "valueType": "money"
            },
            {
                "name": "baseRate",
                "title": "Base rate",
                "valueType": "money"
            },
            {
                "name": "priceForExtraPerson",
                "title": "Price for extra person",
                "valueType": "money"
            },
            {
                "name": "cleaningFeeValue",
                "title": "Cleaning fee value",
                "valueType": "money"
            },
            {
                "name": "cityTax",
                "title": "City / Tourism tax",
                "valueType": "money"
            },
            {
                "name": "hotelTax",
                "title": "Hotel tax",
                "valueType": "money"
            },
            {
                "name": "lodgingTax",
                "title": "Lodging tax",
                "valueType": "money"
            },
            {
                "name": "roomTax",
                "title": "Room tax",
                "valueType": "money"
            },
            {
                "name": "salesTax",
                "title": "Sales tax",
                "valueType": "money"
            },
            {
                "name": "transientOccupancyTax",
                "title": "Transient occupancy tax",
                "valueType": "money"
            },
            {
                "name": "vat",
                "title": "VAT / GST",
                "valueType": "money"
            },
            {
                "name": "otherTaxes",
                "title": "Other taxes",
                "valueType": "money"
            },
            {
                "name": "propertyRentTax",
                "title": "Property rent tax",
                "valueType": "money"
            },
            {
                "name": "guestPerPersonPerNightTax",
                "title": "Guest per person per night tax",
                "valueType": "money"
            },
            {
                "name": "guestStayTax",
                "title": "Guest stay tax",
                "valueType": "money"
            },
            {
                "name": "guestNightlyTax",
                "title": "Guest nightly tax",
                "valueType": "money"
            },
            {
                "name": "guestChannelFee",
                "title": "Guest channel fee",
                "valueType": "money"
            },
            {
                "name": "hostChannelFee",
                "title": "Host channel fee",
                "valueType": "money"
            },
            {
                "name": "monthlyDiscount",
                "title": "Monthly discount",
                "valueType": "money"
            },
            {
                "name": "weeklyDiscount",
                "title": "Weekly discount",
                "valueType": "money"
            },
            {
                "name": "damageDeposit",
                "title": "Damage deposit",
                "valueType": "money"
            },
            {
                "name": "cancellationFee",
                "title": "Cancellation fee",
                "valueType": "money"
            },
            {
                "name": "cancellationPayout",
                "title": "Cancellation payout",
                "valueType": "money"
            },
            {
                "name": "cancellationHostFee",
                "title": "Cancellation host fee",
                "valueType": "money"
            },
            {
                "name": "subTotalPrice",
                "title": "Sub total price",
                "valueType": "money"
            }
        ],
        "rows": [
            [
                "(123) Great place",
                400,
                0,
                1150,
                150,
                1150,
                43,
                750,
                0,
                400,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                75,
                10,
                10,
                10,
                0,
                0,
                0,
                0,
                7000,
                0,
                0,
                0,
                1150
            ],
            [
                "(123) A building - Calm place Otteveny",
                0,
                0,
                267,
                53.4,
                267,
                43,
                267,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                267
            ]
        ],
        "totals": [
            "Totals",
            400,
            0,
            1417,
            203.4,
            1417,
            86,
            1017,
            0,
            400,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            75,
            10,
            10,
            10,
            0,
            0,
            0,
            0,
            7000,
            0,
            0,
            0,
            1417
        ],
        "currency": "RUB"
    }
}
```
