## Create or update LOS records

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/los/86156 \
  -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo' \
  -H 'Cache-control: no-cache' \
  -d '[
	{
    	"checkin": "2021-01-01",
    	"occupancy": 1,
    	"prices": "1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00"
	},
	{
    	"checkin": "2021-01-02",
    	"occupancy": 1,
    	"prices": "1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00"
	},
	{
    	"checkin": "2021-01-03",
    	"occupancy": 1,
    	"prices": "1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00"
	}
]'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/los/86156",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "[\n\t{\n    \t\"checkin\": \"2021-01-01\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t},\n\t{\n    \t\"checkin\": \"2021-01-02\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t}\n]",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    "Cache-control: no-cache"
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
var data = "[\n\t{\n    \t\"checkin\": \"2021-01-01\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t},\n\t{\n    \t\"checkin\": \"2021-01-02\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t}\n]";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
    if (this.readyState === 4) {
        console.log(this.responseText);
    }
});

xhr.open("POST", "https://api.hostaway.com/v1/los/86156");
xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("text/plain");
RequestBody body = RequestBody.create(mediaType, "[\n\t{\n    \t\"checkin\": \"2021-01-01\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t},\n\t{\n    \t\"checkin\": \"2021-01-02\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t}\n]");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/los/86156")
  .post(body)
  .addHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = "[\n\t{\n    \t\"checkin\": \"2021-01-01\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t},\n\t{\n    \t\"checkin\": \"2021-01-02\",\n    \t\"occupancy\": 1,\n    \t\"prices\": \"1,100.10,2,200.25,28,2700.00,29,3100.00,36,7200.00\"\n\t}\n]"

headers = {
    'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYjBlNGNmYzljNWRiYWZlNjViNDRhNjVhOTJiM2FiNDQ3ZmQ2ODAxZDg3OTM4NjE2OThkMzlhOTkxZDFkZmY2ZDQ2ODI1YWUzNTcyY2JmMWMiLCJpYXQiOjE2MzEwOTYxMjIsIm5iZiI6MTYzMTA5NjEyMiwiZXhwIjoxNjk0MTY4MTIyLCJzdWIiOiIiLCJzY29wZXMiOlsiZ2VuZXJhbCJdLCJzZWNyZXRJZCI6Nn0.CYvYVdgeVZ3IMeexoykRwGozV8k1TVL7AwxYGyGHcU6aYf37bP59PWqsHJPam8l3sSFJWWecJJTFCDIKwrKR6YY_GJcSzrK5_cQJ8x4EsXFrFi2K5mvPz9UlDGSCoFEyDCP5QmCmiULb71_A-Zj-q_KEVshFh1FXu5GIVpyKxlo",
    'Cache-control': "no-cache"
    }

conn.request("POST", "v1,los,1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/los/{listingMapId}`

A los object should be provided in the request body (please check examples in the right column on different programming languages).

### Response

The created los objects or error response.
