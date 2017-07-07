This is a copy application of air-bnb.

### Database.

#### ・ user
|column name|type|restriction|
|:---|:---|:--|
|name|text|null: false|
|email||null: false|
|password||null: false|

#### ・review
|column name|type|restriction|
|:---|:---|:--|
|body|text|null: false|
|image|text|
|user_id||foreign_key: true|
|room_id||foreign_key: true|

#### ・room
|column name|type|restriction|
|:---|:---|:--|
|image|text|
|address|text|
|user_id|
|listing(description)|text|

#### ・reservation
|column name|type|restriction|
|:---|:---|:--|
|user_id||foreign_key: true|
|room_id||foreign_key: true|
|guest|string

add .github file.
add pull request template.
this is a test.

test

test
