# vtikh_infra
vtikh Infra repository

## ДЗ 11 - локальное тестирование ролей с Vagrant

### vagrant ansible provisioner

Теперь код позволяет развернуть роли с приложением локально в Vagrant:
```
cd ansible
vagrant up
```
Приложение будет доступно по адресу [http://10.10.10.20:9292](http://10.10.10.20:9292)

### тестирование с помощью molecule

#### развертывание виртуального окружения python

```
sudo pip install virtualenv
virtualenv proj.venv
source proj.venv/bin/activate
```
Чтобы покинуть виртуальное окружение после работы с кодом из этого репозитория, нужно выполнить `deactivate`.

#### molecule

Для выполнения полного прогона тестов роли **db** достаточно:
```
cd ansible/roles/db
molecule test
```

Также возможен ручной запуск этапов:
```
cd ansible/roles/db
molecule create     # создание инстанса
molecule login      # вход в инстанс
molecule verify     # прогон теста molecule/default/test/test_default.py
molecule destroy    # удаление окружения
```

#### packer

Для создания образов packer теперь также использует роли Ansible. Команды сборки образов не изменились (из корня репозитория):

```
packer build -var-file packer/variables.json packer/app.json
packer build -var-file packer/variables.json packer/db.json
```

## ДЗ 10

В задании:
- провижнг ВМ переводится на роли ansible
- Применяется внешняя роль из апстрима для развертывания веб-прокси
- Проводится реоргиназация структуры каталога ansible
- вводятся два окружения
- осваивается работа с ansible vault

### Стандартное задание

Для развертывания окружений (при созданной ранее инфраструктуре с помощью terraform):

```
cd ansible
# для окружения stage:
ansible-galaxy install -r environments/stage/requirements.yml
ansible-playbook playbooks/site.yml
# для окружения prod:
ansible-galaxy install -r environments/prod/requirements.yml
ansible-playbook -i environments/prod/inventory.py playbooks/site.yml
```

В гостевых ОС также будут созданы пользователи в соответствии с зашифрованным с помощью ansible-vault файлом переменных `environments/<env>/credentials.yml`. Если хочется заглянуть в этот файл (надо знать ключ):

```
ansible-vault edit environments/<env>/credentials.yml
```


## ДЗ 09 - ansible-2

В задании выполняется провижн облачных ВМ, образов packer с помощью Ansible. На этих примерах изучаются:

- тэги
- ограничение целевых хостов (`--limit`)
- импорт плейбуков

Также развивается история с динамическим invetory.

### Стандартное задание - ВМ в yandex.cloud

Стандартное задание предполагает запуск провижининга ВМ разными способами - разными плейбуками, которые в итоге приводят к одинаковому результату.

1. Один сценарий
```
cd ansible
ansible-playbook reddit_app_one_play.yml --limit db
ansible-playbook reddit_app_one_play.yml --limit app --tags app-tag
ansible-playbook reddit_app_one_play.yml --limit app --tags deploy-tag
```

2. Множество сценариев. Тут уже применим подход:
```
ansible-playbook reddit_app_multiple_plays.yml
```
поскольку сценарии привязаны к хостам *inventory*

3. Наконец, разделение сценариев в отдельные плейбуки и сборка их вместе с помощью директивы `import_playbook` в плейбуке *site.yml*. 

### Стандартное задание - packer

Сборка образов осущесвляется теми же командами, только под капотом теперь ansible provision:

```
packer build -var-file packer/variables.json packer/app.json
packer build -var-file packer/variables.json packer/db.json
```

### Дополнительное задание

В качестве inventory в конфигурации ansible используется доработанный скрипт dyn-inventory.py. Описание см. в **ДЗ 08**. Здесь скрипт дополнен формированием дополнительной переменной с внутренним (серым) адресом ВМ db

### Примечание

Файлы *key.json.example* и *ansible.cfg*, **расположенные в корне репозитория**, нужны только для прохождения тестов CI и не используются кодом.

## ДЗ 08

### Стандартное задание
Сформирован плейбук ansible, который можно запустить, используя inventory в следующих форматах:

- `ansible-playbook clone.yml -i inventory` - для формата *ini*
- `ansible-playbook clone.yml -i inventory.yml` - для формата *yaml*
- либо просто `ansible-playbook clone.yml` - для формата инвентаря *json*, который задан по-умолчанию в **ansible.cfg**. Подробнее о нем далее.

### Дополнительное задание со \*

Скрипт **dyn-inventory.py** обеспечивает формирование в *stdout* динамического *inventory* так, что его можно использовать следующим образом:

`ansible-playbook clone.yml -i dyn-inventory.py`

Также скрипт при выполнении формирует файл-инвентарь в формате *json*, который для **ansible** имеет отличный формат от того, который скрипт генерирует в стандартный вывод. Грубо, формат отличается тем, что  для перечисления хостов для динамического inventory используется массив, заключенный в `[ .. ]`, а для статического файла-inventory в формате *json* используется вложенная структура строк - `{ .. }`.

## ДЗ 07

В ДЗ настраивается инфраструктура с двумя ВМ. Инстансы описаны в виде модулей terraform, созданы 2 окружения - stage, prod

### Использование

1. перейти в одну из директорий - `terraform/stage` или `terraform/prod`
2. создать файл `terraform.tfvars` со значениями переменных согласно образцу `terraform.tfvars.example`
3. выполнить:

```
terraform init
terraform plan
terraform apply
```

## ДЗ 06 - terraform-1

### Использование

1. Установить (terraform)[https://www.terraform.io/]
2. Создать файл с переменными, за образец взять файл `terraform/terraform.tfvars.example`
3. Перейти в каталог `terraform`
4. выполнить `terraform init`, затем `terraform apply`

## ДЗ 05 - packer base

В ДЗ 05 выполняется запекание в образ ВМ необходимых зависимостей для примера приложения, после чего приложение разворачивается "классическим" способом через выполнение команд (скрипта) в ВМ. Образ билдится в Яндекс.Облаке.

> Внимание! В ветке main в шаблонах провиженер изменен на ansible. Для оригинального кода задания смотри ветку packer-base

### Использование

1. Установить (packer)[https://www.packer.io/]
1. Установить утилиту `yc` и подготовить окружение - создать УЗ в Яндекс.Облаке, или связать окружение с существующим аккаунтом
1. подготовить файл `packer/variables.json`, основываясь на примере
2. перейти в директорию `packer` и выполнить `packer build -var-file packer/variables.json packer/ubuntu16.json`
3. после готовности образа создать на его основе ВМ и доустановить приложение в гостевой ОС в соответствии с командами скрипта `config-scripts/deploy.sh`

## ДЗ 04

Блок для автотеста:
```
testapp_IP=84.201.159.59
testapp_port=9292
```

## ДЗ 03

В разделе приводятся действия, необходимые для подтверждения выполнения домашнего задания №3.

### bastion host - стандартное задание

Для подключения к ВМ без публичного адреса, находящейся за бастион-хостом, необходимо:

1. Добавить в файл `~/.ssh/config` следующие строки:
```
Host <internal-VM-ip>
  ProxyCommand ssh <username>@<bastion_white_ip> -W %h:%p
```
где:
*internal-VM-ip* - локальный адрес целевой ВМ,  
*username* - имя пользователя на бастион-хосте,  
*bastion_white_ip* - внешний адрес бастион-хоста.

2. подключиться к целевой машине в одну команду `ssh <user>@<internal-VM-ip>`,
где *user* - имя пользователя целевой машины.

### bastion host - дополнительное задание

Для того, чтобы было возможно подключаться, указывая клиенту ssh только имя хоста целевой машины (в примере примем имя *someinternalhost*), находящейся за бастион-хостом, необходимо:

1. отредактировать файл `/etc/hosts` (или `c:\windows\system32\etc\hosts` для ОС семейства Windows). Для этого потребуются права суперпользвателя. Добавить строку:
``` <internal-VM-ip> someinternalhost```
2.  Созданную ранее секцию в файле `~/.ssh/config` привести к виду:
```
Hosts someinternalhost
  User <user>
  ProxyCommand ssh <username>@<bastion_white_ip> -W %h:%p
```
здесь *user* - имя пользователя на целевой ВМ, остальные условные обозначения описаны выше.

3. Теперь возможно подключение по команде `ssh someinternalhost`

### pritunl - стандартное задание

Согласно заданию на бастионе скриптом `setupvpn.sh` развернут VPN-сервер **pritunl**; теперь через его туннель возможен трафик на любые порты хоста во внутренней сети облака. 

Проверочный блок для ваших роботов:
```
bastion_IP=84.252.139.218
someinternalhost_IP=10.129.0.25
```

### pritunl - дополнительное задание

как обеспечить пруф валидности сертификата из командной строки не нашел :(

сертификат, полученный на хостнейм в репозитории - `cert.crt`

инстанс поживет, можно проверить валидность в браузере - [https://84-252-139-218.sslip.io/](https://84-252-139-218.sslip.io/)

