# monitoring-012
Домашнее задание
№Настройка zabbix, создание LLD, оповещение на основе триггеров

Цель:
Установить и настроить zabbix, настроить автоматическую отправку аллертов в телеграмм канал.


Описание/Пошаговая инструкция выполнения домашнего задания:
Необходимо сформировать скрипт генерирующий метрики формата:

```
otus_important_metrics[metric1]
otus_important_metrics[metric2]
otus_important_metrics[metric3]
```
С рандомным значение от 0 до 100

Создать правила LLD для обнаружения этих метрик и автоматического добавления триггеров. Триггер должен срабатывать тогда, когда значение больше или равно 95.

Реализовать автоматическую отправку уведомлений в телеграмм канал.

В качестве результаты выполнения ДЗ необходимо предоставить скрипт генерации метрик, скриншоты графиков полученных метрик, ссылку на телеграмм канал с уже отпраленными уведомлениями.

# Решение
Скрипт для генирации метрик. Лежит на сервере /etc/zabbix/zabbix_agentd.d
https://github.com/Vladimir174/monitoring-012/blob/main/test.sh

Там же логи и промежуточный файл с данными метрик.
zdata.txt
zsender.log

Файл с конфигом lld для zabbix lld.conf
https://github.com/Vladimir174/monitoring-012/blob/main/lld.conf

**Правило обнаружения:**
![image](https://github.com/Vladimir174/monitoring-012/assets/40054398/ea5da253-4056-4371-88f6-664a54ee15b3)
**Discovery Rules**
![image](https://github.com/Vladimir174/monitoring-012/assets/40054398/df5b0b34-c431-4e5e-a1a4-5dc61c0d3503)
**Item prototypes**
![image](https://github.com/Vladimir174/monitoring-012/assets/40054398/a6d0328d-5f32-4aed-af57-b217bf451728)
**Trigger prototypes**
![image](https://github.com/Vladimir174/monitoring-012/assets/40054398/f30c4cb8-1397-4f60-bf7c-7e5c2f734046)
**Graph prototypes**
![image](https://github.com/Vladimir174/monitoring-012/assets/40054398/e26acd1f-56c6-42c2-9046-54df49efc069)



