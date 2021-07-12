## Guest invoice charge object

```json
{
	"id": 1,
	"accountId": 1,
	"listingMapId": 1,
	"reservationId": 1,
	"guestInvoiceId": 1,
	"stripeInvoiceId": null,
	"type": "charge",
	"title": "Charge",
	"amount": 10,
	"paidAmount": null,
	"currency": "USD",
	"status": "wait",
	"paymentProvider": null,
	"paymentProviderMessage": null,
	"paymentProviderChargeId": null,
	"scheduledAttemptDate": null,
	"chargeDate": null,
	"holdReleaseDate": null,
	"isManualAttempt": 0,
	"isManual": 0,
	"guestAutoInvoiceAutoChargeId": null,
	"triggerEventtriggerEvent": null,
	"triggerTimeDelta": 0,
	"flatFee": null,
	"percentageFee": null,
	"isSync": 0,
	"guestInvoiceChargeTransaction": []
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
`type` | yes | string |
`title` | yes | string |
`amount` | yes | float |
`paidAmount` | yes | float |
`currency` | yes | string |
`status` | yes | string |
`paymentProvider` | yes | string |
`paymentProviderMessage` | yes | string |
`paymentProviderChargeId` | yes | string |
`scheduledAttemptDate` | yes | date |
`chargeDate` | yes | date |
`holdReleaseDate` | yes | date |
`isManualAttempt` | yes | int |
`isManual` | yes | int |
`guestAutoInvoiceAutoChargeId` | yes | int |
`triggerEventtriggerEvent` | yes | string |
`triggerTimeDelta` | yes | int |
`flatFee` | yes | int |
`percentageFee` | yes | int |
`isSync` | yes | int |
`guestInvoiceChargeTransaction` | yes | array |
