## Create a conversation message webhook

**WARNING:** Conversation Message webhooks will be deprecated soon. Please consider using [Unified webhooks](#unified-webhooks) instead.

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/webhooks/conversationMessages \
  -H 'Cache-control: no-cache' \
  -H 'Content-type: application/json' \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII' \
  -d '{
    "listingMapId": null,
    "channelId": null,
    "isEnabled": "1",
    "url": "http://httpbin.org/post",
    "login": "my_login",
    "password": "****"
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/webhooks/conversationMessages",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"channelId\": null,\n    \"listingMapId\": null,\n   \"isEnabled\": 1,\n     \"url\": \"http://httpbin.org/post\",\n }",
  CURLOPT_HTTPHEADER => array(
    "Cache-control: no-cache",
    "Content-type: application/json",
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII"
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
    "listingMapId": null,
    "channelId": null,
    "isEnabled": "1",
    "url": "http://httpbin.org/post",
    "login": "my_login",
    "password": "****",
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/webhooks/conversationMessages");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII");
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"channelId\": null,\n    \"listingMapId\": null,\n   \"isEnabled\": 1,\n     \"url\": \"http://httpbin.org/post\", \n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/webhooks/conversationMessages")
  .post(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII")
  .addHeader("Content-type", "application/json")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client
import json

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = {
    "channelId": None,
    "listingMapId": None,
    "isEnabled": 1,
    "url": "http://httpbin.org/post"
}

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII",
    'Content-type': "application/json",
    'Cache-control': "no-cache"
}

payload_json = json.dumps(payload)

conn.request("POST", "/v1/webhooks/conversationMessages", payload_json, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/webhooks/conversationMessages`

A conversation message webhook object should be provided in the request body.

### Response

The created conversation message webhook object or error response.
