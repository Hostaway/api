## Prices field in `Los` Object

### Rules 

Each row must have the check-in date, occupancy, followed by a value set for every possible length of stay. There is no way to express a default per night price, due to determining the difference between an unavailable length of stay and a default price length of stay. All pricing is in the default currency for the hotel. A maximum of two decimal places is supported for each price value. Maximum number of nights is 32. If you provider more than 32 nights, the remaining nights will be ignored and only the first 32 nights will be considred. Only one `Hostaway Listing` is allowed in one call i.e separate requests for each `Hostaway Listing` have to made.

### Occupancy

Occupancy is a way to specify "price per extra person". If you don't want to specify it, simply pass occupancy as 1. The channels will apply the price for any number of guests. If you want to charge an extra amount after a specific number of guests you should provide LOS records with an adjusted price.

### Availability

- Check-in date must be within 18 months (550 days) from the date of submission
- A price of zero (0) means that particular combination of (date, number of guests, number of nights) is not available
- Any date that is not provided is not available for check-in
- The passed in records will fully replace the existing DB table and export to the channels (Airbnb, Booking, Expedia, Vrbo) again in 1-15 minutes. This time depends on the channels and the overall system load.
- It is allowed to update `Los` object records partially. This means that it is possible to update only one record for one checkin date. 


```json
{
  "id": 73,
  "accountId": 1,
  "listingMapId": 1,
  "checkin": "2022-09-01",
  "occupancy": 1,
  "bookingcomRateId": "",
  "prices": "1,100.10,2,200.21,3,300.33,4,400.00,5,500.01,6,600.35,7,700.48,8,800.50,22,2200.60",
  "isSyncedAirbnb": 0,
  "isSyncedBooking": 1,
  "isSyncedExpedia": 0,
  "isSyncedVrbo": 0,
  "insertedOn": "2021-09-08 18:29:54",
  "updatedOn": "2021-09-14 08:37:34"
}
```

A maximum of two decimal places is supported for each price value (we pass decimal values only if the channel support it). It depends on the channels because some channels do not support decimal places and we convert your prices to integer values.

Here’s an example:

nights | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 22
------ | --- | --- | --- | --- | --- | --- | --- | --- | ---
price | 100.10 | 200.21 | 300.33 | 400.00 | 500.01 | 600.35 | 700.48 | 800.50 | 2200.60


For one guest, the records for this would look like:

1,100.10,2,200.21,3,300.33,4,400.00,5,500.01,6,600.35,7,700.48,8,800.50,22,2200.60  

`<nights>, <price>, <nights>, <price>, <nights>, <price>....`

