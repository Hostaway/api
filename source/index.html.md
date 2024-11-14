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
  - listing_listingAgreement_get
  - listing_listingAgreement_create
  - listing_listingAgreement_update
  - listing_listingAgreement_delete
  - listing_listingAgreement_duplicate
  - listing_listingPricingSettings_get
  - listing_listingPricingSettings_update
  - listingUnit
  - listingUnit_listingUnitObject
  - listingUnit_retrievelistingUnits
  - cancellationPolicy
  - cancellationPolicy_cancellationPolicyObject
  - cancellationPolicy_cancellationPolicyItemObject
  - cancellationPolicy_retrieveCancellationPolicyList 
  - cancellationPolicy_retrieveCancellationPolicyListAirbnb
  - cancellationPolicy_retrieveCancellationPolicyListBooking
  - cancellationPolicy_retrieveCancellationPolicyListMarriott
  - cancellationPolicy_retrieveCancellationPolicyListVRBO
  - cancellationPolicy_createCancellationPolicy
  - cancellationPolicy_readCancellationPolicy
  - cancellationPolicy_updateCancellationPolicy
  - cancellationPolicy_deleteCancellationPolicy
  - reservation
  - reservation_reservationObject
  - reservation_reservationFeeObject
  - reservation_reservationUnitObject
  - reservation_reservationStatuses
  - reservation_retrieveReservationsList
  - reservation_retrieveReservation
  - reservation_createReservation
  - reservation_createReservationCreditCard
  - reservation_createReservationFinanceFields
  - reservation_updateReservation
  - reservation_cancelReservation
  - reservation_deleteReservation
  - reservation_channels
  - calendar_priceDetails
  - calendar_addExtras
  - finance_field
  - reservationPaymentCard
  - reservationPaymentCard_reservationPaymentCardObject
  - reservationPaymentCard_retrieveList
  - reservationPaymentCard_addReservationPaymentCard
  - reservationPaymentCard_addReservationPaymentMethodId
  - reservationPaymentCard_getCardDetails
  - reservationPaymentCard_defaultPaymentCard
  - reservationPaymentMethod
  - reservationPaymentMethod_retrieveList
  - reservation_retrieveRentalAgreement
  - reservation_retrieveMessageTemplates
  - reservation_retrieveMessageTemplate
  - calendar
  - calendar_calendarDayObject
  - calendar_calendarDayStatuses
  - calendar_retrieveCalendar
  - calendar_updateCalendar
  - calendar_updateMultUnitCalendar
  - calendar_batchCalendarUpdate
  - conversation
  - conversation_conversationMessageObject
  - conversation_conversationObject
  - conversation_retrieveConversationsList
  - reservation_retrieveConversations
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
  - unifiedWebhookLog
  - unifiedWebhookLog_unifiedWebhookLogObject 
  - unifiedWebhookLog_retrieveUnifiedWebhookLogList
  - conversationMessageWebhookLog
  - conversationMessageWebhookLog_conversationMessageWebhookLogObject
  - conversationMessageWebhookLog_retrieveConversationMessageWebhookLogList
  - customField
  - customField_customFieldObject
  - customField_customFieldList
  - newCustomField
  - newCustomField_customFieldObject
  - newCustomField_customFieldList
  - newCustomField_createCustomField
  - newCustomField_updateCustomField
  - newCustomField_deleteCustomField
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
  - expense
  - expense_object
  - expense_retrieveList
  - expense_retrieve
  - expense_create
  - expense_delete
  - expense_update
  - review
  - review_reviewObject
  - review_retrieveList
  - review_retrieveReview
  - user
  - user_retrieveList
  - user_retrieve
  - group
  - group_retrieveList
  - guestPayment
  - guestPayment_chargeObject
  - guestPayment_chargeTransactionObject
  - guestPayment_retrieveChargeList
  - guestPayment_retrieveCharge
  - guestPayment_createOfflineCharge
  - guestPayment_updateOfflineCharge
  - guestAutoPayment_AutoChargeObjectList
  - guestAutoPayment_AutoChargeObject
  - coupon
  - coupon_couponObject
  - coupon_retrieveCouponsList
  - coupon_reservationCouponObject
  - coupon_retrieveReservationCouponsList
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
  - webhook_unified
  - webhook_unifiedWebhookObject
  - webhook_unifiedWebhookList
  - webhook_unifiedWebhookCreate
  - webhook_unifiedWebhookRead
  - webhook_unifiedWebhookUpdate
  - webhook_unifiedWebhookDelete
  - los
  - los_limitations
  - los_losObject
  - los_pricing
  - los_createLos
  - los_importCsv
  - los_retrieveList
  - seasonalRule
  - seasonalRule_object
  - seasonalRule_retrieveList
  - seasonalRule_retrieveIntervals
  - task
  - task_object
  - task_retrieveList
  - task_retrieve
  - task_create
  - task_update
  - task_delete

  
  
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

## Rate limits

To ensure a good performance of Hostaway’s Public API across the entire platform and protect it from external threats,
we limit the number of calls an application can make at once by enforcing rate limits as follows:
Maximum number of requests

| Maximum number of requests | Time frame | Key            |
|----------------------------|------------|----------------|
| 15                         | 10 seconds | Per IP address |
| 20                         | 10 seconds | Per account ID |

To ensure your service is not interrupted, make sure to spread API calls throughout the day instead of concentrating
them, and implement queuing mechanisms that process a few requests and responses at a time

When you go over the rate limits specified above, the API will return HTTP code 429 and response

```json
{
  "status": "fail",
  "message": "This error occurs because a server detects that your application has exceeded the rate limits or has made too many requests in a given period of time."
}
```

## Webhook events

Hostaway allows you to create and manage webhooks so you get notified when something changes on our platform. That way, you don’t need to poll the API and can update your system in real-time.

Our system will not filter events for you, so once the webhooks are enabled, you will receive notifications for all supported events. Make sure your system is able to filter the events you need, as well as handle any new events that are added to the list.

If Hostaway tries to deliver the webhook notification to your server and doesn’t receive a successful status code in return, the system will retry it 3 times. After 3 failed attempts, the webhook notification won’t be retried by Hostaway anymore and we’ll send an email alert either to a pre-configured email address (see below) or to the account owner with the details of the failed message.

To create the webhooks, you’ll need to provide us with the following information:
* URL (mandatory) → the endpoint that Hostaway should trigger to alert your system about an update
* Login (optional) → a username that Hostaway should pass on the authentication header of the webhook request sent to your endpoint
* Password (optional) → a password that Hostaway should pass on the authentication header of the webhook request sent to your endpoint
* Recipient email (optional) → an email that Hostaway can use to send notifications when a webhook delivery fails. If not provided, the email with the error details will be sent to the primary email address from the Hostaway account

The events we support are the moment are the ones below, but keep in mind that we are constantly improving our webhooks and expect your service to handle any future webhook events that are added to this list:
* reservation created → triggered when a new reservation is created in Hostaway, from any channel
* reservation updated → triggered when an existing reservation is updated
* new message received → triggered when a new message is added to a conversation

The [full request](#create-a-unified-webhook) to create the webhook.

## Recommendations around polling

In general idea is to spread polling across different times instead of concentrating all requests at 00:00:01 every day. Instead of polling mechanism you can use [unified webhooks](#unified-webhooks) to subscribe for events. To create unified webhook you can use [public API request](#create-a-unified-webhook) or Hostaway Dashboard https://dashboard.hostaway.com/settings/integrations. You can read more about events supported by webhooks [here](#webhook-events)

## Working with authorization token

To access Hostaway Public API endpoints you need to generate access token ([here is how to do that](#authentication)). 
Once access token is generated you can use it until it expires in 24 months. So the algorithm can be as following:
1. Check if there is non-expired token
2. IF yes -> use token to access public API endpoints
3. IF no -> get token using `POST https://api.hostaway.com/v1/accessTokens`
4. Store token somewhere on your side (for instance in the database table)
5. Once you get access denied 403 HTTP code it means your token is no longer valid and probably expired. You need to refresh it using step 1 and store a new refreshed token to continue using it in your public API calls

**Important**: There is **NO need** to generate new access token over and over for each particular API request putting unneeded load both on our and your systems. You should store it on your side instead while it is valid. There are rate limits which restrict amount of allowed requests per ip address and account in a time period.

## Changing behavior of returning attached objects

In our efforts to improve your services, we will change the behavior on how to return the attached objects in response to requests made towards Hostaway’s Public API retrieving a list of reservations or calendar days.
Now you will need to pass an extra query parameter `includeResources=1` to get those attached objects. 

### The following are the endpoints and its objects that will be affected by the change

- `GET {baseUrl}/v1/reservations`

  - customFieldValues
  - reservationFees
  - reservationUnit
  - hostProxyEmail

Now, if you didn't pass the query parameter `?includeResources=1` the above fields will be always an empty as shown in the response snippet on the right

```json
{
    "customFieldValues": [],
    "reservationFees": [],
    "reservationUnit": [],
    "hostProxyEmail": null
}
```

- `GET {baseUrl}/v1/listings/{listingId}/calendar`

  - reservations

The same thing applied on the endpoint, if the query parameter `?includeResources=1` didn't passed, the `reservations` will be always an empty array `[]` as shown in the response snippet on the right

```json
{
    "reservations": []
}
```

## Questions and bug reporting

If you have any questions regarding API, feel free to send them by email to [support@hostaway.com](mailto:support@hostaway.com).

If you ever notice a bug, please send a report to [support@hostaway.com](mailto:support@hostaway.com). Report should include `cURL` request with endpoint URL, time of the request with timezone, header, payload, response and expected result.
