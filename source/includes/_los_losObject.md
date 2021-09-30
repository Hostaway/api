## LOS Object

For each length of stay record we store `LOS` item on our end. After importing new or updating existing `LOS` records Hostaway will export LOS records to the channels. The price on the channels may take up to 1 - 15 minutes to be applied. It depends on the channel. Usually it takes a couple of minutes.

After uploading LOS data to Hostaway you can check the work process by getting LOS records of the listing and check flags:  
(the value 1 means that los exported, 0 means that not exported):

- `isSyncedAirbnb`  
- `isSyncedBooking`  
- `isSyncedExpedia`  
- `isSyncedVrbo`  

Channel error messages can be retrieved using `syncErrorMessage` field  

```json
{
  "id": 73,
  "accountId": 1,
  "listingMapId": 1,
  "checkin": "2022-09-01",
  "occupancy": 1,
  "bookingcomRateId": "",
  "prices": "1,100,2,200,28,2700,29,3100,36,7200",
  "isSyncedAirbnb": 0,
  "isSyncedBooking": 1,
  "isSyncedExpedia": 0,
  "isSyncedVrbo": 0,
  "syncErrorMessage": null,
  "insertedOn": "2021-09-08 18:29:54",
  "updatedOn": "2021-09-14 08:37:34"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | Identifier of los object
`accountId` | no | int | Identifier of account object
`listingMapId` | no | int | Identifier of listing object.
`checkin` | yes | date (YYYY-MM-DD) | Check in date
`occupancy` | yes | int | Occupancy of LOS record
`bookingcomRateId` | no | string | bookingcomRateId
`prices` | yes | string | Price table for this checkin in format `lenghtOfStay,price,lenghtOfStay,price,lenghtOfStay,price`  please check format of the row [here](#prices-field-in-los-object)
`isSyncedAirbnb` | no | int | It’s an internal informational field to show if the item was successfully pushed to Airbnb
`isSyncedBooking` | no | int | It’s an internal informational field to show if the item was successfully pushed to Booking.com
`isSyncedExpedia` | no | int | It’s an internal informational field to show if the item was successfully pushed to Expedia
`isSyncedVrbo` | no | int | It’s an internal informational field to show if the item was successfully pushed to Vrbo
`syncErrorMessage` | no | string | Error messages from the channels if the record was failed to export to the channels
`insertedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the record inserted date in UTC
`updatedOn` | no | date (YYYY-MM-DD HH:MM:SS) | the record updatedOn date in UTC
