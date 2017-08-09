## Batch calendar update

### Request

```shell
curl -X PUT \
  http://api.hostaway.com/v1/listings/40160/calendarIntervals \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIiwiaWF0IjoxNDk5NzczMjk4LCJuYmYiOjE0OTk3NzMyOTgsImV4cCI6MTUxNTY3MDg5OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.RYS6Gi7iLyhHRAzNRPPMUd5jYlGJ5Psq2ejFLDM5wmD1alAB6CdkTIuyrDrtJzkcAyPBpjKBAtDzGzsVrEUxMU90FJG8UO-AXrhxMN0GVtcWqpT5ndCSx0aWEv2TMAOwLX0uU5BSCSzM0jmS2c21gNzRqW2-kMgLfMwMzkVZhas' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '[
	{
	    "startDate": "2017-10-05",
	    "endDate": "2017-10-06",
	    "isAvailable": 1,
	    "price": 20,
	    "currency": "EUR",
	    "minimumStay": 1,
	    "maximumStay": 1125,
	    "closedOnArrival": null,
	    "closedOnDeparture": null,
	    "roomsToSell": null,
	    "note": "test"
	},
	{
	    "startDate": "2017-10-10",
	    "endDate": "2017-10-11",
	    "isAvailable": 1,
	    "price": 21,
	    "currency": "EUR",
	    "minimumStay": 1,
	    "maximumStay": 1125,
	    "closedOnArrival": null,
	    "closedOnDeparture": null,
	    "roomsToSell": null,
	    "note": "test"
	}
]'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.hostaway.com/v1/listings/40160/calendarIntervals",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_POSTFIELDS => "[\n\t{\n\t    \"startDate\": \"2017-10-05\",\n\t    \"endDate\": \"2017-10-06\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 20,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t},\n\t{\n\t    \"startDate\": \"2017-10-10\",\n\t    \"endDate\": \"2017-10-11\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 21,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t}\n]",
  CURLOPT_HTTPHEADER => array(
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIiwiaWF0IjoxNDk5NzczMjk4LCJuYmYiOjE0OTk3NzMyOTgsImV4cCI6MTUxNTY3MDg5OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.RYS6Gi7iLyhHRAzNRPPMUd5jYlGJ5Psq2ejFLDM5wmD1alAB6CdkTIuyrDrtJzkcAyPBpjKBAtDzGzsVrEUxMU90FJG8UO-AXrhxMN0GVtcWqpT5ndCSx0aWEv2TMAOwLX0uU5BSCSzM0jmS2c21gNzRqW2-kMgLfMwMzkVZhas",
    "cache-control: no-cache",
    "content-type: application/json",
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
```

```javascript
var data = JSON.stringify([
  {
    "startDate": "2017-10-05",
    "endDate": "2017-10-06",
    "isAvailable": 1,
    "price": 20,
    "currency": "EUR",
    "minimumStay": 1,
    "maximumStay": 1125,
    "closedOnArrival": null,
    "closedOnDeparture": null,
    "roomsToSell": null,
    "note": "test"
  },
  {
    "startDate": "2017-10-10",
    "endDate": "2017-10-11",
    "isAvailable": 1,
    "price": 21,
    "currency": "EUR",
    "minimumStay": 1,
    "maximumStay": 1125,
    "closedOnArrival": null,
    "closedOnDeparture": null,
    "roomsToSell": null,
    "note": "test"
  }
]);

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("PUT", "http://api.hostaway.com/v1/listings/40160/calendarIntervals");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIiwiaWF0IjoxNDk5NzczMjk4LCJuYmYiOjE0OTk3NzMyOTgsImV4cCI6MTUxNTY3MDg5OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.RYS6Gi7iLyhHRAzNRPPMUd5jYlGJ5Psq2ejFLDM5wmD1alAB6CdkTIuyrDrtJzkcAyPBpjKBAtDzGzsVrEUxMU90FJG8UO-AXrhxMN0GVtcWqpT5ndCSx0aWEv2TMAOwLX0uU5BSCSzM0jmS2c21gNzRqW2-kMgLfMwMzkVZhas");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "[\n\t{\n\t    \"startDate\": \"2017-10-05\",\n\t    \"endDate\": \"2017-10-06\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 20,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t},\n\t{\n\t    \"startDate\": \"2017-10-10\",\n\t    \"endDate\": \"2017-10-11\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 21,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t}\n]");
Request request = new Request.Builder()
  .url("http://api.hostaway.com/v1/listings/40160/calendarIntervals")
  .put(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIiwiaWF0IjoxNDk5NzczMjk4LCJuYmYiOjE0OTk3NzMyOTgsImV4cCI6MTUxNTY3MDg5OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.RYS6Gi7iLyhHRAzNRPPMUd5jYlGJ5Psq2ejFLDM5wmD1alAB6CdkTIuyrDrtJzkcAyPBpjKBAtDzGzsVrEUxMU90FJG8UO-AXrhxMN0GVtcWqpT5ndCSx0aWEv2TMAOwLX0uU5BSCSzM0jmS2c21gNzRqW2-kMgLfMwMzkVZhas")
  .addHeader("content-type", "application/json")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.com")

payload = "[\n\t{\n\t    \"startDate\": \"2017-10-05\",\n\t    \"endDate\": \"2017-10-06\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 20,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t},\n\t{\n\t    \"startDate\": \"2017-10-10\",\n\t    \"endDate\": \"2017-10-11\",\n\t    \"isAvailable\": 1,\n\t    \"price\": 21,\n\t    \"currency\": \"EUR\",\n\t    \"minimumStay\": 1,\n\t    \"maximumStay\": 1125,\n\t    \"closedOnArrival\": null,\n\t    \"closedOnDeparture\": null,\n\t    \"roomsToSell\": null,\n\t    \"note\": \"test\"\n\t}\n]"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjJjZGRkYzNiZWU3OGEyZTA5NDgzNmZiYzE3MTQ3M2EwNjlkYTZlYzRjNmRlZDc1NTAzMWYzMzNmODVjYmQyMzI0Y2E4MTk0NzNkYzkxNjYzIiwiaWF0IjoxNDk5NzczMjk4LCJuYmYiOjE0OTk3NzMyOTgsImV4cCI6MTUxNTY3MDg5OCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.RYS6Gi7iLyhHRAzNRPPMUd5jYlGJ5Psq2ejFLDM5wmD1alAB6CdkTIuyrDrtJzkcAyPBpjKBAtDzGzsVrEUxMU90FJG8UO-AXrhxMN0GVtcWqpT5ndCSx0aWEv2TMAOwLX0uU5BSCSzM0jmS2c21gNzRqW2-kMgLfMwMzkVZhas",
    'content-type': "application/json",
    'cache-control': "no-cache",
    }

conn.request("PUT", "/v1/listings/40160/calendarIntervals", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`PUT https://api.hostaway.com/v1/listings/{listingId}/calendarIntervals`

An array of calendar day objects should be provided in the request body.
Additionally `starDate` and `endDate` parameters should be specified to define dates interval to update.

### Response

An empty success response or error response.
