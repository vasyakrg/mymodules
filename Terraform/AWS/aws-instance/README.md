# AWS deploy instance module

### модуль для создания ВМ в сервисе [AWS](aws.amazon.com)

##### Переменные:
  - ami
    > образ диска для создаваемой ВМ, default = "ami-0986c2ac728528ac2" # Ubuntu 18.04

  - plan
    > тип создаваемой машины, default = "t2.micro"

  - monitoring_allow
    > подключение сервиса мониторинга ВМ, default = false

  - security_groups
    > группы сетевой безопасности, default = default (так же создается и подключается группа allow_ssh, открывающая 22 порт)

  - ssh_key_name (!)
    > имя ключа из личного раздела KeyPairs в AWS, default = **null**

  - tags
    > теги для создаваемой машины, default = **null**


  - **(!) - заполнять обязательно**

#### Outputs
  - instance_private_ip
  - instance_public_ip
  - instance_public_dns

#### Пример использования
  ```
  module "aws-instance" {
    source       = "./module/aws-instance"
    ssh_key_name = "ssh-deployer"
    tags = {
      Name = "test-1"
    }
  }
  ```

##### Автор
 - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
 - [сайт](https://vk.com/realmanual)
