## Reservation object

```json
{
    "id": 13,
    "listingMapId": 40160,
    "channelId": 2001,
    "source": "homeawayApi",
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
    "isInitial": 0,
    "isManuallyChecked": 0,
    "isInstantBooked": 0,
    "hasPullError": 0,
    "reservationDate": "2017-06-10 10:41:10",
    "pendingExpireDate": null,
    "guestName": "Andrew Peterson",
    "guestFirstName": "Andrew",
    "guestLastName": "Peterson",
    "guestExternalAccountId": "84497323",
    "guestZipCode": "TX 78705",
    "guestAddress": "3411 Cedar St",
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
    "isDatesUnspecified": 0,
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
    "cancellationDate": null,
    "cancelledBy": null,
    "hostNote": null,
    "guestNote": null,
    "guestLocale": null,
    "doorCode": "12345",
    "doorCodeVendor": "vendor",
    "doorCodeInstruction": "instruction",
    "comment": null,
    "confirmationCode": "HMP2KQ4B44",
    "airbnbExpectedPayoutAmount": 111.12,
    "airbnbListingBasePrice": 110,
    "airbnbListingCancellationHostFee": 12.02,
    "airbnbListingCancellationPayout": 122,
    "airbnbListingCleaningFee": 1,
    "airbnbListingHostFee": 43,
    "airbnbListingSecurityPrice": 12,
    "airbnbOccupancyTaxAmountPaidToHost": 332,
    "airbnbTotalPaidAmount": 12,
    "airbnbTransientOccupancyTaxPaidAmount": 0,
    "airbnbCancellationPolicy": "moderate",
    "isStarred": 0,
    "isArchived": 0,
    "isPinned": 0,
    "customerUserId": null,
    "customFieldValues": [
        {
            "customFieldId": 167,
            "value": "Custom field value one"
        },
        {
            "customFieldId": 243,
            "value": "Custom field value two"
        }
    ]
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`listingMapId` | yes | int | Identifier of listing object.
`channelId` | yes | int | Value can be set to one of the following: `2000` for a direct reservation, `2020` for a Partner reservation
`source` | no | string
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
`guestZipCode` | no | string | 
`guestAddress` | no | string | 
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
`isDatesUnspecified` | no | int | Set to `1` in case a channel doesn't provide reservation dates. If it is `1` `arrivalDate` and `departureDate` are set to yesterday.
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
`stripeGuestId` | no | string | 
`stripeMessage` | no | string | 
`currency` | no | string | 
`status` | no | string | Can be one of the following: `new`, `modified`, `cancelled`, `ownerStay`, `pending`, `awaitingPayment`, `declined`, `expired`, `inquiry`, `inquiryPreapproved`, `inquiryDenied`, `inquiryTimedout`, `inquiryNotPossible`
`cancellationDate` | no | date | 
`cancelledBy` | no | string | Can be one of the following: `guest`, `host`
`hostNote` | no | string | 
`guestNote` | no | string | 
`guestLocale` | no | string | 
`doorCode` | no | string | 
`doorCodeVendor` | no | string | 
`doorCodeInstruction` | no | string | 
`comment` | no | string | 
`confirmationCode` | no | string | Airbnb confirmation code
`airbnbExpectedPayoutAmount` | no | float | 
`airbnbListingBasePrice` | no | float |
`airbnbListingCancellationHostFee` | no | float | 
`airbnbListingCancellationPayout` | no | float | 
`airbnbListingCleaningFee` | no | float | 
`airbnbListingHostFee` | no | float | 
`airbnbListingSecurityPrice` | no | float | 
`airbnbOccupancyTaxAmountPaidToHost` | no | float | 
`airbnbTotalPaidAmount` | no | float | 
`airbnbTransientOccupancyTaxPaidAmount` | no | float | 
`airbnbCancellationPolicy` | no | string | 
`isStarred` | no | bool | 
`isArchived` | no | bool | 
`isPinned` | no | bool | 
`guestAuthHash` | no | string |
`guestPortalUrl` | no | string |
`latestActivityOn` | no | date |
`customerUserId` | no | string |
`customFieldValues` | no | array | You should create Custom fields at the dashboard beforehand
`reservationFees` | no | array | Array of `reservationFee` objects (will be empty array if `includeResources` parameter is set to 0). 
`reservationUnit` | no | array | Array of `reservationUnit` objects (will be empty array if `includeResources` parameter is set to 0 or reservation is not multi unit). 

