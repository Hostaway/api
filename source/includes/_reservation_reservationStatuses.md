## Reservation statuses


Status | Description
-------- | ----------- 
`new` | confirmed reservation
`modified` | reservation dates or other important details like the number of guests were changed
`cancelled` | reservation has been cancelled
`ownerStay` | the owner of the property stays in the listing
`pending` | reservation is awaiting host confirmation
`awaitingPayment` | reservation is awaiting payment (usually on the channel's side)
`declined` | pending reservation has been declined by the host
`expired` | pending reservation without the host reply
`inquiry` | a guest is interested to stay. This status doesn’t block the calendar
`inquiryPreapproved` | status specific to Airbnb reservations, means the guest received pre-approval and can book the property with terms fixed in inquiry
`inquiryDenied` | inquiry has been rejected by the host
`inquiryTimedout` | inquiry reservation without the host reply
`inquiryNotPossible` | the days' inquiry was made for are not currently available