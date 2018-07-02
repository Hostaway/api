## ConversationMessage object

```json
{
    "accountId": 10450,
    "listingMapId": 40160,
    "reservationId": 2,
    "conversationId": 1406,
    "communicationId": null,
    "airbnbThreadMessageId": null,
    "body": "hello guest",
    "isIncoming": 0,
    "isSeen": 0,
    "sentUsingHostaway": 0,
    "hash": "299855b5f40bd4e65fd83e5382a571e2",
    "listingTimeZoneName": null,
    "communicationEvent": null,
    "communicationTimeDelta": null,
    "communicationApplyListingTimeZone": null,
    "communicationAlwaysTrigger": null,
    "id": 326
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of conversation object
`accountId` | yes | int | Identifier of account
`listingMapId` | yes | int | Identifier of listing object.
`reservationId` | no | int | Identifier of reservation object
`conversationId` | yes | int | Identifier of conversation object
`communicationId` | no | int | Identifier of communication
`airbnbThreadMessageId` | no | string | reference to channel conversation/thread
`body` | yes | string | message contents
`isIncoming` | no | bool | is incoming message
`isSeen` | no | bool | is message seen
`sentUsingHostaway` | no | bool | is message sent from hostaway dashboard
`hash`: | no | string | message checksum
`listingTimeZoneName` | no | string | name of Listing time zone  
`communicationEvent` | no | date (YYYY-MM-DD HH:MM:SS) | last message sent moment
`communicationTimeDelta` | no | date (YYYY-MM-DD HH:MM:SS) | last message received moment
`communicationApplyListingTimeZone` | no | array of conversationMessages | the latest message in conversation  
`communicationAlwaysTrigger` | no | Reservation Object | the reservation related to the conversation
