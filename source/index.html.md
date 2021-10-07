---
title: Hostaway Public API Reference

language_tabs:
  - shell
  - php
  - javascript
  - java
  - python

toc_footers:
  - <a href='https://dashboard.hostaway.com/'>Hostaway dashboard</a>
  - <a href='#'>Get API client secret</a>

includes:
  - changelog
  - authentication
  - listing
  - listing_listingObject
  - listing_listingAmenityObject
  - listing_listingBedTypeObject
  - listing_listingImageObject
  - listing_retrieveListingsList
  - listing_retrieveListing
  - listing_createListing
  - listing_updateListing
  - listing_deleteListing
  - listing_exportAirbnb
  - listing_feeSettings_list
  - listing_feeSettings_create
  - listing_feeSettings_update
  - listing_feeSettings_delete
  - listingUnit
  - listingUnit_listingUnitObject
  - listingUnit_retrievelistingUnits
  - reservation
  - reservation_reservationObject
  - reservation_retrieveReservationsList
  - reservation_retrieveReservation
  - reservation_createReservation
  - reservation_createReservationCreditCard
  - reservation_updateReservation
  - reservation_cancelReservation
  - reservation_deleteReservation
  - reservation_retrieveConversations
  - reservation_retrieveMessageTemplates
  - reservation_retrieveMessageTemplate
  - reservation_reservationCardObject
  - reservation_reservationFeeObject
  - reservation_reservationUnitObject
  - reservation_updateReservationCreditCardDetails
  - reservation_addPaymentMethod
  - reservation_retrieveCardInformation
  - reservation_reservationStatuses
  - reservationPaymentMethod
  - reservationPaymentMethod_retrieveList
  - calendar
  - calendar_calendarDayObject
  - calendar_retrieveCalendar
  - calendar_updateCalendar
  - calendar_updateMultUnitCalendar
  - calendar_batchCalendarUpdate
  - calendar_reservationQuoteObject
  - calendar_reservationQuoteComponentsObject
  - calendar_priceDetails
  - calendar_calendarDayStatuses
  - conversation
  - conversation_conversationMessageObject
  - conversation_conversationObject
  - conversation_retrieveConversationsList
  - conversation_retrieveConversation
  - conversation_retrieveConversationsMessagesList
  - conversation_retrieveConversationMessage
  - conversation_sendConversationMessage
  - messageTemplate
  - messageTemplate_messageTemplateObject
  - messageTemplate_retrieveMessageTemplateList
  - messageTemplate_retrieveMessageTemplate
  - amenity
  - amenity_amenityObject
  - amenity_retrieveAmenitiesList
  - bedType
  - bedType_bedTypeObject
  - bedType_retrieveBedTypesList
  - propertyType
  - propertyType_propertyTypeObject
  - propertyType_retrievePropertyTypeList
  - reservationWebhookLog
  - reservationWebhookLog_reservationWebhookLogObject
  - reservationWebhookLog_retrieveReservationWebhookLogList
  - conversationMessageWebhookLog
  - conversationMessageWebhookLog_conversationMessageWebhookLogObject
  - conversationMessageWebhookLog_retrieveConversationMessageWebhookLogList
  - customField
  - customField_customFieldObject
  - customField_customFieldList
  - commonInfo
  - commonInfo_countries
  - commonInfo_currencies
  - commonInfo_languages
  - commonInfo_timezones
  - stripe
  - stripe_retrievePublishableApiKey
  - stripe_retrievePublishableApiKeyForListing
  - stripe_createSetupIntent
  - stripe_createSetupIntentForListing
  - financialReporting
  - financialReporting_standardFields
  - financialReporting_calculatedFields
  - financialReporting_customFormulas
  - financialReporting_reportStandard
  - financialReporting_reportConsolidated
  - financialReporting_reportCalculated
  - financialReporting_reportListingFinancials
  - taxSettings
  - taxSettings_account
  - taxSettings_listing
  - ownerStatement
  - ownerStatement_retrieveList
  - ownerStatement_retrieve
  - review
  - review_reviewObject
  - review_retrieveList
  - review_retrieveReview
  - user
  - user_retrieveList
  - group
  - group_retrieveList
  - guestInvoice
  - guestInvoice_guestInvoiceObject
  - guestInvoice_retrieveList
  - guestInvoice_retrieveGuestInvoice
  - guestInvoice_guestInvoiceChargeObject
  - guestInvoice_retrieveGuestInvoiceChargeList
  - guestInvoice_retrieveGuestInvoiceCharge
  - coupon
  - coupon_couponObject
  - coupon_retrieveCouponsList
  - webhook
  - webhook_reservationsList
  - webhook_reservationsRead
  - webhook_reservationsCreate
  - webhook_reservationsUpdate
  - webhook_reservationsDelete
  - webhook_conversationMessagesList
  - webhook_conversationMessagesRead
  - webhook_conversationMessagesCreate
  - webhook_conversationMessagesUpdate
  - webhook_conversationMessagesDelete
  - los
  - los_limitations
  - los_losObject
  - los_pricing
  - los_createLos
  - los_importCsv
  - los_retrieveList
  
  
search: true
---

# Introduction

Welcome to the Hostaway Public API! This API allows Hostaway users to create, update and delete 
listings and reservations, read listing calendars, block and unblock calendar days.
Hostaway Public API is RESTful, JSON data format is used in both requests and responses bodies, 
only HTTPS protocol is allowed.

<aside class="notice">
Current API version is v1
</aside>

Please notice that:

- boolean type should be considered as integer 0 or 1 value
- all time values should be specified in UTC timezone (except for `checkInTimeStart`, `checkInTimeEnd` and `checkOutTime` fields of Listing object, which have to be specified in listing's local timezone)
- all country code values are `ISO 3166-2` standard

## Standard Response

We have the following data structure of response for the most of the endpoints:

```json
{
    "status": "success",
    "result": "Endpoint result goes here",
    "limit": null,
    "offset": null,
    "count": 1,
    "page": 1,
    "totalPages": 1
}
```

* `status` can be one of: 
    * `success` if case of no errors occurred or 
    * `fail` in case of any error.
* `result` contains endpoint result if no errors or an error message string if `status` is `fail`.

Pagination data — met in retrieve `list` responses.

   * `limit` number from 0, max to receive records count or count on page,
   * `offset` number from 0, the position "from" to get the records,
   * `count`: count of all records with specified filters,
   * `page`: page number,
   * `totalPages`: total pages number
   
## Questions and bug reporting

If you have any questions regarding API, feel free to send them by email to [support@hostaway.com](mailto:support@hostaway.com).

If you ever notice a bug, please send a report to [support@hostaway.com](mailto:support@hostaway.com). Report should include `cURL` request with endpoint URL, time of the request with timezone, header, payload, response and expected result.
