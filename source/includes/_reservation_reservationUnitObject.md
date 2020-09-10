## Reservation unit object

```json
{
    "id": 123,
    "reservationId": 111,
    "listingUnitId": 222,
    "externalReservationId": "123",
    "externalReservationUnitId": "342",
    "guestName": "Michael",
    "guestFirstName": "Michael",
    "guestLastName": "Park",
    "numberOfGuests": 1,
    "adults": 1,
    "children": 0,
    "infants": 0,
    "pets": 0,
    "totalPrice": 300
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`reservationId` | yes | int | ID of related `Reservation`
`listingUnitId` | yes | int | ID of related `ListingUnit`
`externalReservationId` | no | string | External reservation ID
`externalReservationUnitId` | no | string | External reservation unit ID
`guestName` | yes | string | Guest name
`guestFirstName` | no | string | Guest first name
`guestLastName` | no | string | Guest last name
`numberOfGuests` | yes | int | Number of guests
`adults` | yes | int | Number of adults
`children` | yes | int | Number of children
`infants` | yes | int | Number of infants
`pets` | no | int | Number of pets
`totalPrice` | yes | float | Total price of this reservation unit