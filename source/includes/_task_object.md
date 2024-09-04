## Task object

```json
{
	"id": 1,
	"listingMapId": null,
	"channelId": null,
	"reservationId": null,
	"autoTaskId": null,
	"assigneeUserId": null,
	"canBePickedByGroupId": null,
	"supervisorUserId": null,
	"createdByUserId": null,
	"isUpdatedManually": 0,
	"checklistTemplateId": null,
	"reservationUnitId": 0,
	"title": "Task title",
	"description": null,
	"canStartFrom": "2023-07-01 00:00:00",
	"canStartFromListingTime": "2023-07-01 00:00:00",
	"canStartFromEvent": "arrival",
	"canStartFromEventDelta": 0,
	"shouldEndBy": "2023-07-30 00:00:00",
	"shouldEndByListingTime": "2023-07-30 00:00:00",
	"shouldEndByEvent": "departure",
	"shouldEndByEventDelta": 0,
	"status": "pending",
	"resolutionNote": null,
	"feedbackScore": null,
	"feedbackNote": null,
	"startedAt": null,
	"confirmedAt": null,
	"completedAt": null,
	"priority": null,
	"cost": null,
	"costCurrency": null,
	"costDescription": null,
	"color": null,
	"expense": null,
	"rank": 0,
	"checklistItems": [],
	"customFieldValue": [],
	"categoriesMap": null
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`listingMapId` | no | int | Identifier of listing object
`channelId` | no | int | Identifier of the channel object. Please check here for valid channel values: [Channels](#reservation-channels) 
`reservationId` | no | int | Identifier of reservation object
`autoTaskId` | no | int | Identifier of auto task object
`assigneeUserId` | no | int | Identifier of assignee user object
`canBePickedByGroupId` | no | int | Identifier of group object
`supervisorUserId` | no | int | Identifier of supervisor user object
`createdByUserId` | no | int | Identifier of user object
`isUpdatedManually` | no | int | Whether task is updated manually from dashboard
`checklistTemplateId` | no | int | Identifier of checklist template object
`reservationUnitId` | no | int | Identifier of reservation unit object
`title` | yes | string | Title
`description` | no | string | Description
`canStartFrom` | no | date | Start time
`canStartFromListingTime` | no | date | Start time in listing time zone
`canStartFromEvent` | no | string | If task is created from auto-task by event (`arrival`, `departure`, `previousArrival`, `previousDeparture`)
`canStartFromEventDelta` | no | int | Event delta in hours
`shouldEndBy` | no | date | End time
`shouldEndByListingTime` | no | date | End time in listing time zone
`shouldEndByEvent` | no | string | If task is created from auto-task by event (`arrival`, `departure`, `previousArrival`, `previousDeparture`)
`shouldEndByEventDelta` | no | int | Event delta in hours
`status` | no | string | Can be one of the following: `pending`, `confirmed`, `inProgress`, `completed`, `cancelled`
`resolutionNote` | no | string | Resolution note
`feedbackScore` | no | int | Feedback score
`feedbackNote` | no | string | Feedback note
`startedAt` | no | date | Time when task was started (`inProgress` status)
`confirmedAt` | no | date | Time when task was confirmed
`priority` | no | int | Priority
`cost` | no | float | Cost
`costCurrency` | no | string | Cost currency
`costDescription` | no | string | Cost description
`color` | no | string | Color in hex format (#000000)
`expense` | no | array | Array of expenses (if any)
`rank` | no | int | Rank
`checklistItems` | no | array | Checklist items (if any)
`customFieldValue` | no | array | Custom fields
`categoriesMap` | no | array | 1 - cleaning, 2 - maintenance, 3 - check-in, 4 - check-out, 5 - back office, 6 - other

