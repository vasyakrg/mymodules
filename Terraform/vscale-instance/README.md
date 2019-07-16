# Vscale deploy scalet-instance module
### модуль для создания вм в сервисе [vscale.io](https://vscale.io)
##### Переменные:
  - scalet_token
    >

  - scalet_location
    >

  - scalet_plan
    >

  - scalet_image
    >

  - scalet_image_index
    >

  - scalet_ssh_key_path
    >

  - scalet_ssh_key_name
    >

  - scalet_default_user
    >

#### Outputs
  - scalet_ip-address

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
