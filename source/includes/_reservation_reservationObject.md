## Reservation object

```json
{
    "id": 13,
    "listingMapId": 40160,
    "channelId": 2001,
    "channelName": "airbnb",
    "reservationId": "10450-40160-thread313906227-9586017324",
    "hostawayReservationId": 13,
    "channelReservationId": "10450-40160-thread313906227-9586017324",      
    "externalPropertyId": null,
    "externalRatePlanId": null,
    "externalUnitId": null,
    "assigneeUserId": 1,
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
    "guestRecommendations": 5,
    "guestTrips": 10,
    "guestWork": "The company name",
    "isGuestIdentityVerified": 1,
    "isGuestVerifiedByEmail": 1,
    "isGuestVerifiedByWorkEmail": 1,
    "isGuestVerifiedByFacebook": 1,
    "isGuestVerifiedByGovernmentId": 1,
    "isGuestVerifiedByPhone": 1,
    "isGuestVerifiedByReviews": 1,    
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
    "paymentMethodGuestId": null,
    "paymentMethodMessage": null,
    "currency": "USD",
    "status": "new",
    "hostNote": null,
    "guestNote": null,
    "doorCode": "12345",
    "doorCodeVendor": "vendor",
    "doorCodeInstruction": "instruction",
    "comment": null,
    "confirmationCode": "HMP2KQ4B44",
    "isStarred": 0,
    "isArchived": 0,
    "isPinned": 0    
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`listingMapId` | yes | int | Identifier of listing object.
`channelId` | yes | int | 
`channelName` | yes | string | 
`reservationId` | yes | string | 
`hostawayReservationId` | yes | int | 
`channelReservationId` | yes | string | 
`externalPropertyId` | no | string | 
`externalRatePlanId` | no | string | 
`externalUnitId` | no | string | 
`assigneeUserId` | no | int | 
`manualIcalId` | no | string | 
`manualIcalName` | no | string | 
`isProcessed` | no | bool | 
`isManuallyChecked` | no | bool | 
`isInstantBooked` | no | bool | 
`hasPullError` | no | bool | 
`reservationDate` | no | datetime | 
`pendingExpireDate` | no | datetime | 
`guestName` | no | string | 
`guestFirstName` | no | string | 
`guestLastName` | no | string | 
`guestExternalAccountId` | no | string | 
`guestCity` | no | string | 
`guestCountry` | no | string | 
`guestEmail` | no | string | 
`guestPicture` | no | string | 
`guestRecommendations` | no | int | 
`guestTrips` | no | int | 
`guestWork` | no | string | 
`isGuestIdentityVerified` | no | bool | 
`isGuestVerifiedByEmail` | no | bool | 
`isGuestVerifiedByWorkEmail` | no | bool | 
`isGuestVerifiedByFacebook` | no | bool | 
`isGuestVerifiedByGovernmentId` | no | bool | 
`isGuestVerifiedByPhone` | no | bool | 
`isGuestVerifiedByReviews` | no | bool | 
`numberOfGuests` | no | int | 
`adults` | no | int | 
`children` | no | int | 
`infants` | no | int | 
`pets` | no | int | 
`arrivalDate` | yes | date | 
`departureDate` | yes | date | 
`previousArrivalDate` | no | date | 
`previousDepartureDate` | no | date | 
`checkInTime` | no | int | 
`checkOutTime` | no | int | 
`nights` | no | int | 
`phone` | no | string | 
`totalPrice` | no | float | 
`taxAmount` | no | float | 
`channelCommissionAmount` | no | float | 
`hostawayCommissionAmount` | no | float | 
`cleaningFee` | no | float | 
`securityDepositFee` | no | float | 
`isPaid` | no | bool | 
`ccName` | no | string | 
`ccNumberEndingDigits` | no | int | 
`ccExpirationYear` | no | int | 
`ccExpirationMonth` | no | int | 
`cvc` | no | string | 
`paymentMethod` | no | string | 
`paymentMethodGuestId` | no | string | 
`paymentMethodMessage` | no | string | 
`currency` | no | string | 
`status` | no | string | Can be one of the following: `new`, `modified`, `confirmed`, `cancelled`, `pending`, `awaitingPayment`, `declined`, `expired`, `inquiry`, `inquiryPreapproved`, `inquiryDenied`, `inquiryTimedout`, `inquiryNotPossible`
`hostNote` | no | string | 
`guestNote` | no | string | 
`doorCode` | no | string | 
`doorCodeVendor` | no | string | 
`doorCodeInstruction` | no | string | 
`comment` | no | string | 
`confirmationCode` | no | string | Airbnb confirmation code
`isStarred` | no | bool | 
`isArchived` | no | bool | 
`isPinned` | no | bool | 

