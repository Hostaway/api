## Conversation object

```json
{
    "accountId": 10450,
    "listingMapId": 10450,
    "reservationId": 2,
    "type": "host-guest-email",
    "recipientEmail": "mail@test.com",
    "recipientName": "John Smith",
    "recipientPicture": null,
    "hostEmail": "c-55107f63824f6e631b3d7bc73cdd7281@host.dev.hostaway.info",
    "guestEmail": "c-a62f4669949b0ada2a34d42acdab0b0a@guest.dev.hostaway.info",
    "hasUnreadMessages": 0,
    "messageSentOn": "2018-06-28 11:24:40",
    "messageReceivedOn": null,
    "conversationMessages": [
        {
            "id": 326,
            "accountId": 10450,
            "listingMapId": 40160,
            "reservationId": 2,
            "conversationId": 1406,
            "communicationId": null,
            "channelThreadMessageId": null,
            "body": "hello guest",
            "isIncoming": 0,
            "isSeen": 0,
            "sentUsingHostaway": 1,
            "hash": "299855b5f40bd4e65fd83e5382a571e2",
            "listingTimeZoneName": "Europe/Berlin",
            "communicationEvent": null,
            "communicationTimeDelta": null,
            "communicationApplyListingTimeZone": null,
            "communicationAlwaysTrigger": null,
            "insertedOn": "2018-06-28 11:24:40",
            "updatedOn": "2018-06-28 11:24:40"
        }
    ],
    "Reservation": {
        "listingMapId": 40160,
        "listingName": "",
        "channelId": 2000,
        "source": "reservation",
        "channelName": "direct",
        "reservationId": "10450-40160-2000-1089253764",
        "hostawayReservationId": "2",
        "channelReservationId": "10450-40160-2000-1089253764",
        "externalPropertyId": null,
        "externalRatePlanId": null,
        "externalUnitId": null,
        "assigneeUserId": null,
        "customerIcalId": null,
        "customerIcalName": null,
        "isProcessed": 0,
        "isManuallyChecked": 0,
        "isInstantBooked": 0,
        "reservationDate": "2018-05-18 12:20:42",
        "pendingExpireDate": null,
        "guestName": "John Smith",
        "guestFirstName": null,
        "guestLastName": null,
        "guestExternalAccountId": null,
        "guestZipCode": null,
        "guestAddress": null,
        "guestCity": "Melbourne",
        "guestCountry": "Australia",
        "guestEmail": "mail@test.com",
        "guestPicture": null,
        "guestRecommendations": 0,
        "guestTrips": 0,
        "guestWork": null,
        "isGuestIdentityVerified": 0,
        "isGuestVerifiedByEmail": 0,
        "isGuestVerifiedByWorkEmail": 0,
        "isGuestVerifiedByFacebook": 0,
        "isGuestVerifiedByGovernmentId": 0,
        "isGuestVerifiedByPhone": 0,
        "isGuestVerifiedByReviews": 0,
        "numberOfGuests": 1,
        "adults": null,
        "children": null,
        "infants": null,
        "pets": null,
        "arrivalDate": "2018-06-13",
        "departureDate": "2018-06-14",
        "previousArrivalDate": null,
        "previousDepartureDate": null,
        "checkInTime": 8,
        "checkOutTime": 22,
        "nights": 1,
        "phone": null,
        "totalPrice": 50.32,
        "taxAmount": null,
        "channelCommissionAmount": null,
        "hostawayCommissionAmount": null,
        "cleaningFee": 40.32,
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
        "cancellationDate": null,
        "cancelledBy": null,
        "hostNote": null,
        "guestNote": null,
        "doorCode": null,
        "doorCodeVendor": null,
        "doorCodeInstruction": null,
        "comment": null,
        "confirmationCode": null,
        "isStarred": 0,
        "isArchived": 0,
        "isPinned": 0,
        "insertedOn": "2018-05-18 12:20:42",
        "updatedOn": "2018-06-28 11:24:40",
        "id": 2
    },
    "id": 1406
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of conversation object
`listingMapId` | yes | int | Identifier of listing object.
`reservationId` | yes | string | Identifier of reservation object
`type` | yes | string | conversation type
`recipientEmail` | no | string | recipient email
`recipientPicture` | no | string | recipient picture Url
`hostEmail` | yes | string | host email
`guestEmail` | yes | string | guest email 
`hasUnreadMessages` | no | bool | is there unread messages in conversation or not  
`messageSentOn` | no | date (YYYY-MM-DD HH:MM:SS) | last message sent moment
`messageReceivedOn` | no | date (YYYY-MM-DD HH:MM:SS) | last message received moment
`conversationMessages` | no | array of conversationMessages | the latest message in conversation  
`Reservation` | no | Reservation Object | the reservation related to the conversation
