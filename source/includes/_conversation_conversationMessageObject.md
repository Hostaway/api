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
    "attachments": [
      {
        "accountId": 10450,
        "listingMapId": null,
        "reservationId": 2,
        "taskId": null,
        "name": "download.jpeg",
        "url": "https://www.image.com/img.jpeg",
        "isPublic": 1,
        "communicationId": null,
        "conversationMessageId": 3,
        "extension": "jpeg",
        "mimeType": "image/jpeg",
        "isImage": null,
        "id": 6
      }
    ],
    "insertedOn": "2018-07-16 10:12:52",
    "updatedOn": "2018-07-16 10:12:52",
    "id": 326
}
```

Property | Required | Type                       | Description
-------- | -------- |----------------------------| ----------- 
`id` | yes | int                        | Identifier of conversation object
`accountId` | yes | int                        | Identifier of account
`listingMapId` | yes | int                        | Identifier of listing object.
`reservationId` | no | int                        | Identifier of reservation object
`conversationId` | yes | int                        | Identifier of conversation object
`communicationId` | no | int                        | Identifier of communication
`airbnbThreadMessageId` | no | string                     | reference to channel conversation/thread
`body` | yes | string                     | message contents
`communicationType` | yes | string                     | communication gateway (email / channel / sms / whatsapp)
`status` | no | string                     | message status (awaiting, cancelled_by_user, cancelled_by_system, sent, paused, failed)
`isIncoming` | no | bool                       | is incoming message
`isSeen` | no | bool                       | is message seen
`sentUsingHostaway` | no | bool                       | is message sent from hostaway dashboard
`hash`: | no | string                     | message checksum
`listingTimeZoneName` | no | string                     | Listing time zone name
`communicationEvent` | no | string                     | Event triggered communication if any
`communicationTimeDelta` | no | int                        | Communication time delta
`communicationApplyListingTimeZone` | no | int                        | 1 or 0
`communicationAlwaysTrigger` | no | int                        | 1 or 0
`date` | no | date (YYYY-MM-DD HH:MM:SS) | the message scheduled date
`sentChannelDate` | no | date (YYYY-MM-DD HH:MM:SS) | the message send to channel date
`attachments` | no | array                      | attachments of this message. Each item is an [attachment object](#attachment-object).
`insertedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message inserted on
`updatedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the message updated on

### Attachment object

Each item in the `attachments` array describes a single file attached to the message.

Property | Type | Description
-------- | ---- | -----------
`id` | int | Identifier of the attachment
`accountId` | int | Identifier of account
`listingMapId` | int | Identifier of listing object
`reservationId` | int | Identifier of reservation object
`taskId` | int | Identifier of task object, if the attachment belongs to a task
`conversationMessageId` | int | Identifier of the conversation message the attachment belongs to
`communicationId` | int | Identifier of communication
`name` | string | Original file name
`url` | string | Download URL for the file. For private attachments (`isPublic` = 0) this is a temporary link — see the TTL note below.
`extension` | string | File extension (e.g. `jpeg`)
`mimeType` | string | MIME type of the file (e.g. `image/jpeg`)
`isImage` | bool | Whether the attachment is an image
`isPublic` | bool | Whether the attachment is publicly accessible. `0` means the attachment is private.

<aside class="warning">
For <strong>private</strong> attachments (<code>isPublic</code> = 0), the <code>url</code> field is a temporary link that expires <strong>7 days</strong> after it is generated. Do not store the URL itself for long-term use — once it expires you must re-fetch the message (or its conversation) to obtain a freshly generated URL. If you need to keep the file, download it from the URL and store the file on your side before it expires.
</aside>
