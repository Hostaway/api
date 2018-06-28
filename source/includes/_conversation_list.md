## Retrieve a conversations list

### Request

```shell
curl -X GET \
  http://api.hostaway.local/v1/conversations \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 88849e22-d5b4-4a99-8a59-b1d14d7b6ac8' \
  -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q' \
  -d '{
	"body": " "
}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.hostaway.local/v1/conversations",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "{\n\t\"body\": \" \"\n}",
  CURLOPT_HTTPHEADER => array(
    "Cache-Control: no-cache",
    "Content-Type: application/json",
    "Postman-Token: 9ee45161-7b47-47c4-b95f-97590f34521d",
    "authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIn0.eyJhdWQiOiIxMDQ1MCIsImp0aSI6IjljOGYzN2NjMzAzNWI5M2Q5MzJiMGZjZGYwOGYzNjc2NDA5MWNjMTI3MTY0ZWZhOGIzMTk1ZjRiOTU4YjNkZjYxZWNlZjVmOGJhMzkxZGYyIiwiaWF0IjoxNTI2NjQ0MzE0LCJuYmYiOjE1MjY2NDQzMTQsImV4cCI6MTU0MjE5NjMxNCwic3ViIjoiIiwic2NvcGVzIjpbImdlbmVyYWwiXX0.hVv1ybL5Ifl6VatEBXxJz4sNa7f2RPGlSGCK5YNiSDNBeW9FjgfzbKFW4GaKGXNBYk2b7TpxhwF_3RbBRE0Y817TIiwUNZEhMCz5do4Kp9ZX6nrHlvJiqdLYZXhaHUlU8vq-80a0xTmgVnjRH20JeA0q9t8gxcfYJUQfQMOb59Q"
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

### Response

An array of conversation objects.