# Database

### users テーブル
|column               |type    |
|:-----               |-----   |
|name                 |string  |
|height               |string  |
|weight               |string  |
|image                |string  |

+ has_many clothe
+ has_many shops
+ has_many messages

### clothesテーブル

|column               |type    |
|:-----               |-----   |
|tops                 |string  |
|jacket               |string  |
|pants                |string  |
|shoes                |string  |
|bag                  |string  |
|hat                  |string  |
|accessories          |string  |
|wallet               |string  |
|watch                |string  |

+ belongs_to user
+ has_many shops
+ has_many shops through shop_clothes

### chatテーブル

|column               |type    |
|:-----               |-----   |
|text                 |string  |
|image                |string  |
|user_id              |references |

### shopテーブル

|column               |type    |
|:-----               |------  |
|name                 |string  |
|location             |text    |

+ belongs_to user
+ has_many clothes through shop_clothes


### shop_clothesテーブル
|column               |type    |
|:-----               |-----   |
|user_id              |references|
|clothes_id           |references|

+ belongs_to user
+ belongs_to shop
