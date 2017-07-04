---
title: Hostaway Public API Reference

language_tabs:
  - shell
  - php
  - javascript
  - java
  - python

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Hostaway Public API! This API allows Hostaway users to create, update and delete 
listings and reservations, read listing calendars, block and unblock calendar days.
Hostaway Public API is RESTful, JSON data format is used in both requests and responses bodies.

# Authentication

We use [Client Credentials Grant](https://tools.ietf.org/html/rfc6749#page-40) of OAuth 2.0 protocol for API authentication. 

###Request

```shell
curl -X POST \
  http://api.hostaway.local/v1/accessTokens \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: 7d6d594b-54be-167c-6af9-b4cdcae3ac5c' \
  -d 'grant_type=client_credentials&client_id=10450&client_secret=yourclientsecret&scope=general'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.hostaway.local/v1/accessTokens",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general",
  CURLOPT_HTTPHEADER => array(
    "cache-control: no-cache",
    "content-type: application/x-www-form-urlencoded",
    "postman-token: 807dfb7d-759a-2dc1-042e-7f959ec84024"
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
var data = "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general";

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "http://api.hostaway.local/v1/accessTokens");
xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("cache-control", "no-cache");
xhr.setRequestHeader("postman-token", "b58d7d72-fb35-fb47-61e0-7647e850df49");

xhr.send(data);
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
RequestBody body = RequestBody.create(mediaType, "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general");
Request request = new Request.Builder()
  .url("http://api.hostaway.local/v1/accessTokens")
  .post(body)
  .addHeader("content-type", "application/x-www-form-urlencoded")
  .addHeader("cache-control", "no-cache")
  .addHeader("postman-token", "75f1d83b-4455-7660-5f0c-47f9d910063f")
  .build();

Response response = client.newCall(request).execute();
```

```python
import http.client

conn = http.client.HTTPConnection("api.hostaway.local")

payload = "grant_type=client_credentials&client_id=10450&client_secret=3e58c1cee59edd616b9c060035db664c35c970e320577314c07535be87041a5d&scope=general"

headers = {
    'content-type': "application/x-www-form-urlencoded",
    'cache-control': "no-cache",
    'postman-token': "f017c0a5-a3bf-5e27-ce43-cc1f8f8bdd8b"
    }

conn.request("POST", "/v1/accessTokens", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

- Method: `POST`
- Endpoint: `http://api.hostaway.local/v1/accessTokens`

To issue a new access token the client sends a `POST` request with following request body parameters to the 
authorization server endpoint:

- `grant_type` with the value `client_credentials`
- `client_id` with the account ID
- `client_secret` with the client’s secret (can be obtained in your Hostaway dashboard)
- `scope` with the value `general`

###Response

```json
{
    "token_type": "Bearer",
    "expires_in": 15897600,
    "access_token": "yournewaccesstoken"
}
```

The authorization server will respond with a JSON object containing the following properties:

- `token_type` with the value `Bearer`
- `expires_in` with an integer representing the TTL of the access token
- `access_token` a JWT signed with the authorization server’s private key

The access token should be included in all other API requests to the server in a header and should look like the following:

`authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiId
sImp0aSI6ImQzMzBjODU4ZDUwMWY5ZTk2ZmNhMzY4NGFjODQ5MTMzODIxZ
jIyZWZhZDk2YmYxZjNjMDY0OGJjNjVlMDJkZWM0MDNiMzMwNzhhYTIyN2J
kZWM0MDNiMzMwNzhhYTIyN2JmIiwi`

Time to live for the generated access token is 6 months.

























# Kittens

## Get All Kittens

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get()
```

```shell
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let kittens = api.kittens.get();
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Max",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

