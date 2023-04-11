## Guest charge object

```json
{
	"id": 1,
	"listingMapId": 40100,
	"reservationId": 143523935,
    "autopaymentId": 34231,
	"type": "charge",
	"title": "Accommodation payment",
    "description": "Accommodation payment description",
    "currency": "USD",
    "paymentMethod": "credit_card_online",
    "amount": 10,
    "capturedAmount": null,
	"status": "paid",
	"paymentProvider": "stripe",
	"paymentProviderMessage": "Charged successfully. Payment Provider charge ID: ch_3MveEFDdSZWWDFSS0dTZrWVI",
    "paymentProviderInvoiceId": null,
	"paymentProviderChargeId": "ch_3MveEFDdSZGFDS2S0dTZrWVI",
	"scheduledDate": "2023-04-11 11:09:44",
	"chargeDate": null,
	"holdReleaseDate": null,
	"isManual": 0,
	"autoChargeId": 22312,
	"triggerEvent": "arrival",
	"triggerTimeDelta": -72,
	"flatFee": null,
	"percentageFee": 100,
	"transactions": []
}
```

Property | Required | Type     | Description
-------- | -------- |----------| ----------- 
`id` | yes | int      | Hostaway charge ID
`listingMapId` | yes | int      | ListingMap ID
`reservationId` | yes | int      | Reservation ID
`autopaymentId` | yes | int      | Auto payment ID
`type` | yes | string   | Type of charge (charge or preAuth)
`title` | yes | string   | Charge title
`description` | yes | string   | Charge description
`currency` | yes | string   | Currency (USD, EUR etc.)
`paymentMethod` | yes | string   | Payment method (credit_card_online, credit_card, bank_transfer etc.)
`amount` | yes | float    | Amount of charge
`capturedAmount` | yes | float    | Captured amount (only for preAuth type)
`status` | yes | string   | Status of charge (awaiting, paid, failed, pause, cancelled, awaitingHold, etc.)
`paymentProvider` | yes | string   | Payment provider (stripe, braintree, authorizeNet, offline)
`paymentProviderMessage` | yes | string   | Payment provider status message
`paymentProviderInvoiceId` | yes | string   | Payment provider Invoice ID
`paymentProviderChargeId` | yes | string   | Payment provider Charge ID
`scheduledDate` | yes | datetime | Scheduled date if the payment is scheduled
`chargeDate` | yes | date     | Charge date
`holdReleaseDate` | yes | date     | Hold release date (only for preAuth type)
`isManual` | yes | int      | Is charge created manually
`autoChargeId` | yes | int      | Autocharge ID
`triggerEvent` | yes | string   | Trigger event of autopayment (reservation, arrival, departure)
`triggerTimeDelta` | yes | int      | Time delta in hours
`flatFee` | yes | int      | Flat fee amount if the charge is flat
`percentageFee` | yes | int      | Percentage amount if the charge is percentage
`transactions` | yes | array    | Array of transactions
