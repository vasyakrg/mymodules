# AWS deploy domain module

### модуль для создания домена и привязки к нему записей в сервисе [AWS](https://aws.amazon.com)

##### Переменные:
  - dns_zone_name (!)
    > имя **существующиего** домена в сервисе AWS у пользователя, кредами которого вы заходите, default = **null**

  - record_name (!)
    > имя создаваемой записи, default = **null**

  - record_type (!)
    > тип записи, default = null, значения = SOA A TXT NS CNAME MX NAPTR PTR SRV SPF AAAA CAA

  - records (!)
    > значение записи, тип записи - лист, default = **null**, ip-адрес или текст (нет у SRV)

  - record_ttl
    > Время жизни записи, default = 300, минимальное значение - 60, максимальное - 604 800

  - **(!) - заполнять обязательно**

#### Outputs
  - domain_name
  - records

#### Пример использования
  ```
  module "aws-domain" {
    source        = "./module/aws-domain"
    dns_zone_name = "aits.life"
    record_name   = "test1"
    records       = ["1.2.3.1", "1.2.3.2", "1.2.3.3"]
  }
  ```

#### Не забудьте
 - Если использовать сервис, то доменное имя должно быть делегировано на NS-сервера AWS

##### Автор
 - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
 - [сайт](https://vk.com/realmanual)
