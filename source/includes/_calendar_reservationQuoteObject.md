## Reservation quote object

```json
{
    "price": 211,
    "weeklyDiscount": 0,
    "monthlyDiscount": 0,
    "priceForExtraPerson": 0,
    "cleaningFee": 40.32,
    "refundableDamageDeposit": 12.34,
    "couponDiscount": -230.4592,
    "checkinFee": 0,
    "additionalCleaningFee": 0,
    "parkingFee": 0,
    "towelChangeFee": 0,
    "midstayCleaningFee": 0,
    "roomRequestFee": 0,
    "reservationChangeFee": 0,
    "lateCheckoutFee": 0,
    "otherFees": 0,
    "shareholderDiscount": 0,
    "lastMinuteDiscount": 0,
    "employeeDiscount": 0,
    "otherSpecialDiscount": 0,
    "salesTax": 0,
    "hotelTax": 0,
    "vat": 0,
    "lodgingTax": 0,
    "transientOccupancyTax": 0,
    "cityTax": 0,
    "roomTax": 0,
    "otherTaxes": 0,
    "totalPrice": 263.66
}
```
#### Important Notes

 - Some of the reservation quote components are not included in `totalPrice` sum (like optional fees and discounts) even if they are > 0. Please add them to the `totalPrice` if needed.
 - Discount amounts returned with a minus sign (as negative values, e.g. `-145.9282`).
 - Amounts format is float with up to 4 precision numbers.

Property | Required | Type | Included in total price
-------- | -------- | ---- | -----------------------
`price` | yes | float | yes
`weeklyDiscount` | yes | float | yes
`monthlyDiscount` | yes | float | yes
`priceForExtraPerson` | yes | float | yes
`cleaningFee` | yes | float | yes
`refundableDamageDeposit` | yes | float | yes
`couponDiscount` | yes | float | yes
`checkinFee` | yes | float | yes
`additionalCleaningFee` | yes | float | no
`parkingFee` | yes | float | no
`towelChangeFee` | yes | float | no
`midstayCleaningFee` | yes | float | no
`roomRequestFee` | yes | float | no
`reservationChangeFee` | yes | float | no
`lateCheckoutFee` | yes | float | no
`otherFees` | yes | float | no
`serviceFee` | yes | float | no
`shareholderDiscount` | yes | float | no
`lastMinuteDiscount` | yes | float | no
`employeeDiscount` | yes | float | no
`otherSpecialDiscount` | yes | float | no
`salesTax` | yes | float | yes
`hotelTax` | yes | float | yes
`vat` | yes | float | yes
`lodgingTax` | yes | float | yes
`transientOccupancyTax` | yes | float | yes
`cityTax` | yes | float | yes
`roomTax` | yes | float | yes
`otherTaxes` | yes | float | yes
`totalPrice` | yes | float |
