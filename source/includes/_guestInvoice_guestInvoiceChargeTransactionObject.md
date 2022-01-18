## Guest invoice charge transaction object

```json
{
	"id": 1,
	"accountId": 1,
	"reservationId": 1,
	"guestInvoiceId": 1,
	"guestInvoiceChargeId": 1,
	"stripeInvoiceId": "in_***",
	"amount": 10,
	"currency": "USD",
	"status": "paid",
	"paymentProvider": "stripe",
	"paymentProviderMessage": "Charged successfully. Payment Provider charge ID: ch_***",
	"balanceTransactionId": "txn_***",
	"insertedOn": "2021-12-24 08:24:21",
	"updatedOn": "2022-01-10 09:06:14"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`listingMapId` | yes | int |
`reservationId` | yes | int |
`guestInvoiceId` | yes | int |
`stripeInvoiceId` | yes | string |
`amount` | yes | float |
`currency` | yes | string |
`status` | yes | string |
`paymentProvider` | yes | string |
`paymentProviderMessage` | yes | string |
`balanceTransactionId` | yes | string |
