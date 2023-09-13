## Reservation coupon object

Represents relation between Coupon and Reservation objects, used
in [calculate reservation total price and breakdown](#reservation-price-calculation) as `reservationCouponId`
parameter

```json
{
  "id": 1,
  "userId": null,
  "listingMapId": 1,
  "reservationId": 0,
  "couponId": 123,
  "couponName": "C234FGGH",
  "reservationBasePrice": 500,
  "couponPrice": 200
}
```

| Property               | Required | Type   | Description                                                                        |
|------------------------|----------|--------|------------------------------------------------------------------------------------|
| `id`                   | yes      | int    | Reservation Coupon ID, use this to calculate reservation total price and breakdown |
| `userId`               | no       | int    | User ID                                                                            |
| `listingMapId`         | no       | int    | Listing Map ID                                                                     |
| `reservationId`        | no       | int    | Reservation ID                                                                     |
| `couponId`             | yes      | string | Coupon ID                                                                          |
| `couponName`           | yes      | string | Coupon name                                                                        |
| `reservationBasePrice` | no       | float  | Reservation base price BEFORE coupon applied                                       |
| `couponPrice`          | no       | float  | Reservation base price AFTER coupon applied                                        |
