## Limitations

### General

Each the channel has their own limitations regarding number of prices and nights etc. When you create los records you should keep in mind with limitations.  
We provide key samples from their documentations. If you need more information please check the documentation of the corresponding channel.

### Booking.com

There is no way to express a default per night price, due to determining the difference between an unavailable length of stay and a default price length of stay.  
All pricing is in the default currency for the hotel. A maximum of two decimal places is supported for each price value.  
Maximum number of nights is 32. If you provider more than 32 nights, the remaining nights will be ignored and only the first 32 nights will be considred.  

The maximum price you can set for a room is €50000 (or equivalent) per night. If you try to set a higher price, we set the price to zero, which automatically closes the room.

Documentation: https://connect.booking.com/user_guide/site/en-US/csv-los_pricing/

### Airbnb

Up to 127 guests per stay  
Up to 47 specific price points per record.
Stays may last up to 1125 nights unless the host specifies a maximum duration  
Check-in date must be within 18 months (550 days) from the date of submission  
A price of zero (0) means that particular combination of (date, number of guests, number of nights) is not available  
Any date that is not provided is not available for check-in  
To specify a minimum number of nights, set that number of nights as the first number-of-nights entry in the record, e.g: to disallow all stays lasting one or two nights, set the value of the first number of nights to 3  
To specify a maximum length of stay, add an entry to the end of the record with a number of nights (maximum + 1) and a price of 0, e.g: to set a maximum of 45 nights, enter a value of 46 at the end of the record with a price of 0  
If the last entry is not zero, longer stays than that are permitted and prices will be calculated  
Prices for stays that fall between two specified points are calculated.

Each record specifies a check-in date, a number of guests, a number of nights, and a price. Note, prices can only be specified as integer values.

### Expedia

Length-of-stay pricing allows properties to define rates for lengths of stay from 1 to 28 days, per arrival date.  
For each date of a year, properties can send up to 28 rates.

https://developers.expediagroup.com/supply/lodging/docs/avail_and_rate_apis/avail_rates/learn/#per-day-length-of-stay-pricing

### Homeaway

Up to 180 explicit stay rates, which provides one pre-calculated rate for each combination of occupancy level and check-in date.
Up to 735 check-in dates (with 10 occupancy levels for each) so that you can calculate extended rates for up to two years. This means you can include up to 7350 los records.
