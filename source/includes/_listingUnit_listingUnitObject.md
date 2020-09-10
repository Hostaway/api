## ListingUnit object

```json
{
    "id": 1,
    "name": "Apartment",
    "ground": "2",
    "unitNumber": "234",
    "listingMapIdUnit": "2"
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`name` | yes | string | ListingUnit name
`ground` | no | string | Ground
`unitNumber` | no | string |  Number of unit e.g. room number 234 
`listingMapIdUnit` | no | int | Related ListingMap object (only if this listingUnit is connected to Hostaway ListingMap object)