## Refund offline charge

Register a refund against a charge that was paid offline

### Request

```shell
curl --location --request POST 'https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund' \
--header 'jwt;' \
--header 'Content-type: application/json' \
--data-raw '{
    "title": "Manual refund",
    "description": "optional field",
    "amount": 100,
    "reason": "requested_by_customer",
    "isIncludeInPriceBreakdown": 0
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "title": "Manual refund",
    "description": "optional field",
    "amount": 100,
    "reason": "requested_by_customer",
    "isIncludeInPriceBreakdown": 0
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
    "title": "Manual refund",
    "description": "optional field",
    "amount": 100,
    "reason": "requested_by_customer",
    "isIncludeInPriceBreakdown": 0
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"title\": \"Manual refund\", \"description\": \"optional field\", \"amount\": 100, \"reason\": \"requested_by_customer\", \"isIncludeInPriceBreakdown\": 0}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund")
  .method("POST", body)
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
    "title": "Manual refund",
    "description": "optional field",
    "amount": 100,
    "reason": "requested_by_customer",
    "isIncludeInPriceBreakdown": 0
})
headers = {
  'jwt': '',
  'Content-type': 'application/json'
}
conn.request("POST", "/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}/refund`

Registers a refund against a charge the guest already paid, the same way a refund is registered
per charge from the dashboard. Use it to record money you returned to the guest yourself, so that
the reservation's paid and refunded totals stay correct.

This endpoint covers charges that were paid offline — the ones you create with
[Create offline charge](#create-offline-charge). Charges paid with `credit_card_online` or
`payment_link` are not supported here, because refunding those means returning money through the
payment provider.

Fields `title` and `amount` are mandatory. Fields `description`, `reason` and
`isIncludeInPriceBreakdown` are optional.

Send `amount` as a positive number. The refund is stored as a separate charge of type `refund`
carrying the negative value, and the original charge is left in place.

The charge being refunded must be of type `charge` and in status `paid`. The `amount` cannot be
greater than the part of that charge which is still refundable, so a charge can be refunded in
several steps until its full amount is reached.

Possible values for field `reason`: `requested_by_customer`, `duplicate`, `fraudulent`. Any other
value is stored as `requested_by_customer`.

Field `isIncludeInPriceBreakdown` accepts `0` or `1` and defaults to `0`. Set it to `1` to have the
refund reflected in the reservation price breakdown.

### Response

The created refund charge, or an error response.

```json
{
  "status": "success",
  "result": {
    "id": 2,
    "listingMapId": 142792,
    "reservationId": 16140478,
    "autopaymentId": null,
    "type": "refund",
    "title": "Manual refund",
    "description": null,
    "currency": "USD",
    "paymentMethod": "cash",
    "amount": -100,
    "capturedAmount": 0,
    "status": "succeeded",
    "paymentProvider": "offline",
    "paymentProviderMessage": null,
    "paymentProviderInvoiceId": null,
    "paymentProviderChargeId": null,
    "scheduledDate": null,
    "chargeDate": "2026-09-23 09:25:36",
    "holdReleaseDate": null,
    "isManual": 1,
    "autoChargeId": null,
    "triggerEvent": null,
    "triggerTimeDelta": 0,
    "flatFee": 0,
    "percentageFee": 0,
    "refundInfo": {
      "id": 1,
      "chargeId": 2,
      "refundedChargeId": 1,
      "reason": "requested_by_customer",
      "isIncludeInPriceBreakdown": 0
    },
    "transactions": []
  }
}
```
