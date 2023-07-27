## Changelog

**2023-05-11**

- Added expense articles [expense](#expense)

**2023-04-11**

- Added guest payments article [guest payments](#guest-payment)

**2023-01-11**

- Added reservation coupon creating endpoint [create reservation coupon object](#create-reservation-coupon-object)

**2022-12-22**

- Added originalChannel field to reservation response

**2022-11-09**

- [Airbnb cancellation policies](#retrieve-airbnb-cancellation-policies) - new endpoint, list of Airbnb cancellation policies, id can be used as listing.airBnbCancellationPolicyId parameter
- [Booking.com cancellation policies](#retrieve-booking-com-cancellation-policies) - new endpoint, new endpoint, list of Booking.com cancellation policies, id can be used as listing.bookingCancellationPolicyId parameter
- [Marriott cancellation policies](#retrieve-marriott-cancellation-policies) - new endpoint, new endpoint, list of Marriott cancellation policies, id can be used as listing.marriottCancellationPolicyId parameter
- [Vrbo cancellation policies](#retrieve-airbnb-cancellation-policies) - new endpoint, new endpoint, list of VRBO cancellation policies, id can be used as listing.vrboCancellationPolicyId parameter
- Channel specific cancellation policy added to listing object (marriottCancellationPolicyId, vrboCancellationPolicyId, airBnbCancellationPolicyId, bookingCancellationPolicyId, cancellationPolicyId)

**2022-11-03**

- [Update finance fields in reservation](#update-reservation-with-price-components) - update reservation finance fields
- [Finance fields](#finance-fields) - read and update finance fields in reservation breakdown

**2022-11-01**

- [Calculate reservation price](#calculate-reservation-price) - new price details calculator. We recommend migrating to this calculator if you are using an old calculator as support for the old one has been discontinued.
- [Calculate reservation price with extras](#calculate-reservation-price-with-extras) - calculator price details with extras
- [Create a reservation with price details](#create-a-reservation-with-price-details) - create reservation with price details. Now it is possible to create reservations with any price details.

**2022-07-13**

- Unified webhooks support added

**2022-06-28**

- Added vrboCaption and airbnbCaption to listing Image object
- Added possibility to limit listings list response by userId

**2022-05-31**

- Added possibility to create Rental Agreement

**2022-05-10**

- Seasonal rule intervals endpoint channelId query parameter added

**2022-04-26**

- Seasonal rule endpoint added
- Fix calculate reservation price endpoint parameters

**2022-01-25**

- Added possibility to create custom field with `dropDown` type 

**2022-01-18**

- Guest invoice charge transaction object

**2021-11-25**

- Partners markup value is added to listing object
- Endpoints for custom fields (create, update and delete)

**2021-08-12**
- Added new field "customerUserId" in reservations

**2021-08-09**
- Reservation webhooks
- Conversation message webhooks

**2021-07-08**
- Add price details components
- Add listing fee settings

**2021-04-09**
- Fix owner statement retrieve endpoint doc

**2021-03-31**
- Reservation quote object updated
- Owner statement endpoints added

**2021-03-31**
- A new reservation status `ownerStay` is available. The status is used to identify the dates reserved by the property owner.  
  A reservation of `ownerStay` status must not have financial information. The main use case is to have information about owner stays
  in the financial reporting module.

**2020-12-18**
- `confirmed` reservation status is deprecated for creating/updating reservations.
- listing update endpoint is improved. Now it's safe to pass only fields you want to update. No need to pass entire object. 

**2020-11-19**
- Added payment methods retrieve endpoint for reservations

**2020-10-14**
- Calculate reservation price endpoint introduced.

**2020-09-08**
- Added multi unit support

**2020-08-20**
- Listings section update. 

**2020-07-07**
- Added Financial Reporting section.
- Added Tax Settings section.

**2019-11-01**
- `includeResources` parameter us now fully supported for listings, reservations, conversations, calendar endpoints. It is on by default.

**2019-10-08**
- `paymentMethodGuestId` and `paymentMethodMessage` reservation fields were renamed to `stripeGuestId` and `stripeMessage`, respectively

**2019-06-24**
- Added `isBookingEngineActive` field for listing filtering

**2019-05-24**

- Custom reservation field object
- Custom field value of reservation object

**2019-01-17**
- Common information (countries, currencies, languages and timezones) endpoints introduced.

**2018-10-04**
- `refundableDamageDeposit` listing field introduced

**2018-08-24**

- `includeResources` parameter added for listings, conversations, calendar endpoints (It is a coming feature, it will be effective by end of September and will be off by default).
- `propertyLicenseNumber`, `propertyLicenseType`, `propertyLicenseIssueDate`, `propertyLicenseExpirationDate`  fields of listing object are added

**2018-08-09**

- `isDatesUnspecified` field of reservation added

**2018-07-16** 

- `invoicingContactName`, `invoicingContactSurName`, `invoicingContactPhone1`, `invoicingContactPhone2`, `invoicingContactLanguage`, `invoicingContactEmail`, `invoicingContactAddress`, `invoicingContactCity`, `invoicingContactZipcode`, `invoicingContactCountry` fields of listing object are added

**2018-07-16** 

- `listingTimeZoneName`, `communicationEvent`,  `communicationTimeDelta`, `communicationApplyListingTimeZone`, `communicationAlwaysTrigger` fields of communication message object are removed
- `date`, `insertedOn`, `updatedOn` fields of communication message object are added

**2018-07-13** 

- `isInitial` field of reservation object

**2018-07-02** 

- conversation object
- conversation message object
- message template object
- endpoints for messaging support

**2018-06-16** 

- `guestZipCode`, `guestAddress` fields of reservation object.

**2018-05-07** 

- `channelId` field of reservation object should be specified on reservation creation.

**2018-02-03** 

- `source`, `cancellationDate`, `cancelledBy` fields of reservation object.
- `homeawayReservationPaymentDueDays` of listing removed.

**2017-12-16** 

- `confirmationCode` field of Airbnb reservations.

**2017-12-13** 

- `externalListingName`, `internalListingName`, `homeawayPropertyHeadline` fields added to listing object.

**2017-10-28** 

- `doorCode`, `doorCodeVendor`, `doorCodeInstruction` fields added to reservation object.

**2017-10-25** 

- Added the new reservation fields: `guestRecommendations`, `guestTrips`, `guestWork`, `isGuestIdentityVerified`, `isGuestVerifiedByEmail`, `isGuestVerifiedByWorkEmail`, 
`isGuestVerifiedByFacebook`, `isGuestVerifiedByGovernmentId`, `isGuestVerifiedByPhone`, `isGuestVerifiedByReviews`, `isStarred`, `isArchived`, `isPinned`

**2017-08-29** 

- `match` parameter added for list of reservations and listings

**2017-08-11** 

- Batch calendar update

- New fields of listing: propertyRentTax, guestPerPersonPerNightTax, guestStayTax, guestNightlyTax

- Currency and roomsToSell fields of CalendarDay are removed

**2017-07-07** 

- V1 is released

