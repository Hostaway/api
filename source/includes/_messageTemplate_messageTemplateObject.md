## Message template object

```json
{
    "id": 2,
    "accountId": 10450,
    "listingMapId": "40160",
    "channelId": "1",
    "messageTemplateGroupId": "1",
    "name": "greeting",
    "description": "greeting of guest",
    "message": "Hello {{guest_name}}",
    "color": "1"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of conversation object
`accountId` | yes | int | Identifier of account object
`listingMapId` | no | int | Identifier of listing object.
`channelId` | no | int | Identifier of channel object. <br> Please check here for valid channel values: [Channels](#reservation-channels)
`messageTemplateGroupId` | no | int | Identifier of message template group object
`name` | yes | string | template name
`description` | no | string | description of message template
`message` | no | string | template message
`color` | no | int | color number 