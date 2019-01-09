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
  - reservation
  - reservation_reservationObject
  - reservation_retrieveReservationsList
  - reservation_retrieveReservation
  - reservation_createReservation
  - reservation_updateReservation
  - reservation_cancelReservation
  - reservation_deleteReservation
  - reservation_retrieveConversations
  - reservation_retrieveMessageTemplates
  - reservation_retrieveMessageTemplate
  - reservation_reservationCardObject
  - reservation_retrieveCardInformation
  - calendar
  - calendar_calendarDayObject
  - calendar_retrieveCalendar
  - calendar_updateCalendar
  - calendar_batchCalendarUpdate
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
- all time values should be specified in UTC timezone
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
