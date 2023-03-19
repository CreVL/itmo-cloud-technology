
## Задание курса "Облачные технологии-ITMO"

### Написал простое "приложение" с запросом по HTTP. Создал deployment, настроил доступ через loadbalancer, настроил autoscaling.

Запускаем load-generator, видим что нагрузка на deployment повышается
![1](https://github.com/CreVL/itmo-cloud-technology/blob/main/1.png)

Начинают создаваться дополнительные поды
![2](https://github.com/CreVL/itmo-cloud-technology/blob/main/2%20(2).png)

Удаляем load-generator, нагрузка постепенно снижается, поды меняют статус на terminating и удаляются в течении 5 минут
![2](https://github.com/CreVL/itmo-cloud-technology/blob/main/3%20(2).png)
