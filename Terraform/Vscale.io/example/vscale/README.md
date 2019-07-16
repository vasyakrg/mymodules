# Создание инстанса в vscale

### Что надо подготовить:
  * файл terraform.tfvars.example переименовать в terraform.tfvars и прописать токен vscale
  * в файле vars.tf (переименовать с example) указать регион (если нужен другой) и другие параметры по потребности

### Запускать:
- инициализируем:
       > terraform init

- проверяем на ошибки:
       > terraform plan

- создаем ВМ:
       > terraform apply

##### Автор
 - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
 - [сайт](https://vk.com/realmanual)
