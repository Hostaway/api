## Update offline charge

Update offline charge

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}' \
--header 'jwt;' \
--header 'Content-type: application/json' \
--data-raw '{
    "title": "optional for update",
    "description": "optional field",
    "amount": 100, 
    "paymentMethod": "cash", 
    "status": "paid",
    "scheduledDate": "2023-08-15 18:56:49"
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_PUTFIELDS =>'{
    "title": "My charge",
    "description": "optional field",
    "amount": 100, 
    "paymentMethod": "cash", 
    "status": "paid",
    "scheduledDate": "2023-08-15 18:56:49"
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
    "title": "My charge",
    "description": "optional field",
    "amount": 100,
    "paymentMethod": "cash",
    "status": "paid",
    "scheduledDate": "2023-08-15 18:56:49"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"title\": \"My charge\", \"description\": \"optional field\", \"amount\": 100, \"paymentMethod\": \"cash\", \"status\": \"paid\", \"scheduledDate\": \"2023-08-15 18:56:49\"}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}")
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
    "title": "My charge",
    "description": "optional field",
    "amount": 100, 
    "paymentMethod": "cash", 
    "status": "paid",
    "scheduledDate": "2023-08-15 18:56:49"
})
headers = {
  'jwt': '',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/guestPayments/charges/{reservationId:\d+}/{chargeId:\d+}`

A charge object with the desired updated fields should be provided in the request body.

Only charges in the status `awaiting` can be updated with this API request.

Charges with `credit_card_online` payment method can’t be updated via API regardless of the status.

All fields are optional for update

Possible values for field `status`: `paid`,`cancelled`.

Possible values for field `paymentMethod`: credit_card,vcc,cash,paypal,venmo,bank_transfer,bank_check,ota,other.

### Response

Updated charge object

```json
{
  "status": "success",
  "result": {
    "id": 1,
    "listingMapId": 142792,
    "reservationId": 16140478,
    "autopaymentId": null,
    "type": "charge",
    "title": "My charge",
    "description": null,
    "currency": "USD",
    "paymentMethod": "cash",
    "amount": 100,
    "capturedAmount": 0,
    "status": "paid",
    "paymentProvider": "offline",
    "paymentProviderMessage": null,
    "paymentProviderInvoiceId": null,
    "paymentProviderChargeId": null,
    "scheduledDate": "2023-08-15 18:56:49",
    "chargeDate": "2023-08-21 09:25:36",
    "holdReleaseDate": null,
    "isManual": 0,
    "autoChargeId": null,
    "triggerEvent": null,
    "triggerTimeDelta": 0,
    "flatFee": 0,
    "percentageFee": 0,
    "transactions": []
  }
}
```
