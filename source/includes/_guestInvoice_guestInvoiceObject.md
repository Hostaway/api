## Guest invoice object

```json
{
	"id": 1,
	"accountId": 1,
	"listingMapId": 1,
	"channelId": 2000,
	"reservationId": 2,
	"guestAutoInvoiceId": null,
	"assigneeUserId": null,
	"supervisorUserId": null,
	"createdByUserId": null,
	"type": "reservationCharge",
	"dueDate": "2021-08-22 12:54:00",
	"title": "invoice title",
	"description": "invoice description",
	"paymentTerms": "payment terms",
	"paymentInstructions": "payment instructions",
	"invoiceGuestNote": "invoice guest note",
	"totalAmount": 20,
	"excludeTotalPrice": 0,
	"currency": "USD",
	"color": "#444444",
	"paymentStatus": "awaiting",
	"paidAt": null,
	"failedAt": null,
	"reservation": null,
	"guestInvoiceLineItem": []
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`listingMapId` | yes | int |
`channelId` | yes | int |
`reservationId` | yes | int |
`guestAutoInvoiceId` | yes | int |
`assigneeUserId` | yes | int |
`supervisorUserId` | yes | int |
`createdByUserId` | yes | string |
`type` | yes | string |
`dueDate` | yes | date |
`title` | yes | string |
`description` | yes | string |
`paymentTerms` | yes | string |
`paymentInstructions` | yes | string |
`invoiceGuestNote` | yes | string |
`totalAmount` | yes | float |
`excludeTotalPrice` | yes | float |
`currency` | yes | string |
`color` | yes | string |
`paymentStatus` | yes | string |
`paidAt` | yes | date |
`failedAt` | yes | date |
`reservation` | yes | int |
`guestInvoiceLineItem` | yes | array |