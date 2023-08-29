## Guest auto payment auto charge object

```json
{
  "id": 1,
  "accountId": 10498,
  "guestAutoInvoiceId": 34591,
  "type": "charge",
  "title": "Test guest auto charge reservation",
  "description": null,
  "triggerEvent": "reservation",
  "triggerTimeDelta": 2,
  "paymentMethod": "credit_card_online",
  "paymentProvider": "stripe",
  "flatFee": null,
  "percentageFee": 33,
  "isRestOfPay": 0,
  "insertedOn": "2023-07-31 10:17:00",
  "updatedOn": "2023-07-31 10:17:00"
}
```

Property | Required | Type     | Description
-------- | -------- |----------| ----------- 
`id` | yes | int      | Hostaway auto payment auto charge ID
`accountId` | yes | int      | Account ID
`guestAutoInvoiceId` | yes | int      | Hostaway auto payment ID
`type` | yes | string   | Type of charge (charge or preAuth)
`title` | yes | string   | Charge title
`description` | yes | string   | Charge description
`triggerEvent` | yes | string   | Trigger event of autopayment (reservation, arrival, departure)
`triggerTimeDelta` | yes | string   |  Time delta in hours
`paymentMethod` | yes | string   | Payment method (credit_card_online, credit_card, bank_transfer etc.)
`paymentProvider` | yes | string   | Payment provider (stripe, braintree, authorizeNet, offline)
`flatFee` | yes | int      | Flat fee amount if the charge is flat
`percentageFee` | yes | int      | Percentage amount if the charge is percentage
`isRestOfPay` | yes | int      | Flag that indicates if auto charge should charge the rest of the reservation amount
