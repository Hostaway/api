## Update task

Update task

### Request

```shell
curl --location --request PUT 'https://api.hostaway.com/v1/tasks/{taskId}' \
--header 'jwt;' \
--header 'Content-type: application/json' \
--data-raw '{
        "title": "New task",
        "categoriesMap": [1]
    }'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.hostaway.com/v1/tasks/{taskId}',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'PUT',
  CURLOPT_POSTFIELDS =>'{
        "title": "New task",
        "categoriesMap": [1]
    }',
  CURLOPT_HTTPHEADER => array(
    'jwt: ',
    'Content-type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

```

```javascript
var data = JSON.stringify({
    "title": "New task",
    "categoriesMap": [1]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
    if(this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("PUT", "https://api.hostaway.com/v1/tasks/{taskId}");
xhr.setRequestHeader("jwt", "");
xhr.setRequestHeader("Content-type", "application/json");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"title\": \"New task\",\"categoriesMap\": [1]}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/tasks/{taskId}")
  .method("PUT", body)
  .addHeader("jwt", "")
  .addHeader("Content-type", "application/json")
  .build();
Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com", undefined)
payload = json.dumps({
        "title": "New task",
        "categoriesMap": [1]
    })
headers = {
  'jwt': '',
  'Content-type': 'application/json'
}
conn.request("PUT", "/v1/tasks/{taskId}", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/tasks/{taskId}`

A task object should be provided in the request body.

### Response

Updated task object

```json
{
  "status": "success",
  "result": {
    "id": 1,
	"listingMapId": null,
	"channelId": null,
	"reservationId": null,
	"autoTaskId": null,
	"assigneeUserId": null,
	"canBePickedByGroupId": null,
	"supervisorUserId": null,
	"createdByUserId": null,
	"isUpdatedManually": 0,
	"checklistTemplateId": null,
	"reservationUnitId": 0,
	"title": "Task title",
	"description": null,
	"canStartFrom": "2023-07-01 00:00:00",
	"canStartFromListingTime": "2023-07-01 00:00:00",
	"canStartFromEvent": "arrival",
	"canStartFromEventDelta": 0,
	"shouldEndBy": "2023-07-30 00:00:00",
	"shouldEndByListingTime": "2023-07-30 00:00:00",
	"shouldEndByEvent": "departure",
	"shouldEndByEventDelta": 0,
	"status": "pending",
	"resolutionNote": null,
	"feedbackScore": null,
	"feedbackNote": null,
	"startedAt": null,
	"confirmedAt": null,
	"completedAt": null,
	"priority": null,
	"cost": null,
	"costCurrency": null,
	"costDescription": null,
	"color": null,
	"expense": null,
	"rank": 0,
	"checklistItems": [],
	"customFieldValue": [],
	"categoriesMap": null
  }
}
```
