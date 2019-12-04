## Reservation fee object

```json
{
    "id": 123,
    "accountId": 456,
    "listingMapId": 111,
    "reservationId": 222,
    "name": "Test",
    "amount": 5.12345,
    "currency": "EUR",
    "percentage": 10,
    "isIncluded": 0,
    "isPerNight": 1,
    "isPerPerson": 0,
    "isImported": 1,
    "insertedOn": "2019-12-02 17:16:28",
    "updatedOn": "2019-12-02 17:16:28"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`accountId` | yes | int | ID of related `Account`
`listingMapId` | yes | int | ID of related `ListingMap`
`reservationId` | yes | int | ID of related `Reservation`
`name` | yes | string | Fee name, different set of fee names is used for each channel
`amount` | no | decimal | Fee amount
`currency` | no | string | Currency code
`percentage` | no | int | Fee percentage (0-100) from reservation total amount
`isIncluded` | no | int | 1 - amount already included to reservation total amount, 0 - not included
`isPerNight` | no | int | 1 - amount is applied per-night, 0 - per reservation
`isPerPerson` | no | int | 1 - amount is applied for each guests, 0 - for all guests
`isImported` | no | int | 1 - reservation fee was created during initial reservations import, 0 - was created by channel
`insertedOn` | yes | datetime | Date and time when fee was inserted
`updatedOn` | yes | datetime | Date and time when fee was updated
