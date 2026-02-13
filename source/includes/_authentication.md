# Authentication

We use [Client Credentials Grant](https://tools.ietf.org/html/rfc6749#page-40) of OAuth 2.0 protocol for API authentication. 

### Request

```shell
curl -X POST \
  https://api.hostaway.com/v1/accessTokens \
  -H 'Cache-control: no-cache' \
  -H 'Content-type: application/x-www-form-urlencoded' \
  -d 'grant_type=client_credentials&client_id={your Hostaway account ID}&client_secret=yourclientsecret&scope=general'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/accessTokens",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "grant_type=client_credentials&client_id={your Hostaway account ID}&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general",
  CURLOPT_HTTPHEADER => array(
    "Cache-control: no-cache",
    "Content-type: application/x-www-form-urlencoded"
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
var data = "grant_type=client_credentials&client_id={your Hostaway account ID}&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://api.hostaway.com/v1/accessTokens");
xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
RequestBody body = RequestBody.create(mediaType, "grant_type=client_credentials&client_id={your Hostaway account ID}&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general");
Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/accessTokens")
  .post(body)
  .addHeader("Content-type", "application/x-www-form-urlencoded")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = "grant_type=client_credentials&client_id={your Hostaway account ID}&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general"

headers = {
    'Content-type': "application/x-www-form-urlencoded",
    'Cache-control': "no-cache"
    }

conn.request("POST", "/v1/accessTokens", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`POST https://api.hostaway.com/v1/accessTokens`

To issue a new access token the client sends a `POST` request with following request body parameters to the 
Authorization server endpoint:

Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`grant_type` | yes | string | Should be `client_credentials`
`client_id` | yes | int | Your Hostaway account ID
`client_secret` | yes | string | Client’s secret (can be obtained in your Hostaway dashboard)
`scope` | yes | string | Should be `general`

### Response

```json
{
    "token_type": "Bearer",
    "expires_in": 15897600,
    "access_token": "yournewaccesstoken"
}
```

The Authorization server will respond with a JSON object containing the following properties:

Property | Type | Description
-------- | ---- | ----------- 
`token_type` | string | `Bearer` is always returned
`expires_in` | int | An integer representing the TTL of the access token
`access_token` | string | A JWT signed with the Authorization server’s private key

The access token should be included in all other API requests to the server in a header and should look like the following:

`Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiId
sImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZ
jIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2J
kZWM0MDNiMzMwNzhhYTIyN2JmIiwi`

**The token will be valid 1 second after being returned from the API.
Please wait at least 1 second before making API calls using a newly issued token.**

Time to live for the generated access token is 24 months.

<aside class="warning">
Please keep your API secret and access tokens strictly private
</aside>

## Revoke Authentication Token

### Request

```shell
curl --location --request DELETE 'https://api.hostaway.com/v1/accessTokens?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMjQ3MSIsImp0aSI6IjA4ODkwMzgwYzU0NzA4MWM1MmEwYWU5Y2I1NmIwNmZhMWZkMjgwNTY1YWRjNmQ0NTc2MjNjNTk1ZmUyYzlhYzM5NDE2NmFjZmJjY2IyZmIwIiwiaWF0IjoxNTg1ODUxNDI1LCJuYmYiOjE1ODU4NTE0MjUsImV4cCI6MTY0ODkyMzQyNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.R5TPnSTMYs7rSXNFj_GLxjO2vag2tKbsGKcSgMCFDXq6K0gLp-z52nOuCbCY7UlZnvbAFXi2zIpV-qzwCrBDHKi-YsY-LJEY5xzj8VTnlKiC9zKfRqhIaL_G3EQAvyFW04Kp2VXP3d7d_GiAFhTo412pjmrJIm6gN-N2JX6B-xo' \
--header 'Content-type: application/x-www-form-urlencoded'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.hostaway.com/v1/accessTokens?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMjQ3MSIsImp0aSI6IjA4ODkwMzgwYzU0NzA4MWM1MmEwYWU5Y2I1NmIwNmZhMWZkMjgwNTY1YWRjNmQ0NTc2MjNjNTk1ZmUyYzlhYzM5NDE2NmFjZmJjY2IyZmIwIiwiaWF0IjoxNTg1ODUxNDI1LCJuYmYiOjE1ODU4NTE0MjUsImV4cCI6MTY0ODkyMzQyNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.R5TPnSTMYs7rSXNFj_GLxjO2vag2tKbsGKcSgMCFDXq6K0gLp-z52nOuCbCY7UlZnvbAFXi2zIpV-qzwCrBDHKi-YsY-LJEY5xzj8VTnlKiC9zKfRqhIaL_G3EQAvyFW04Kp2VXP3d7d_GiAFhTo412pjmrJIm6gN-N2JX6B-xo",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "DELETE",
  CURLOPT_HTTPHEADER => array(
    "Cache-control: no-cache",
    "Content-type: application/x-www-form-urlencoded"
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

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("DELETE", "https://api.hostaway.com/v1/accessTokens?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMjQ3MSIsImp0aSI6IjA4ODkwMzgwYzU0NzA4MWM1MmEwYWU5Y2I1NmIwNmZhMWZkMjgwNTY1YWRjNmQ0NTc2MjNjNTk1ZmUyYzlhYzM5NDE2NmFjZmJjY2IyZmIwIiwiaWF0IjoxNTg1ODUxNDI1LCJuYmYiOjE1ODU4NTE0MjUsImV4cCI6MTY0ODkyMzQyNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.R5TPnSTMYs7rSXNFj_GLxjO2vag2tKbsGKcSgMCFDXq6K0gLp-z52nOuCbCY7UlZnvbAFXi2zIpV-qzwCrBDHKi-YsY-LJEY5xzj8VTnlKiC9zKfRqhIaL_G3EQAvyFW04Kp2VXP3d7d_GiAFhTo412pjmrJIm6gN-N2JX6B-xo");
xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("Cache-control", "no-cache");

xhr.send();
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");

Request request = new Request.Builder()
  .url("https://api.hostaway.com/v1/accessTokens?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMjQ3MSIsImp0aSI6IjA4ODkwMzgwYzU0NzA4MWM1MmEwYWU5Y2I1NmIwNmZhMWZkMjgwNTY1YWRjNmQ0NTc2MjNjNTk1ZmUyYzlhYzM5NDE2NmFjZmJjY2IyZmIwIiwiaWF0IjoxNTg1ODUxNDI1LCJuYmYiOjE1ODU4NTE0MjUsImV4cCI6MTY0ODkyMzQyNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.R5TPnSTMYs7rSXNFj_GLxjO2vag2tKbsGKcSgMCFDXq6K0gLp-z52nOuCbCY7UlZnvbAFXi2zIpV-qzwCrBDHKi-YsY-LJEY5xzj8VTnlKiC9zKfRqhIaL_G3EQAvyFW04Kp2VXP3d7d_GiAFhTo412pjmrJIm6gN-N2JX6B-xo")
  .delete()
  .addHeader("Content-type", "application/x-www-form-urlencoded")
  .addHeader("Cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPSConnection("api.hostaway.com")

payload = ""

headers = {
    'Content-type': "application/x-www-form-urlencoded",
    'Cache-control': "no-cache"
    }

conn.request("DELETE", "/v1/accessTokens?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMjQ3MSIsImp0aSI6IjA4ODkwMzgwYzU0NzA4MWM1MmEwYWU5Y2I1NmIwNmZhMWZkMjgwNTY1YWRjNmQ0NTc2MjNjNTk1ZmUyYzlhYzM5NDE2NmFjZmJjY2IyZmIwIiwiaWF0IjoxNTg1ODUxNDI1LCJuYmYiOjE1ODU4NTE0MjUsImV4cCI6MTY0ODkyMzQyNSwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.R5TPnSTMYs7rSXNFj_GLxjO2vag2tKbsGKcSgMCFDXq6K0gLp-z52nOuCbCY7UlZnvbAFXi2zIpV-qzwCrBDHKi-YsY-LJEY5xzj8VTnlKiC9zKfRqhIaL_G3EQAvyFW04Kp2VXP3d7d_GiAFhTo412pjmrJIm6gN-N2JX6B-xo", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

`DELETE https://api.hostaway.com/v1/accessTokens`

To revoke existing access token the client sends a `DELETE` request with following request URL parameters to the 
Authorization server endpoint:

Parameter | Required | Type | Description
--------- | -------- | ---- | -----------
`token` | yes | string | Should be token you generated using POST request

### Response

```json
{
    "status": "success",
    "result": []
}
```

Revoked access tokens can no longer be used to access Public API endpoints.
