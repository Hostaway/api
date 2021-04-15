## Coupon object

```json
{
    "id": 1,
    "accountId": 10490,
    "userId": null,
    "isActive": 1,
    "isExpired": 0,
    "name": "COUPON42",
    "type": "percentage",
    "amount": 5.43,
    "minimumNights": 2,
    "checkInDateStart": "2020-01-01",
    "checkInDateEnd": "2021-12-31",
    "numberOfUsesInitial": 100,
    "numberOfUsesUsed": 20,
    "validityDateStart": "2020-01-01",
    "validityDateEnd": null
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int |
`accountId` | yes | int |
`userId` | no | int |
`isActive` | yes | int |
`isExpired` | yes | int |
`name` | yes | string | Can contain only uppercase latin letters and digits
`type` | yes | int | Can be `percentage` or `flatFee`
`amount` | yes | float | Percentage or flat amount, depending on type
`minimumNights` | yes | int |
`checkInDateStart` | no | string |
`checkInDateEnd` | no | string |
`numberOfUsesInitial` | yes | int | Can be -1 if number of uses is unlimited 
`numberOfUsesUsed` | yes | int |
`validityDateStart` | no | string |
`validityDateEnd` | no | string |
