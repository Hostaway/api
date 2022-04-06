## Create cancellation policy

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/cancellationPolicies \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII' \
  -d '{
    "name": "New cancellation policy name",
    "cancellationPolicyItem": [
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        },
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        },
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        }
    ]
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/cancellationPolicies",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"name\": \"Cancellation policies\",\n    \"cancellationPolicyItem\": [\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        }\n    ]\n}\n",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjNhMWY4MzIwZTU5Zjc5YTJlNzMxNzBkYzU5MDk5MzdlNTU2NGVmNWQwOTgzNjk3N2ZjMjZiYmQ4MWJlYWFjNzI0OTk5Y2ZiZWQ1N2FiMmYiLCJpYXQiOjE2Mzc0ODc0ODYsIm5iZiI6MTYzNzQ4NzQ4NiwiZXhwIjoxNzAwNTU5NDg2LCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Mn0.Mt3I5myc1G1aJ3Rls5JYGggFiNh3LH9I88AJYmucXjd3qeE-jICpg49eIvBHSv6KGGqzl-ApuV3_3j5pSIbHXjUYqmXvE6WeU-kcRMCnZ3V4yDQ4Zh_-m5kKCEn4gx4A_flWf4EhS7UJL24FPS3y5CWIQR2rvWJUPnMs_obV1s4",
    "Postman-Token: f86ea419-a48d-403c-8beb-b89c0187ccf4",
    "cache-control: no-cache"
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
var data = JSON.stringify({
    "name": "New cancellation policy name",
    "cancellationPolicyItem": [
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        },
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        },
        {
            "refundAmount": 30,
            "refundType": "percentage",
            "refundField": "totalPrice",
            "timeDelta": 3600,
            "event": "reservation"
        }
    ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/cancellationPolicies");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"name\": \"Cancellation policies\",\n    \"cancellationPolicyItem\": [\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        }\n    ]\n}\n");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/cancellationPolicies")
  .post(body)
  .addHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII")
  .addHeader("Content-Type", "application/json")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.com")

payload = "{\n    \"name\": \"Cancellation policies\",\n    \"cancellationPolicyItem\": [\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        },\n        {\n            \"refundAmount\": 30,\n            \"refundType\": \"percentage\",\n            \"refundField\": \"totalPrice\",\n            \"timeDelta\": 3600,\n            \"event\": \"reservation\"\n        }\n    ]\n}\n"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII",
    'Content-Type': "application/json",
    'Cache-Control': "no-cache"
    }

conn.request("POST", "v1/cancellationPolicies", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/cancellationPolicies`

### Response

The created cancellation policy or error response.
