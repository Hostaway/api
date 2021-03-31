## Get Owner Statement by id

Get Owner Statement data by id

### Request

```shell
curl --request GET \
  --url 'https://api.hostaway.com/v1/ownerStatement/1' \
  --header 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' \
  --header 'cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/ownerStatement/1",
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

xhr.open("GET", "https://api.hostaway.com/v1/ownerStatement/1");
xhr.setRequestHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/ownerStatement/1")
  .get()
  .addHeader("authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/ownerStatement/1"

headers = {
    'authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    'cache-control': "no-cache",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/ownerStatement/{ownerStatementId}`

### Response

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | string | Account ID
`statementName` | yes | string | Name of owner statement
`invoiceName` | yes | int | Nam of invoice
`filterParametersJson` | yes | array | Parameters of filter used to generate owner statement financial data
`summaryDataJson` | yes | array | Financial summary data
`financeDataJson` | yes | object | Financial data with reservations
`propertyManagerName` | yes | string |
`propertyManagerEmail` | yes | string |
`propertyManagerAddress` | yes | string |
`propertyOwnerName` | yes | string |
`propertyOwnerEmail` | yes | string |
`propertyOwnerAddress` | yes | string |
`grandTotalFormulaName` | yes | string |
`grandTotalAmount` | yes | float |
`notes` | yes | string |
`insertedOn` | yes | string |
`updatedOn` | yes | string |
`expenses` | yes | array | Array of expenses
`accessByUsers` | yes | array | Array of user IDs that have access to the statement

```json
{
  "status": "success",
  "result": {
    "id": 1,
    "accountId": "123",
    "statementName": "owner-statement-test-1",
    "invoiceName": "33",
    "filterParametersJson": {
      "listingMapIds": [
        40269,
        40270
      ],
      "quickDate": "mtd",
      "fromDate": "2021-03-01",
      "toDate": "2021-03-19",
      "statuses": [
        "new",
        "modified"
      ],
      "dateType": "arrivalDate",
      "tags": [
        123,
        456
      ],
      "channelIds": [
        2005,
        2008
      ],
      "columns": [
        "numberOfNights",
        "listingName",
        "channelName",
        "OwnerReportTwo",
        "id",
        "guestName"
      ],
      "summaryDataFormulaNames": [
        "ownerPayout",
        "pmCommission",
        "rentalRevenue",
        "totalGuestFees",
        "kamilTestFormula"
      ]
    },
    "summaryDataJson": [
      {
        "formulaName": "ownerPayout",
        "totalValue": 37681.7531
      },
      {
        "formulaName": "pmCommission",
        "totalValue": 0
      },
      {
        "formulaName": "rentalRevenue",
        "totalValue": 27477.7531
      },
      {
        "formulaName": "totalGuestFees",
        "totalValue": 1600
      },
      {
        "formulaName": "kamilTestFormula",
        "totalValue": 10244
      }
    ],
    "financeDataJson": {
      "columns": [
        {
          "name": "baseRate",
          "title": "Base rate",
          "valueType": "money"
        },
        {
          "name": "pmCommission",
          "title": "PM Commission",
          "valueType": "money"
        },
        {
          "name": "id",
          "title": "Reservation ID",
          "valueType": "number"
        },
        {
          "name": "guestName",
          "title": "Guest name",
          "valueType": "string"
        },
        {
          "name": "channelName",
          "title": "Channel name",
          "valueType": "string"
        },
        {
          "name": "status",
          "title": "Reservation status",
          "valueType": "string"
        },
        {
          "name": "paymentMethod",
          "title": "Payment method",
          "valueType": "string"
        },
        {
          "name": "isPaid",
          "title": "Paid",
          "valueType": "string"
        },
        {
          "name": "arrivalDate",
          "title": "Arrival date",
          "valueType": "string"
        },
        {
          "name": "departureDate",
          "title": "Departure date",
          "valueType": "string"
        },
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
          "name": "rentalRevenue",
          "title": "Rental revenue",
          "valueType": "money"
        },
        {
          "name": "ownerPayout",
          "title": "Owner payout",
          "valueType": "money"
        },
        {
          "name": "anotherformula",
          "title": "anotherformula",
          "valueType": "money"
        },
        {
          "name": "someFormulaUpdate",
          "title": "someFormulaUpdate",
          "valueType": "money"
        },
        {
          "name": "someFormulaUpdateNew",
          "title": "someFormulaUpdateNew",
          "valueType": "money"
        },
        {
          "name": "anotherFormulai",
          "title": "anotherFormulai",
          "valueType": "money"
        },
        {
          "name": "oneMoreFormula",
          "title": "oneMoreFormula",
          "valueType": "money"
        },
        {
          "name": "testListingFormula",
          "title": "testListingFormula",
          "valueType": "money"
        },
        {
          "name": "OwnerReportTwo",
          "title": "OwnerReportTwo",
          "valueType": "money"
        },
        {
          "name": "testFormulaToCheckIsOverride",
          "title": "testFormulaToCheckIsOverride",
          "valueType": "money"
        },
        {
          "name": "kamilTestFormula",
          "title": "kamilTestFormula",
          "valueType": "money"
        },
        {
          "name": "kamiltestformulatwo",
          "title": "kamiltestformulatwo",
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
          "name": "additionalCleaningFee",
          "title": "Additional cleaning fee",
          "valueType": "money"
        },
        {
          "name": "parkingFee",
          "title": "Parking fee",
          "valueType": "money"
        },
        {
          "name": "towelChangeFee",
          "title": "Towel change fee",
          "valueType": "money"
        },
        {
          "name": "midstayCleaningFee",
          "title": "Midstay cleaning fee",
          "valueType": "money"
        },
        {
          "name": "roomRequestFee",
          "title": "Room request fee",
          "valueType": "money"
        },
        {
          "name": "reservationChangeFee",
          "title": "Reservation change fee",
          "valueType": "money"
        },
        {
          "name": "checkinFee",
          "title": "Checkin fee",
          "valueType": "money"
        },
        {
          "name": "lateCheckoutFee",
          "title": "Late checkout fee",
          "valueType": "money"
        },
        {
          "name": "otherFees",
          "title": "Other fees",
          "valueType": "money"
        },
        {
          "name": "creditCardFee",
          "title": "Credit Card fee",
          "valueType": "money"
        },
        {
          "name": "kitchenLinenFee",
          "title": "Kitchen Linen fee",
          "valueType": "money"
        },
        {
          "name": "linenPackageFee",
          "title": "Linen Package fee",
          "valueType": "money"
        },
        {
          "name": "transferFee",
          "title": "Transfer fee",
          "valueType": "money"
        },
        {
          "name": "wristbandFee",
          "title": "Wristband fee",
          "valueType": "money"
        },
        {
          "name": "extraBedsFee",
          "title": "Extra Beds fee",
          "valueType": "money"
        },
        {
          "name": "serviceFee",
          "title": "Service fee",
          "valueType": "money"
        },
        {
          "name": "bedLinenFee",
          "title": "Bed Linen fee",
          "valueType": "money"
        },
        {
          "name": "bookingFee",
          "title": "Booking fee",
          "valueType": "money"
        },
        {
          "name": "petFee",
          "title": "Pet fee",
          "valueType": "money"
        },
        {
          "name": "skiPassFee",
          "title": "Ski Pass fee",
          "valueType": "money"
        },
        {
          "name": "tourismFee",
          "title": "Tourism fee",
          "valueType": "money"
        },
        {
          "name": "childrenExtraFee",
          "title": "Children Extra fee",
          "valueType": "money"
        },
        {
          "name": "resortFee",
          "title": "Resort fee",
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
          "name": "shareholderDiscount",
          "title": "Shareholder discount",
          "valueType": "money"
        },
        {
          "name": "lastMinuteDiscount",
          "title": "Last minute discount",
          "valueType": "money"
        },
        {
          "name": "employeeDiscount",
          "title": "Employee discount",
          "valueType": "money"
        },
        {
          "name": "otherSpecialDiscount",
          "title": "Other special discount",
          "valueType": "money"
        },
        {
          "name": "damageDeposit",
          "title": "Damage deposit",
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
          "name": "couponDiscount",
          "title": "Coupon discount",
          "valueType": "money"
        },
        {
          "name": "couponName",
          "title": "Coupon name",
          "valueType": "string"
        },
        {
          "name": "paymentServiceProcessingFees",
          "title": "Payment service processing fees",
          "valueType": "money"
        },
        {
          "name": "subTotalPrice",
          "title": "Sub total price",
          "valueType": "money"
        },
        {
          "name": "reservationDate",
          "title": "Reservation date",
          "valueType": "string"
        },
        {
          "name": "resortFeeAirbnb",
          "title": "Resort fee Airbnb",
          "valueType": "money"
        },
        {
          "name": "managementFeeAirbnb",
          "title": "Management fee Airbnb",
          "valueType": "money"
        },
        {
          "name": "communityFeeAirbnb",
          "title": "Community fee Airbnb",
          "valueType": "money"
        },
        {
          "name": "linenFeeAirbnb",
          "title": "Linen fee Airbnb",
          "valueType": "money"
        },
        {
          "name": "nights",
          "title": "Number of nights",
          "valueType": "number"
        },
        {
          "name": "numberOfGuests",
          "title": "Number of guests",
          "valueType": "number"
        }
      ],
      "rows": [],
      "currency": null,
      "totals": [
        "Totals"
      ]
    },
    "propertyManagerName": "Demo Hostaway22",
    "propertyManagerEmail": "demo22@hostaway.com",
    "propertyManagerAddress": "Khreshchatyk street, 922",
    "propertyOwnerName": "22",
    "propertyOwnerEmail": "demo33@hostaway.com",
    "propertyOwnerAddress": "22",
    "grandTotalFormulaName": "OwnerReportTwo",
    "grandTotalAmount": "3.0000",
    "notes": "12343",
    "insertedOn": "2021-03-16 20:28:47",
    "updatedOn": "2021-03-31 12:40:38",
    "expenses": [
      {
        "id": 9,
        "listingMapId": null,
        "reservationId": null,
        "expenseDate": "2020-01-01",
        "concept": "test",
        "amount": 3
      }
    ],
    "accessByUsers": [
      123,
      456
    ]
  }
}
```
