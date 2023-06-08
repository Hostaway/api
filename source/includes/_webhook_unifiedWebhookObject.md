## Unified webhook object

```json
{
    "id": 2,
    "isEnabled": 1,
    "url": "https://api.example.com",
    "login": null,
    "password": null,
    "alertingEmailAddress": null
}
```

| Property                | Required | Type   | Description                  |
|-------------------------|----------|--------|------------------------------| 
| `id`                    | yes      | int    | Identifier of webhook object |
| `isEnabled`             | yes      | int    | Is webhook enabled           |
| `url`                   | yes      | int    | URL Hostaway will call       |
| `login`                 | no       | string | Basic auth login             |
| `password`              | no       | string | Basic auth password          |
| `alertingEmailAddress`  | no       | string | Alert email address          |
