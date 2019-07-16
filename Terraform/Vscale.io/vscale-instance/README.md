# Vscale deploy scalet-instance module
### модуль для создания ВМ в сервисе [vscale.io](https://vscale.io)
##### Переменные:
  - scalet_name (!)
    > имя создаваемой ВМ, default = null

  - scalet_token (!)
    > token from vscale.io, default = null

  - scalet_location
    > размещение сервера, default = spb0

  - scalet_plan
    > тариф, default = small

  - scalet_image
    > лист с дисками для установки, default = "debian_9_64_001_master", "centos_7_64_001_master"

  - scalet_image_index
    > указатель на диск, кототорый будем использоваться, default = 0, то есть "debian_9_64_001_master"

  - scalet_ssh_key_path
    > путь до ssh ключа в вашей системе, default = "~/.ssh/id_rsa.pub"

  - scalet_ssh_key_name
    > название ресурса для ssh-ключа в vscale интерфейсе, default = "root-key"

  - scalet_default_user
    > пользователь в создаваемо системе, ssh-ключ так же привязывается к нему, default = "root"

  - **(!) - заполнять обязательно**

#### Outputs
  - scalet_ip-address
    > ip адрес полученной ВМ

#### Пример использования
  ```
  module "vscale-instance" {
  source              = "./module/vscale-instance"
  scalet_token        = "${var.token}"
  scalet_name         = "dev1"
  scalet_image_index  = "0"
  scalet_default_user = "root"
}

  ```

##### Автор
 - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
 - [сайт](https://vk.com/realmanual)
