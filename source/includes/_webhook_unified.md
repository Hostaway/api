## Unified webhooks

Unified webhooks is the new way to get updates from Hostaway platform.
The idea behind unified webhooks is customers and partners can configure one or more endpoints that Hostaway platform 
will call and provide updates.
The unified means that you don't have to configure different endpoints for different objects or events. You configure it
once, and we will call the endpoints as soon as we have an update for you. 

The unified webhook system is not trying to "filter" events for you. For example, the old reservation webhook system
will trigger reservation update event only if a reservation's status was modified. So if reservation was modified 
and later modified again you will not get a webhook about the second one.
With unified webhooks we will notify you everytime there is a reservation modification.  

This means you have to filter events on your end. There are the cases when you can receive more than one notification about
the same update. Make sure your system can handle that properly.
 
If you have the old (reservation/conversation) and the new (unified) webhooks configured we will trigger 
both of them for the backward compatibility.

We will be adding more events, so if you receive a webhook with an event that you don't support yet, just return a 200 response.

Any non-2xx response is treated as a failed delivery. When a delivery fails because of a **transient problem** — a connection or network error, a server error (5xx), or a "too many requests" (429) response — we will retry delivery up to **3 times**. The first retry happens quickly (about a minute later) to recover from brief network blips, and the remaining retries use exponential backoff, so all retries occur within roughly one hour of the original event.

Other **client errors** (4xx responses other than 429, such as 400, 401, 403 or 404) are treated as permanent failures: we will **not** retry them, since a retry is unlikely to succeed. Make sure your endpoint returns a 2xx status once it has accepted the webhook.

Make sure you don't have a high error rate for webhooks, because we will be **disabling** webhooks that fail for **5 consecutive days**. We expect to receive a response acknowledging successful receipt within 30 seconds. If processing takes longer than that, try queueing techniques: you can log the request, return 200, and process it later asynchronously.

Right now the system supports the following events:

- reservation created
- reservation updated
- new message received








