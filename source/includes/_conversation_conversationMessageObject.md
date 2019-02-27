## ConversationMessage object

```json
{
    "accountId": 10450,
    "listingMapId": 40160,
    "reservationId": 2,
    "conversationId": 1406,
    "communicationId": null,
    "airbnbThreadMessageId": "a541c5a8-2f8b-11e9-bbf9-ce45bc2917f3",
    "channelId": 2005,
    "channelThreadMessageId": "a541c5a8-2f8b-11e9-bbf9-ce45bc2917f3",
    "body": "hello guest",
    "bookingcomSubthreadId": "9db7aae4-8233-58bb-8d0a-aa0d676d4b5d",
    "inReplyTo": "a424bf68-2f8b-11e9-bca5-cbade2f6e12e",
    "bookingcomReplyOptions": [
        {
            "type": "PlainText",
            "caption": "",
            "input_value": "",
            "mandatory": 1,
            "payload": "",
            "name": "property_response",
            "options": []
        }
    ],
    "bookingcomSelectedOptions": [],
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
`airbnbThreadMessageId` | no | string | reference to channel conversation/thread message (same as channelThreadMessageId) for Airbnb reservations
`channelId` | no | int | conversation message channel id
`channelThreadMessageId` | no | string | reference to channel conversation/thread message
`body` | no | string | message contents
`bookingcomSubthreadId` | no | string | reference to booking.com thread
`inReplyTo` | no | string | channelThreadMessageId of the message the current message is considered as a reply for
`bookingcomReplyOptions` | no | array of ReplyOptions | array of available reply options
`bookingcomSelectedOptions` | no | array of ReplyOptions | array of selected reply options
`isIncoming` | no | bool | is incoming message
`isSeen` | no | bool | is message seen
`sentUsingHostaway` | no | bool | is message sent from hostaway dashboard
`hash`: | no | string | message checksum
`listingTimeZoneName` | no | string | Listing time zone name
`communicationEvent` | no | string | Event triggered communication if any
`communicationTimeDelta` | no | int | Communication time delta
`communicationApplyListingTimeZone` | no | int | 1 or 0
`communicationAlwaysTrigger` | no | int | 1 or 0
`date` | no | date (YYYY-MM-DD HH:MM:SS) | the message date
`insertedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message inserted on
`updatedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message updated on

## ReplyOption object

```json
{
    
  "type": "PlainText",
  "caption": "",
  "input_value": "",
  "mandatory": 1,
  "payload": "",
  "name": "property_response",
  "options": []
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`type` | yes | string | Type of reply option
`caption` | no | string | Caption
`input_value` |  no | string | Option input
`mandatory` |  yes | int | Is input_value mandatory
`payload` |  no | string | Reply option's payload
`name` |  no | string | Name
`options` |  no | array | Array of reply options

