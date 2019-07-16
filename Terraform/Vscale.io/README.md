
### Требования
 - Terraform 0.10.x
 - Go 1.8 (to build the provider plugin)

### Подключение провайдера в terraform
```
export PROVIDER_NAME=vscale
mkdir -p $GOPATH/src/github.com/terraform-providers
cd $GOPATH/src/github.com/terraform-providers
git clone https://github.com/vganyn/terraform-provider-vscale
cd $GOPATH/src/github.com/terraform-providers/terraform-provider-$PROVIDER_NAME
go get
go build
mkdir -p ~/.terraform.d/plugins/
mv terraform-provider-$PROVIDER_NAME ~/.terraform.d/plugins/
```

###### Авторство плагина
  - https://github.com/vganyn

##### Автор
  - **Vassiliy Yegorov** - *Initial work* - [vasyakrg](https://github.com/vasyakrg)
  - [сайт](https://vk.com/realmanual)
