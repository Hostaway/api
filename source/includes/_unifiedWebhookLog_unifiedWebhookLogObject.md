## Unified webhook log object

```json
{
    "id": 2,
    "accountId": 10450,
    "listingMapId": 40160,
    "webhookNotificationSettingId": 5,
    "isEnabled": 1,
    "url": "http://api.guestentry.com/api/hostaway/v1/43003/webhook",
    "login": "login",
    "password": "****",
    "object": "conversationMessage",
    "objectId": 123456789,
    "event": "message.received",
    "responseStatus": 200,
    "responseBody": ""
}
```

Property | Required | Type   | Description
-------- | -------- |--------| ----------- 
`id` | yes | int    | Identifier of unifiedWebhookLog object
`accountId` | yes | int    | Identifier of account object
`listingMapId` | yes | int    | Identifier of listing object
`webhookNotificationSettingId` | yes | int    | Identifier of webhook setting object
`isEnabled` | yes | int    | Webhook enable flag
`url` | yes | string | URL
`login` | no | string | Login for basic auth (if login and password provided we'll send basic auth header)
`password` | no | string | Password for basic auth
`object` | yes | string | Object type
`objectId` | yes | int    | Object identifier
`event` | yes | string | Event type
`responseStatus` | yes | int    | Response status
`responseBody` | no | string | Response body