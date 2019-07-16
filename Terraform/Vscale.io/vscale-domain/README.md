# Vscale deploy scalet-domain module
### модуль для создания домена и привязки к нему записей в сервисе [vscale.io](https://vscale.io)
##### Переменные:
  - domain_name (!)
    > имя создаваемого домена, default = **null**

  - record_name (!)
    > имя создаваемой записи, default = **null**

  - record_type (!)
    > тип записи, default = null, значения = SOA, NS, A/AAAA, CNAME, SRV, MX, TXT, SPF

  - record_content (!)
    > значение записи, default = **null**, ip-адрес или текст (нет у SRV)

  - record_ttl
    > Время жизни записи, deafult = 86400, минимальное значение - 60, максимальное - 604 800

  - **(!) - заполнять обязательно**

#### Outputs
  - domain_name
  - record_name
  - record_type

#### Пример использования
  ```
  module "vscale-domain" {
    source         = "./module/vscale-domain"
    domain_name    = "example.com"
    record_type    = "A"
    record_name    = "foo.example.com"
    record_content = "1.2.3.4"
    record_ttl     = 86400
  }
  ```

#### Не забудьте
 - Если использовать сервис, то доменное имя должно быть делегировано на:
   > ns1.vscale.io

   и

   >ns2.vscale.io

##### Автор
 - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
 - [сайт](https://vk.com/realmanual)
