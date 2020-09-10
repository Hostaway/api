## Calendar day object

```json
{
    "id": 46253,
    "date": "2017-07-15",
    "isAvailable": 0,
    "isProcessed": 1,
    "status": "reserved",
    "price": 225,
    "minimumStay": 1,
    "maximumStay": 1125,
    "closedOnArrival": null,
    "closedOnDeparture": null,
    "note": null,
    "countAvailableUnits": null,
    "availableUnitsToSell": null,
    "countPendingUnits": null,
    "countBlockingReservations": null,
    "countBlockedUnits": null,
    "desiredUnitsToSell": null,
    "reservations": [
        {
            "id": 13,
            "listingMapId": 40160,
            "channelId": 2001,
            "channelName": "airbnb",
            "reservationId": "10450-40160-thread313906227-9586017324",
            "externalPropertyId": null,
            "externalRatePlanId": null,
            "externalUnitId": null,
            "externalRuid": null,
            "manualIcalId": null,
            "manualIcalName": null,
            "isProcessed": 1,
            "isManuallyChecked": 0,
            "isInstantBooked": 0,
            "hasPullError": 0,
            "reservationDate": "2017-06-10 10:41:10",
            "pendingExpireDate": null,
            "guestName": "Andrew Peterson",
            "guestFirstName": "Andrew",
            "guestLastName": "Peterson",
            "guestExternalAccountId": "84497323",
            "guestCity": "Austin",
            "guestCountry": "US",
            "guestEmail": "mail@test.com",
            "guestPicture": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.jpg?aki_policy=profile_small",
            "numberOfGuests": 1,
            "adults": 1,
            "children": null,
            "infants": null,
            "pets": null,
            "arrivalDate": "2017-07-15",
            "departureDate": "2017-07-16",
            "previousArrivalDate": null,
            "previousDepartureDate": null,
            "checkInTime": null,
            "checkOutTime": null,
            "nights": 1,
            "phone": "+75125551212",
            "totalPrice": 267,
            "taxAmount": null,
            "channelCommissionAmount": null,
            "hostawayCommissionAmount": null,
            "cleaningFee": null,
            "securityDepositFee": null,
            "isPaid": null,
            "ccName": null,
            "ccNumberEndingDigits": null,
            "ccExpirationYear": null,
            "ccExpirationMonth": null,
            "cvc": null,
            "paymentMethod": null,
            "stripeGuestId": null,
            "stripeMessage": null,
            "currency": "USD",
            "status": "new",
            "hostNote": null,
            "guestNote": null,
            "comment": null
        }
    ]
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`date` | yes | date | 
`isAvailable` | no | bool | 
`isProcessed` | no | bool | 
`status` | no | string | List of acceptable statuses can be found here: https://api.hostaway.com/dictionary/calendarDay
`price` | no | float | 
`minimumStay` | no | int | 
`maximumStay` | no | int | 
`closedOnArrival` | no | bool | 
`closedOnDeparture` | no | bool | 
`note` | no | string |
`countAvailableUnits` | no | int | Number of total available units (only for multi unit listing)
`availableUnitsToSell` | no | int | Number of available units to sell (only for multi unit listing)
`countPendingUnits` | no | int | Number of pending reservations (only for multi unit listing)
`countBlockingReservations` | no | int | Number of blocking reservations (only for multi unit listing)
`countBlockedUnits` | no | int | Number of blocked units (only for multi unit listing)
`desiredUnitsToSell` | no | int |    
`reservations` | no | array | 
