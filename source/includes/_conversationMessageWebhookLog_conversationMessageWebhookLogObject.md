## ConversationMessage webhook log object

```json
{
    "id": 2,
    "accountId": 10450,
    "listingMapId": "40160",
    "reservationId": "1234",
    "conversationMessageId": 89,
    "conversationMessageWebhookId": 129,
    "url": "https://webhook.site/6e73ba6d-789e-ds4d64-9f68-a2e1134d1c6f3",
    "login": "my_login",
    "password": "****",
    "responseStatus": "200",
    "responseBody": "200"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of conversationMessageWebhookLog object
`accountId` | yes | int | Identifier of account object
`listingMapId` | yes | int | Identifier of listing object
`reservationId` | yes | int | Identifier of reservation object
`conversationMessageId` | yes | int | Identifier of ConversationMessage object
`conversationMessageWebhookId` | yes | int | Identifier of ConversationMessageWebhook object
`url` | yes | string | URL
`login` | no | string | Login for basic auth (if login and password provided we'll send basic auth header)
`password` | no | string | Password for basic auth
`responseStatus` | yes | int | Response status
`responseBody` | no | int | Response body