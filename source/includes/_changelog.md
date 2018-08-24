## Changelog

**2018-08-24**

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

