## Listing amenity object

```json
{
    "id": 3449,
    "amenityId": 2,
    "category": null,
    "isPresent": 1
}
```

Property | Required | Type | Description
-------- | -------- | ---- | ----------- 
`id` | yes | int | 
`amenityId` | yes | int | 
`category` | no | string | Read-only. Category of the amenity. `null` when the amenity has no category.
`isPresent` | no | int | Read-only. `1` when the listing has the amenity.
