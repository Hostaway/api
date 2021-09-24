## Reservation statuses


Status | Description
-------- | ----------- 
`new` | New reservation, blocks calendar
`modified` | Reservation that has dates, guests, listing or pricing modified. Blocks calendar
<nobr>`cancelled`</nobr> | Reservation cancelled by either host or guest. Does not block calendar
<nobr>`ownerStay`</nobr> | Hostaway specific status for reservations created by Owners that wish to block their properties usually because they plan to stay in them
<nobr>`pending`</nobr> | Airbnb only: for those clients using Airbnb's Request to Book functionality. Client needs to approve or decline the reservation. If approved, the status will change to new. If declined, the status wil be expired
<nobr>`awaitingPayment`</nobr> | Airbnb only: Intermediary reservation states that require guest action (no host action). If the guest fails to complete their tasks, this would result in status cancelled, otherwise status will be new. This status blocks the calendar
<nobr>`declined`</nobr> | Airbnb only as a result of declining a Request to Book reservation (pending)
<nobr>`expired`</nobr> | As explained in row 5
<nobr>`unconfirmed`</nobr> | Vrbo only: similar to pending status for those clients that use Vrbo Request to Book functionality. Client needs to approve or decline the reservation. If approved the status will change to new, if declined it will change to cancelled
<nobr>`awaitingGuestVerification`</nobr> | Airbnb only: Intermediary reservation states that require guest action (no host action). If the guest fails to complete their tasks, this would result in status cancelled, otherwise status will be new. This status blocks the calendar
<nobr>`inquiry`</nobr> | Reservation status representing a guest question which doesn't block the calendar
<nobr>`inquiryPreapproved`</nobr> | Airbnb only: Hosts can preapprove the guest to encourage reservation. The host will have 24 hours to confirm their reservation. If they don't the reservation will show status inquiryTimeout. The host can also decline the inquriy and the reservation will have status inquiryNotPossible.
<nobr>`inquiryDenied`</nobr> | Airbnb only: If a host does not preapprove a guest they will receive a simple inquiry. Hosts will still have 24 to approve or deny de inquiry. If approved it will become a new reservation. If declined it will show status inquiryDenied
<nobr>`inquiryTimedout`</nobr> | as explained in row 13
<nobr>`inquiryNotPossible`</nobr> | as explained in row 13
<nobr>`unknown`</nobr> | Airbnb only: something made the inquiry fail.
