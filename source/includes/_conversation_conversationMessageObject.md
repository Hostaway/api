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
    "communicationType": "email",
    "status": "sent",
    "isIncoming": 0,
    "isSeen": 0,
    "sentUsingHostaway": 0,
    "hash": "299855b5f40bd4e65fd83e5382a571e2",
    "listingTimeZoneName": "Europe/Moscow",
    "communicationEvent": null,
    "communicationTimeDelta": null,
    "communicationApplyListingTimeZone": null,
    "communicationAlwaysTrigger": null,
    "date": "2018-07-16 10:12:52",
    "sentChannelDate": "2018-07-16 10:13:52",
    "insertedOn": "2018-07-16 10:12:52",
    "updatedOn": "2018-07-16 10:12:52",
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
`communicationType` | yes | string | communication gateway (email / channel / sms / whatsapp)
`status` | no | string | message status (awaiting, cancelled_by_user, cancelled_by_system, sent, paused, failed)
`isIncoming` | no | bool | is incoming message
`isSeen` | no | bool | is message seen
`sentUsingHostaway` | no | bool | is message sent from hostaway dashboard
`hash`: | no | string | message checksum
`listingTimeZoneName` | no | string | Listing time zone name
`communicationEvent` | no | string | Event triggered communication if any
`communicationTimeDelta` | no | int | Communication time delta
`communicationApplyListingTimeZone` | no | int | 1 or 0
`communicationAlwaysTrigger` | no | int | 1 or 0
`date` | no | date (YYYY-MM-DD HH:MM:SS) | the message scheduled date
`sentChannelDate` | no | date (YYYY-MM-DD HH:MM:SS) | the message send to channel date
`insertedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message inserted on
`updatedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message updated on
