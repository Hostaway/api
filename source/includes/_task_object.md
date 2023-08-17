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
`listingMapId` | no | int | 
`channelId` | no | int | 
`reservationId` | no | int | 
`autoTaskId` | no | int | 
`assigneeUserId` | no | int | 
`canBePickedByGroupId` | no | int | 
`supervisorUserId` | no | int | 
`createdByUserId` | no | int | 
`isUpdatedManually` | no | int | 
`checklistTemplateId` | no | int | 
`reservationUnitId` | no | int | 
`title` | yes | string | 
`description` | no | string | 
`canStartFrom` | no | date | 
`canStartFromListingTime` | no | date | 
`canStartFromEvent` | no | string | 
`canStartFromEventDelta` | no | int | 
`shouldEndBy` | no | date | 
`shouldEndByListingTime` | no | date | 
`shouldEndByEvent` | no | string | 
`shouldEndByEventDelta` | no | int | 
`status` | no | string | 
`resolutionNote` | no | string | 
`feedbackScore` | no | int | 
`feedbackNote` | no | string | 
`startedAt` | no | date | 
`confirmedAt` | no | date | 
`priority` | no | int | 
`cost` | no | float | 
`costCurrency` | no | string | 
`costDescription` | no | string | 
`color` | no | string | 
`expense` | no | array | 
`rank` | no | int | 
`checklistItems` | no | array | 
`customFieldValue` | no | array | 
`categoriesMap` | no | array | 
