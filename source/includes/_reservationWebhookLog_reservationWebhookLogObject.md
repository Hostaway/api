## Reservation webhook log object

```json
{
    "id": 2,
    "accountId": 10450,
    "listingMapId": 40160,
    "reservationId": 1234,
    "reservationWebhookId": 89,
    "currentReservationStatus": "new",
    "previousReservationStatus": null,
    "url": "https://webhook.site/6e73ba6d-789e-ds4d64-9f68-a2e1134d1c6f3",
    "login": "my_login",
    "password": "****",
    "responseStatus": 200,
    "responseBody": ""
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of reservationWebhookLog object
`accountId` | yes | int | Identifier of account object
`listingMapId` | yes | int | Identifier of listing object
`reservationId` | yes | int | Identifier of reservation object
`reservationWebhookId` | yes | int | Identifier of Reservation Webhook
`currentReservationStatus` | yes | string | Reservation status
`previousReservationStatus` | no | string | Previous reservation status
`url` | yes | string | URL
`login` | no | string | Login for basic auth (if login and password provided we'll send basic auth header)
`password` | no | string | Password for basic auth
`responseStatus` | yes | int | Response status
`responseBody` | no | string | Response body