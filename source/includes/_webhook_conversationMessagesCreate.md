## Create a conversation message webhook

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/webhooks/conversationMessages \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII' \
  -d '{
    "listingMapId": null,
    "channelId": null,
    "isEnabled": "1",
    "url": "http://httpbin.org/post"
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
    "Cache-Control: no-cache",
    "Content-Type: application/json",
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII"
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
    "url": "http://httpbin.org/post"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/webhooks/conversationMessages");
xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"channelId\": null,\n    \"listingMapId\": null,\n   \"isEnabled\": 1,\n     \"url\": \"http://httpbin.org/post\", \n}");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/webhooks/conversationMessages")
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

payload = "{\n    \"channelId\": null,\n    \"listingMapId\": null,\n   \"isEnabled\": 1,\n     \"url\": \"http://httpbin.org/post\",\n }"

headers = {
    'authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0In0.eyJhdWQiOiIxMDQ5MCIsImp0aSI6ImU3ZDRkNDM1ZDQ0M2UwYTJkYTYxOTE5Yzk0NWY3ODk0YThhYTMzZjM1MjM2ZWEzY2NiZjEwMzJmNTM2YzRiYjVhY2Y3YTkzYTNkN2ZhYjQ0IiwiaWF0IjoxNTI4MjgzMjgwLCJuYmYiOjE1MjgyODMyODAsImV4cCI6MTU0MzgzNTI4MCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.pzzHM2Qebad--FC8iwWZrFpblWQyiCKiroaEyrXKPWTXug3soe-62HK1bzZVlLQEJa166AtkevdEjXkOhQ6yRMJh3LlINrOKpLOSZKeTyMIydtYCdXJyWqgl3b3llAk8dZyQ8L8J_oyV9sRWMhy7MuIgAyFf1ITdVS2Z94KdyII",
    'Content-Type': "application/json",
    'Cache-Control': "no-cache"
    }

conn.request("POST", "v1/webhooks/conversationMessages", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/webhooks/conversationMessages`

A conversation message webhook object should be provided in the request body.

### Response

The created conversation message webhook object or error response.
