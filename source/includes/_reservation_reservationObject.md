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
    "isGuestIdentityVerified": 1, // DEPRECATED
    "isGuestVerifiedByEmail": 1, // DEPRECATED
    "isGuestVerifiedByWorkEmail": 1, // DEPRECATED
    "isGuestVerifiedByFacebook": 1, // DEPRECATED
    "isGuestVerifiedByGovernmentId": 1, // DEPRECATED
    "isGuestVerifiedByPhone": 1, // DEPRECATED
    "isGuestVerifiedByReviews": 1, // DEPRECATED   
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
    "paymentMethod": null,
    "stripeGuestId": null,
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
    "originalChannel": null, // DEPRECATED
    "customerUserId": null,
    "rentalAgreementFileUrl": "https://a0.muscache.com/im/pictures/3c4d82ed-196d-493a-a43b-07fcc70d5ccd.pdf",
    "reservationAgreement": "signed",
    "remainingBalance": 4563.54,
    "insuranceStatus": "insured",
    "claimStatus": "claim_started",
    "insurancePolicyId": 6,
    "cancellationPolicyId": 9,
    "cancellationPolicy": "moderate",
    "bookingCancellationPolicy": null,
    "vrboCancellationPolicy": null,
    "marriottCancellationPolicy": null,
    "cancellationPolicyDetails": {
        "name": "Moderate",
        "channelId": 2001,
        "channelSpecificCode": "moderate",
        "longTerm": false,
        "cancellationPolicyItem": [
            {
                "refundAmount": 100,
                "refundType": "percentage",
                "refundField": "totalPrice",
                "timeDelta": -1209600,
                "event": "arrival"
            }
        ]
    },
    "hostProxyEmail": "c-123124124124@host.hostaway.info",
    "bookingcomSpecialRequests": {
        "remarks": "Late check-in, please.",
        "geniusFreebies": [
            {"code": "GF_8", "text": "Free WiFi"}
        ]
    },
    "bookingcomSmokingPreference": 0,
    "bookingcomIsGeniusMember": 1,
    "bookingcomBookerName": "Marco Rossi",
    "bookingcomBookerCompany": "Acme Travel Agency",
    "bookingcomNoShowReportedAt": "2026-07-03 14:22:07",
    "bookingcomNoShowFeeWaived": false,
    "customFieldValues": [
        {
            "customFieldId": 167,
            "value": "Custom field value one"
        },
        {
            "customFieldId": 243,
            "value": "Custom field value two"
        }
    ],
    "financeField": [
        {
            "id": 1,
            "units": 1,
            "listingFeeSettingId": null,
            "type": "fee",
            "name": "checkinFee",
            "title": "Checkin fee",
            "alias": null,
            "value": 1000,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 1,
            "isMandatory": null,
            "isQuantitySelectable": 0,
            "isDeleted": 0,
            "total": 69
        },
        {
            "id": 2,
            "units": 1,
            "listingFeeSettingId": null,
            "type": "price",
            "name": "totalPriceFromChannel",
            "title": "Total price from channel",
            "alias": null,
            "value": 1000,
            "isIncludedInTotalPrice": 1,
            "isOverriddenByUser": 1,
            "isMandatory": null,
            "isQuantitySelectable": 0,
            "isDeleted": 0,
            "total": 42
        }
    ]    
}
```

| Property                                | Required | Type     | Description                                                                                                                                                                                                                                             |
|-----------------------------------------|----------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                                    | yes      | int      | Unique ID of the reservation on Hostaway                                                                                                                                                                                                                |
| `listingMapId`                          | yes      | int      | Identifier of listing object.                                                                                                                                                                                                                           |
| `channelId`                             | yes      | int      | Identifier of the channel. Please check here for valid channel values: [Channels](#reservation-channels)                                                                                                                                                |
| `source`                                | no       | string   | You can update this field by passing `?provider` query param in the [create reservation request](#create-a-reservation)                                                                                                                                  |
| `channelName`                           | yes      | string   | Channel name  (Airbnb, Booking.com, Expedia, Vrbo etc.) Please check here for valid channel values: [Channels](#reservation-channels)                                                                                                                   |
| `reservationId`                         | yes      | string   | Reservation ID value which gets from the channel (Airbnb, Booking.com, Expedia, Vrbo etc.)                                                                                                                                                              |
| `hostawayReservationId`                 | yes      | int      | Unique ID of the reservation on Hostaway (the same value as ID)                                                                                                                                                                                         |
| `channelReservationId`                  | yes      | string   | The same value as reservationId                                                                                                                                                                                                                         |
| `externalPropertyId`                    | no       | string   |                                                                                                                                                                                                                                                         |
| `externalRatePlanId`                    | no       | string   |                                                                                                                                                                                                                                                         |
| `externalUnitId`                        | no       | string   |                                                                                                                                                                                                                                                         |
| `assigneeUserId`                        | no       | int      |                                                                                                                                                                                                                                                         |
| `manualIcalId`                          | no       | string   |                                                                                                                                                                                                                                                         |
| `manualIcalName`                        | no       | string   |                                                                                                                                                                                                                                                         |
| `isProcessed`                           | no       | bool     |                                                                                                                                                                                                                                                         |
| `isManuallyChecked`                     | no       | bool     |                                                                                                                                                                                                                                                         |
| `isInstantBooked`                       | no       | bool     |                                                                                                                                                                                                                                                         |
| `hasPullError`                          | no       | bool     |                                                                                                                                                                                                                                                         |
| `reservationDate`                       | no       | datetime |                                                                                                                                                                                                                                                         |
| `pendingExpireDate`                     | no       | datetime |                                                                                                                                                                                                                                                         |
| `guestName`                             | no       | string   |                                                                                                                                                                                                                                                         |
| `guestFirstName`                        | no       | string   | Guest first name                                                                                                                                                                                                                                        |
| `guestLastName`                         | no       | string   | Guest last name                                                                                                                                                                                                                                         |
| `guestExternalAccountId`                | no       | string   |                                                                                                                                                                                                                                                         |
| `guestZipCode`                          | no       | string   | Guest ZIP code                                                                                                                                                                                                                                          |
| `guestAddress`                          | no       | string   | Guest address                                                                                                                                                                                                                                           |
| `guestCity`                             | no       | string   | Guest city                                                                                                                                                                                                                                              |
| `guestCountry`                          | no       | string   | Guest country                                                                                                                                                                                                                                           |
| `guestEmail`                            | no       | string   | Guest email                                                                                                                                                                                                                                             |
| `guestPicture`                          | no       | string   | Guest picture                                                                                                                                                                                                                                           |
| `guestRecommendations`                  | no       | int      |                                                                                                                                                                                                                                                         |
| `guestTrips`                            | no       | int      |                                                                                                                                                                                                                                                         |
| `guestWork`                             | no       | string   |                                                                                                                                                                                                                                                         |
| `isGuestIdentityVerified`               | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByEmail`                | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByWorkEmail`            | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByFacebook`             | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByGovernmentId`         | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByPhone`                | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `isGuestVerifiedByReviews`              | no       | bool     | **DEPRECATED**                                                                                                                                                                                                                                          |
| `numberOfGuests`                        | no       | int      |                                                                                                                                                                                                                                                         |
| `adults`                                | no       | int      |                                                                                                                                                                                                                                                         |
| `children`                              | no       | int      |                                                                                                                                                                                                                                                         |
| `infants`                               | no       | int      |                                                                                                                                                                                                                                                         |
| `pets`                                  | no       | int      |                                                                                                                                                                                                                                                         |
| `arrivalDate`                           | yes      | date     |                                                                                                                                                                                                                                                         |
| `departureDate`                         | yes      | date     |                                                                                                                                                                                                                                                         |
| `isDatesUnspecified`                    | no       | int      | Set to `1` in case a channel doesn't provide reservation dates. If it is `1` `arrivalDate` and `departureDate` are set to yesterday.                                                                                                                    |
| `previousArrivalDate`                   | no       | date     |                                                                                                                                                                                                                                                         |
| `previousDepartureDate`                 | no       | date     |                                                                                                                                                                                                                                                         |
| `checkInTime`                           | no       | int      |                                                                                                                                                                                                                                                         |
| `checkOutTime`                          | no       | int      |                                                                                                                                                                                                                                                         |
| `nights`                                | no       | int      |                                                                                                                                                                                                                                                         |
| `phone`                                 | no       | string   |                                                                                                                                                                                                                                                         |
| `totalPrice`                            | no       | float    |                                                                                                                                                                                                                                                         |
| `taxAmount`                             | no       | float    |                                                                                                                                                                                                                                                         |
| `channelCommissionAmount`               | no       | float    |                                                                                                                                                                                                                                                         |
| `hostawayCommissionAmount`              | no       | float    |                                                                                                                                                                                                                                                         |
| `cleaningFee`                           | no       | float    |                                                                                                                                                                                                                                                         |
| `securityDepositFee`                    | no       | float    |                                                                                                                                                                                                                                                         |
| `isPaid`                                | no       | bool     |                                                                                                                                                                                                                                                         |
| `paymentMethod`                         | no       | string   |                                                                                                                                                                                                                                                         |
| `stripeGuestId`                         | no       | string   |                                                                                                                                                                                                                                                         |
| `currency`                              | no       | string   |                                                                                                                                                                                                                                                         |
| `status`                                | no       | string   | Can be one of the following: `new`, `modified`, `cancelled`, `ownerStay`, `pending`, `awaitingPayment`, `declined`, `expired`, `inquiry`, `inquiryPreapproved`, `inquiryDenied`, `inquiryTimedout`, `inquiryNotPossible`                                |
| `cancellationDate`                      | no       | date     |                                                                                                                                                                                                                                                         |
| `cancelledBy`                           | no       | string   | Can be one of the following: `guest`, `host`                                                                                                                                                                                                            |
| `hostNote`                              | no       | string   |                                                                                                                                                                                                                                                         |
| `guestNote`                             | no       | string   |                                                                                                                                                                                                                                                         |
| `guestLocale`                           | no       | string   |                                                                                                                                                                                                                                                         |
| `doorCode`                              | no       | string   |                                                                                                                                                                                                                                                         |
| `doorCodeVendor`                        | no       | string   |                                                                                                                                                                                                                                                         |
| `doorCodeInstruction`                   | no       | string   |                                                                                                                                                                                                                                                         |
| `comment`                               | no       | string   |                                                                                                                                                                                                                                                         |
| `confirmationCode`                      | no       | string   | Airbnb confirmation code                                                                                                                                                                                                                                |
| `airbnbExpectedPayoutAmount`            | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingBasePrice`                | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingCancellationHostFee`      | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingCancellationPayout`       | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingCleaningFee`              | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingHostFee`                  | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbListingSecurityPrice`            | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbOccupancyTaxAmountPaidToHost`    | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbTotalPaidAmount`                 | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbTransientOccupancyTaxPaidAmount` | no       | float    |                                                                                                                                                                                                                                                         |
| `airbnbCancellationPolicy`              | no       | string   | Airbnb channel-specific cancellation policy label (e.g. `moderate`, `strict`, `flexible`), populated from the Airbnb inbound payload. Unlike the other channel-specific cancellation fields, this is a stored reservation column and is **always returned, regardless of `includeCancellationPolicy`**. `null` for non-Airbnb reservations. |
| `isStarred`                             | no       | bool     |                                                                                                                                                                                                                                                         |
| `isArchived`                            | no       | bool     |                                                                                                                                                                                                                                                         |
| `isPinned`                              | no       | bool     |                                                                                                                                                                                                                                                         |
| `guestAuthHash`                         | no       | string   |                                                                                                                                                                                                                                                         |
| `guestPortalUrl`                        | no       | string   |                                                                                                                                                                                                                                                         |
| `originalChannel`                       | no       | string   | **DEPRECATED**                                                                                                                                                                                                                                          |
| `latestActivityOn`                      | no       | date     |                                                                                                                                                                                                                                                         |
| `customerUserId`                        | no       | string   |                                                                                                                                                                                                                                                         |
| `reservationAgreement`                  | no       | string   | Can be one of the following: `not_required`, `signed`, `not_signed`                                                                                                                                                                                     |
| `remainingBalance`                      | no       | float    | Difference between reservation total price and amount already paid by guest. Returns only if `includePayments=1` passed                                                                                                                                 |
| `rentalAgreementFileUrl`                | no       | string   | Link to pdf file with signed Rental Agreement                                                                                                                                                                                                           |
| `customFieldValues`                     | no       | array    | You should create Custom fields at the dashboard beforehand                                                                                                                                                                                             |
| `reservationFees`                       | no       | array    | Array of `reservationFee` objects (will be empty array if `includeResources` parameter is set to 0).                                                                                                                                                    |
| `reservationUnit`                       | no       | array    | Array of `reservationUnit` objects (will be empty array if `includeResources` parameter is set to 0 or reservation is not multi unit).                                                                                                                  |
| `financeField`                          | no       | array    | Array of `financeField` objects                                                                                                                                                                                                                         |
| `guestPaymentCardIsVirtual`             | no       | int      | `1` = guest payment card is virtual, `0` = not virtual                                                                                                                                                                                                  |
| `insuranceStatus`                       | no       | string   | Can be one of the following: `insured`, `pending`, `rejected`, `not_eligible`                                                                                                                                                                           |
| `claimStatus`                           | no       | string   | Can be one of the following: `claim_started`, `claim_approved`, `claim_rejected`, `claim_draft`, `claim_paid`, `claim_withdrawn` and `null` when claim status not found.                                                                                |
| `insurancePolicyId`                     | no       | string   | Insurance external policyID                                                                                                                                                                                                                             |
| `cancellationPolicyId`                  | no       | int      | Cancellation Policy Id of the reservation. [Cancellation Policies](#cancellation-policies). **Note:** this is a foreign key to a policy row that can be edited after the booking, so it may no longer reflect the terms the guest booked under. For the authoritative policy, use `cancellationPolicyDetails`. |
| `cancellationPolicy`                    | no       | string   | Cancellation policy name applied to the reservation (e.g. `moderate`, `strict`, `flexible`). Mirrors the channel's policy label when available.                                                                                                         |
| `bookingCancellationPolicy`             | no       | string   | Booking.com channel-specific cancellation policy code (e.g. `"13"`), stored as the raw code returned by Booking.com. Populated only for Booking.com reservations; `null` otherwise. Returned only when `includeCancellationPolicy=1` is passed; always included on [Retrieve a reservation](#retrieve-a-reservation) and on create/update/cancel responses. |
| `vrboCancellationPolicy`                | no       | string   | Vrbo channel-specific cancellation policy code. Populated only for Vrbo reservations; `null` otherwise. Returned only when `includeCancellationPolicy=1` is passed; always included on [Retrieve a reservation](#retrieve-a-reservation) and on create/update/cancel responses. |
| `marriottCancellationPolicy`            | no       | string   | Marriott channel-specific cancellation policy code. Populated only for Marriott reservations; `null` otherwise. Returned only when `includeCancellationPolicy=1` is passed; always included on [Retrieve a reservation](#retrieve-a-reservation) and on create/update/cancel responses. |
| `cancellationPolicyDetails`             | no       | object   | The authoritative, immutable cancellation policy captured at booking time — the terms the guest actually booked under, unaffected by later edits to the listing's policy. An object with `name`, `channelId`, `channelSpecificCode`, `longTerm` and `cancellationPolicyItem[]` (each item: `refundAmount`, `refundType`, `refundField`, `timeDelta`, `event`). `null` for reservations with no snapshot (e.g. legacy bookings, or channels where the policy was not synced at booking time). Returned only when `includeCancellationPolicy=1` is passed; always included on [Retrieve a reservation](#retrieve-a-reservation) and on create/update/cancel responses. |
| `hostProxyEmail`                        | no       | string   | Proxy email of the host of the reservation. Will be accessible by including the `includeResources=1` to the [Retrieve a reservations list](#retrieve-a-reservations-list) endpoint or from [Retrieve a reservation](#retrieve-a-reservation) by default |
| `bookingcomSpecialRequests`             | no       | object   | Booking.com special requests payload (e.g. `remarks`, `geniusFreebies`). See Booking.com's [OTA ResNotif spec](https://developers.booking.com/connectivity/docs/ota-resnotif/) for the upstream `reservation_extra_info` structure. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed. `null` for non-Booking.com reservations. |
| `bookingcomSmokingPreference`           | no       | int      | Booking.com guest smoking preference. `1` = smoking, `0` = non-smoking, `null` if unknown or non-Booking.com. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed.                                   |
| `bookingcomIsGeniusMember`              | no       | int      | `1` if the booker is a Booking.com Genius member, `0` otherwise, `null` for non-Booking.com. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed.                                                    |
| `bookingcomBookerName`                  | no       | string   | Full name of the person who placed the Booking.com reservation. May differ from the guest when booking on behalf of someone else. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed.               |
| `bookingcomBookerCompany`               | no       | string   | Company or travel agency name from the Booking.com booker's affiliations, when the reservation was made on behalf of a business. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed.                |
| `bookingcomNoShowReportedAt`            | no       | datetime | Timestamp a Booking.com no-show was reported for this reservation, format `Y-m-d H:i:s` in the account timezone. `null` when no no-show has been reported. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed. |
| `bookingcomNoShowFeeWaived`             | no       | bool     | Whether the reported Booking.com no-show fee was waived (`true`) or charged (`false`). `null` when no no-show has been reported. Returned by [Retrieve a reservation](#retrieve-a-reservation) only when `includeResources=1` is passed. |