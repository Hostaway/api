## Review object

```json
{
	"id": 1,
	"accountId": 1,
	"listingMapId": 1,
	"reservationId": 1,
	"autoReviewId": null,
	"timeDelta": null,
	"scheduledDateTime": null,
	"channelId": 2005,
	"type": "guest-to-host",
	"status": "awaiting",
	"rating": null,
	"externalReviewId": null,
	"externalReservationId": null,
	"publicReview": null,
	"privateFeedback": null,
	"revieweeResponse": null,
	"isRevieweeRecommended": null,
	"isCancelled": 0,
	"autoReviewTemplateId": null,
	"reviewCategory": [],
	"departureDate": "2021-05-11 22:00:00",
	"arrivalDate": "2021-05-06 08:00:00",
	"listingName": "Beautiful and cozy apartment close to city center",
	"guestName": "Andrew Peterson"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`listingMapId` | yes | int |
`reservationId` | yes | int |
`autoReviewId` | yes | int |
`timeDelta` | yes | int |
`scheduledDateTime` | yes | int |
`channelId` | yes | int |
`type` | yes | string |
`status` | yes | string |
`raiting` | yes | int |
`externalReviewId` | yes | int |
`externalReservationId` | yes | int |
`publicReview` | yes | int |
`privateFeedback` | yes | int |
`revieweeResponse` | yes | string |
`isRevieweeRecommended` | yes | int |
`isCancelled` | yes | int |
`autoReviewTemplateId` | yes | int |
`departureDate` | yes | date |
`arrivalDate` | yes | date |
`listingName` | yes | string |
`guestName` | yes | string |