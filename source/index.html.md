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
  - calendar
  - calendar_calendarDayObject
  - calendar_retrieveCalendar
  - calendar_updateCalendar
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
Only HTTPS protocol is allowed.

<aside class="notice">
Current API version is v1
</aside>

Please notice that boolean type should be considered as integer 0 or 1 value. 
