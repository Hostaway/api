## Reservation quote components object

```json
{
  "totalPrice": 69435,
  "components": {
    "price": [
      {
        "name": "price",
        "title": "Base rate",
        "isIncludedInTotalPrice": true,
        "isOverriddenByUser": false,
        "value": 24000
      }
    ],
    "fee": [
      {
        "name": "checkinFee",
        "title": "Check-in fee",
        "isIncludedInTotalPrice": true,
        "isOverriddenByUser": false,
        "value": 150,
        "isMandatory": false
      },
      {
        "name": "parkingFee",
        "title": "Parking fee",
        "isIncludedInTotalPrice": true,
        "isOverriddenByUser": false,
        "value": 1000,
        "isMandatory": false,
        "isQuantitySelectable": false,
        "quantity": 1,
        "id": 2
      }
    ],
    "discount": [
      {
        "name": "employeeDiscount",
        "title": "Employee discount",
        "isIncludedInTotalPrice": true,
        "isOverriddenByUser": false,
        "value": -123,
        "isMandatory": false
      }
    ],
    "tax": [
      {
        "name": "salesTax",
        "title": "Sales tax",
        "isIncludedInTotalPrice": true,
        "isOverriddenByUser": false,
        "value": 15
      }
    ]
  }
}
```
#### Important Notes

 - Some of the reservation quote components are not included in `totalPrice` sum (like optional fees and discounts) even if they are > 0. Please add them to the `totalPrice` if needed.
 - Discount amounts returned with a minus sign (as negative values, e.g. `-145.9282`).
 - Amounts format is float with up to 4 precision numbers.

Property | Required | Type | Description
-------- | -------- | ---- | -----------
`totalPrice` | yes | float | Total price is sum of all components that have `isIncludedInTotalPrice=true`
`components` | yes | array | Array of price components by type

Price components can be various types:
- price
- fee
- discount
- tax

Each price component has following structure:

Property | Required | Type | Description
-------- | -------- | ---- | -----------
`name` | yes | string | Name of component, e.g. `parkingFee`
`title` | yes | string | Title of component, e.g. `Parking Fee`
`isIncludedInTotalPrice` | true | bool | `true` = component IS included in total price, `false` = not included
`isOverriddenByUser` | true | bool | `true` = Component value overridden by custom value received from client, `false` = value is calculated automatically
`value` | true | float | Financial amount of component
`isMandatory` | false | bool | `true` = fee is mandatory and will be included in total price by default, `false` = not included
`isQuantitySelectable` | false | bool | `true` = client can select quantity, it will be multiplied to get `value`, `false` = quantity is not selectable and is always 1
`quantity` | false | int | Fee quantity
`id` | false | int | Fee ID, required for custom fees



