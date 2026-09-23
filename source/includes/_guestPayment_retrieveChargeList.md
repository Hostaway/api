## Get guest charges list

Get charges list

### Request

```shell
curl --request GET \
  --url https://api.hostaway.com/v1/guestPayments/charges?reservationId=175239893 \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw' \
  --header 'Cache-control: no-cache'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/guestPayments/charges?reservationId=175239893",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
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

xhr.open("GET", "https://api.hostaway.com/v1/guestPayments/charges");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/guestPayments/charges")
  .get()
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import requests

url = "https://api.hostaway.com/v1/guestPayments/charges"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjg1M2FkNzU4YjI1M2Y0ZmFhZjk2MjIxODcyMDIzMDYyNjg2MjVhMjU2MTRkOWM1NTllYzM4ODJmZDVmZjYxYzNhNzY1NjI3NzUyZjE4ZTkiLCJpYXQiOjE2MTk1OTQ3MDgsIm5iZiI6MTYxOTU5NDcwOCwiZXhwIjoxNjgyNjY2NzA4LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6MX0.pOQxtj9ur2GTBtLHnDyFdNkXGLQKxPR6kA2z6-eVv_GsCmb1-kWh1FPD3SY-ADVYwbsna_QrT0mRU4_wZNwC7WO3s9LUFUDwkGaQOMDvJO4nWZodvNZZuhAY96QzOZ7JBwpW_NlYk5mQ_WVPvbYr9RRpw-nUB8JDXOwbrph4nuw",
    'Cache-control': "no-cache"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

`GET https://api.hostaway.com/v1/guestPayments/charges`

Query Parameter | Required | Type   | Description
--------- | -------- |--------| -----------
`reservationId` | no | int | A single reservation.
`reservationIds` | no | int[] | Restrict to charges raised against these reservations. See [Filtering by reservation and listing](#filtering-by-reservation-and-listing).
`listingMapId` | no | int | A single listing.
`listingMapIds` | no | int[] | Restrict to charges raised against these listings. See [Filtering by reservation and listing](#filtering-by-reservation-and-listing).
`statuses` | no | string[] | Send as `statuses[]=paid`; a single value without brackets is ignored. Restrict to these charge statuses: `paid`, `failed`, `awaiting`, `waitingForConfirmation`, `pause`, `cancelled`, `awaitingHold`, `holdSuccess`, `holdFail`, `holdCancelled`, `captureSuccess`, `captureFail`, `holdReleased`, `holdReleasedFail`, `succeeded`, `pending`.
`types` | no | string[] | Send as `types[]=charge`; a single value without brackets is ignored. Restrict to these charge types: `charge`, `preAuth`, `refund`.
`reservationStatuses` | no | string[] | Send as `reservationStatuses[]=confirmed`. Restrict to charges whose reservation is in one of these statuses: `inquiry`, `inquiryPreapproved`, `inquiryDenied`, `inquiryTimedout`, `inquiryNotPossible`, `new`, `modified`, `confirmed`, `cancelled`, `pending`, `unconfirmed`, `awaitingPayment`, `awaitingGuestVerification`, `declined`, `expired`, `unknown`, `ownerStay`, `intend`.
`channelIds` | no | int[] | Restrict to charges whose reservation came from these channels.
`paymentMethods` | no | string[] | Restrict to these payment methods: `bank_check`, `bank_transfer`, `cash`, `credit_card`, `paypal`, `vcc`, `venmo`, `credit_card_online`, `payment_link`, `ota`, `other`. Matches the charge's own `paymentMethod`, which can be set per charge, not the reservation's.
`paymentProvider` | no | string | Payment provider (`stripe`, `braintree`, `authorizeNet`, `offline`).
`cardProviders` | no | string[] | Restrict by the payment method type of the card the charge was taken on, as reported by the payment provider; `card` is the default. That card must still be the reservation default, so a charge taken on a card the guest has since replaced is not matched.
`cardBrand` | no | string[] | Restrict by the brand of the card the charge was taken on: `american_express`, `carte_blanche`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos`, `elo`, `girocard`, `jcb`, `laser`, `maestro`, `mastercard`, `solo`, `switch`, `unionpay`, `visa`, `unknown`. That card must still be the reservation default, so a charge taken on a card the guest has since replaced is not matched.
`startDate` | no | date | Lower bound (inclusive) for the scheduled charge date. Time of day is ignored.
`endDate` | no | date | Upper bound (inclusive) for the scheduled charge date. Time of day is ignored.
`chargeDateStart` | no | datetime | Lower bound (inclusive) for the scheduled charge date, keeping time of day.
`chargeDateEnd` | no | datetime | Upper bound (inclusive) for the scheduled charge date, keeping time of day.
`refundDateStart` | no | date | Lower bound (inclusive) for the refund date. Also restricts the result to refunds.
`refundDateEnd` | no | date | Upper bound (inclusive) for the refund date. Also restricts the result to refunds.
`arrivalDateFrom` | no | date | Lower bound (inclusive) for the reservation arrival date.
`arrivalDateTo` | no | date | Upper bound (inclusive) for the reservation arrival date.
`departureDateFrom` | no | date | Lower bound (inclusive) for the reservation departure date.
`departureDateTo` | no | date | Upper bound (inclusive) for the reservation departure date.
`limit` | no | int | Maximum number of items in the list. Defaults to 100 and is capped at 500.
`sortBy` | no | string | Column to order by. Overrides the default ordering described below.
`sortOrder` | no | string | `asc` or `desc`, applied to `sortBy`.
`offset` | no | int | Number of items to skip from beginning of the list.

All filters combine as AND, so every additional parameter can only narrow the result. `count` is the total number of matching charges, ignoring `limit` and `offset`.

Send list parameters with brackets — `statuses[]=paid`. `reservationIds`, `listingMapIds`, `channelIds`, `paymentMethods`, `reservationStatuses`, `cardProviders` and `cardBrand` additionally accept a comma-separated string (`?paymentMethods=credit_card,cash`) or a single value without brackets; both are read as a list, surrounding spaces are trimmed and blank entries are ignored. `statuses` and `types` accept the bracket form only — anything else is ignored there.

Without `sortBy`, results are **not** ordered newest-first: upcoming charges come first in ascending order of scheduled date, and past charges follow them in descending order. Use `sortBy=chargeDate&sortOrder=desc` to page through history.

### Filtering by reservation and listing

`reservationIds` and `listingMapIds` each take a list of ids and accept three wire formats:

```
# Repeated, with brackets
GET /v1/guestPayments/charges?reservationIds[]=41288001&reservationIds[]=41288002

# Comma-separated
GET /v1/guestPayments/charges?reservationIds=41288001,41288002

# A single id, without brackets
GET /v1/guestPayments/charges?reservationIds=41288001
```

Each parameter accepts at most **500** ids and a longer list fails the request with **400**; `limit` still bounds the rows returned. The limit applies per parameter, so one request may carry 500 `reservationIds` and 500 `listingMapIds`, and entries are counted before duplicates are removed — a list of 501 entries is rejected even when they resolve to fewer distinct ids. Every entry has to be a plain positive integer: a non-numeric, negative, zero, leading-zero or out-of-range entry fails the request with **400** and names the parameter, rather than being dropped. Blank entries are ignored and do not count toward the limit, so a cleared filter (`?listingMapIds[]=`) and a trailing comma are accepted. A list that ends up empty applies no restriction, exactly like omitting the parameter.

The singular `reservationId` / `listingMapId` and their plural forms combine as AND, so sending both a single id and a list that does not contain it returns nothing.

Ids belonging to another account match nothing. A real id from another account and an id that exists nowhere are indistinguishable in the response.

<aside class="notice">
<code>listingMapId</code> on a charge is the listing the charge was raised against, copied from the reservation when the charge was created. It is not updated when the reservation is later moved to another listing, so charges raised before a move keep the old listing. Filter on <code>reservationIds</code> when you need every charge for a stay regardless of listing moves.
</aside>


### Response

An array of guest charges objects.

```json
{
    "status": "success",
    "result": [
        {
          "id": 1,
          "listingMapId": 40100,
          "reservationId": 1435239,
          "autopaymentId": 34231,
          "type": "charge",
          "title": "Charge",
          "description": "Charge description",
          "currency": "USD",
          "paymentMethod": "credit_card_online",
          "amount": 10,
          "capturedAmount": null,
          "status": "awaiting",
          "paymentProvider": null,
          "paymentProviderMessage": null,
          "paymentProviderInvoiceId": null,
          "paymentProviderChargeId": null,
          "scheduledDate": null,
          "chargeDate": null,
          "holdReleaseDate": null,
          "isManual": 0,
          "autoChargeId": null,
          "triggerEvent": null,
          "triggerTimeDelta": 0,
          "flatFee": null,
          "percentageFee": null,
          "transactions": []
        }
    ],
    "count": 1,
    "offset": null
}
```
