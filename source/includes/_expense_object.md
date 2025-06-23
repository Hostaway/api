## Expenses&Extras Object

```json
{
  "id": 123,
  "accountId": 10638,
  "ownerStatementId": 6,
  "listingMapId": 123,
  "reservationId": 456,
  "expenseDate": "2021-10-22",
  "concept": "test",
  "type": "extra",
  "amount": 123,
  "isDeleted": 0,
  "ownerUserId": null,
  "insertedOn": "2022-01-01 00:00:00",
  "updatedOn": "2022-01-01 00:00:00",
  "ownerStatementIds": [
    6
  ],
  "categories": [],
  "categoriesNames": [],
  "attachments": [],
  "listingName": null,
  "guestName": null,
  "ownerStatementNames": [
    "test"
  ],
  "ownerStatementExpenseId": 2
}
```

Property | Required | Type   | Description
-------- |----------|--------| ----------- 
`id` | yes      | int    |
`accountId` | yes      | int    | Account ID
`ownerStatementId` | no       | int    | Related owner statement ID
`listingMapId` | no       | int    | ID of listing map
`reservationId` | no       | int    | ID of the reservation
`expenseDate` | yes      | string | Date of expense
`concept` | yes      | string | Reason of expense, max 255 characters
`amount` | yes      | float  | Financial amount of expense
`type` | no       | string | Type of item. Possible values: `extra` or `expense`. Ignored, will set automatically based on the amount value.
`isDeleted` | yes      | int    | IF 1 then it is marked as deleted and not considered in owner statements
`ownerUserId` | no       | int    |
`insertedOn` | yes      | string |
`updatedOn` | yes      | string |
`ownerStatementIds` | no       | array  |
`categories` | no       | array  |
`categoriesNames` | no       | array  |
`attachments` | no       | array  |
`listingName` | no       | string |
`guestName` | no       | string | Related reservation ID guest name
`ownerStatementNames` | no       | array  | List of owner statement names that contain the expense
`ownerStatementExpenseId` | yes      | int    | Just a copy of id field
