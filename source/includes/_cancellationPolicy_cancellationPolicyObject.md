## Cancellation policy object

```json
{
  "id": 2,
  "accountId": 1,
  "name": "Flexible",
  "cancellationPolicyItem": [
    {
      "id": "1",
      "cancellationPolicyId": "2",
      "refundAmount": "100",
      "refundType": "percentage",
      "refundField": "totalPrice",
      "timeDelta": "-1209600",
      "event": "arrival"
    },
    {
      "id": "2",
      "cancellationPolicyId": "2",
      "refundAmount": "50",
      "refundType": "percentage",
      "refundField": "totalPrice",
      "timeDelta": "-604800",
      "event": "arrival"
    }
  ]
}
```

Property | Required | Type   | Description
-------- | -------- |--------| ----------- 
`id` | yes | int    | Identifier of cancellation policy object
`accountId` | yes | int    | Identifier of account object
`name` | yes | string | Cancellation policy name
`cancellationPolicyItem` | yes | object | Cancellation policy items (please check cancellation policy item object)


