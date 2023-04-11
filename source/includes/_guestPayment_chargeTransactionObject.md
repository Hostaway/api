## Guest charge transaction object

```json
{
	"id": 1,
	"reservationId": 1,
	"paymentProviderInvoiceId": "in_***",
	"amount": 10,
	"currency": "USD",
	"status": "paid",
	"paymentProvider": "stripe",
	"paymentProviderMessage": "Charged successfully. Payment Provider charge ID: ch_***",
	"balanceTransactionId": "txn_***"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Hostaway transaction ID
`reservationId` | yes | int | Hostaway reservation ID
`paymentProviderInvoiceId` | yes | string | Payment provider Invoice ID
`amount` | yes | float | Amount of payment
`currency` | yes | string | Currency (USD, EUR, etc.)
`status` | yes | string | Status of payment (paid, failed)
`paymentProvider` | yes | string | Payment provider (stripe, braintree, authorizeNet)
`paymentProviderMessage` | yes | string | Payment provider status message
`balanceTransactionId` | yes | string | Payment provider balance transaction
