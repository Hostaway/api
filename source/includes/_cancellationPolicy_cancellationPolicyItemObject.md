## Cancellation policy item object

```json
{
  "id": "1",
  "cancellationPolicyId": "2",
  "refundAmount": "100",
  "refundType": "percentage",
  "refundField": "totalPrice",
  "timeDelta": "-1209600",
  "event": "arrival"
}
```

Property | Required | Type   | Description
-------- | -------- |--------| ----------- 
`id` | yes | int    | Identifier of cancellation policy item object
`cancellationPolicyId` | yes | int    | Identifier of related cancellation policy object
`refundAmount` | yes | int | Refund amount
`refundType` | yes | string | possible values: percentage, flat
`refundField` | yes | string | possible values: totalPrice
`timeDelta` | yes | int | time delta in seconds of event type (negative or positive) (please check event value)
`event` | yes | string | possible values: reservation, arrival
