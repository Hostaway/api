## Custom reservation field object

```json
{
    "id": 2,
    "accountId": 10450,
    "name": "Custom field name",
    "varName": "reservation_123123",
    "possibleValues": null,
    "type": "text",
    "objectType": "reservation",
    "isPublic": 1,
    "sortOrder": 1
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of conversation object
`accountId` | yes | int | Identifier of account object
`name` | yes | int | Field name
`varName` | yes | int | Field var name
`possibleValues` | no | array | Possible values if field type Dropdown
`type` | yes | string | Custom field type
`objectType` | yes | string | Object type
`isPublic` | yes | int | Public field or not
`sortOrder` | yes | int | Sort order