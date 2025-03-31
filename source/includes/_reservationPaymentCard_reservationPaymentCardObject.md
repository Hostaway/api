## Reservation payment card object

```json
{
    "id": 57,
    "userId": null,
    "reservationId": 154242,
    "ccName": "Mikhail Ivanov",
    "ccNumberEndingDigits": "4242",
    "ccExpirationYear": "2024",
    "ccExpirationMonth": "12",
    "ccCvc": "351",
    "isDefault": 1,
    "isVirtual": 1,
    "isAddedByGuest": null,
    "paymentProviderMessage": "",
    "paymentProvider": null
}
```

| Property                 | Required | Type   | Description                                                     |
|--------------------------|----------|--------|-----------------------------------------------------------------|
| `id`                     | yes      | int    | Unique ID of the reservation on Hostaway                        |
| `userId`                 | no       | int    | Unique ID of the user on Hostaway if the card was added by user |
| `reservationId`          | yes      | int    | Unique ID of the reservation on Hostaway                        |
| `ccName`                 | yes      | string | Card holder name                                                |
| `ccNumberEndingDigits`   | no       | string | CC number ending digits                                         |
| `ccExpirationYear`       | no       | string | CVC expiration year                                             |
| `ccExpirationMonth`      | no       | string | CVC expiration month                                            |
| `ccCvc`                  | no       | string | CVC code                                                        |
| `isDefault`              | yes      | int    | Default payment card or not                                     |
| `isAddedByGuest`         | no       | int    | Credit card was added by Guest                                  |
| `paymentProviderMessage` | no       | string | Payment provider error messages if we get an error              |
| `paymentProvider`        | no       | string | Payment provider name (stripe, braintree, authorizeNet)         |
| `isVirtual`              | no       | int    | Is it a virtual credit card or not.                             |

