# Spring Security OAuth2 Keycloak приложение

## Приложение реализовано в двух вариантах

### Вариант реализации #1

_Реализация наиболее защищенного и удобного приложения с использование keycloak и Spring Security
(как метод реализации keycloak)_

#### Для реализации первого способа необходимо:

1. Расскомитить класс SecurityConfig
2. В application.properties расскомитить закомиченный текст
3. В application.properties закомитить текст, который ранее не был закомичен
4. Пересобрать проект с помощью `mvn clean install`
5. Запустить Докер контейнр с помощью `docker-compose up -build`
6. Дождаться запуска контейнера
7. Открыть реализацию приложения по адресу https://localhost:8080/
8. Авторизоваться как пользователь в keycloak (редирект будет автоматическим)

#### Для изменения параметров keycloak необходимо:
1. Расскомитить класс SecurityConfig
2. В application.properties расскомитить закомиченный текст
3. В application.properties закомитить текст, который ранее не был закомичен
4. Пересобрать проект с помощью `mvn clean install`
5. Запустить Докер контейнр с помощью `docker-compose up -build`
6. Дождаться запуска контейнера
7. Открыть реализацию keycloak по адресу https://localhost:8180/
8. Авторизоваться под учетными данными admin/admin
   
### Неисправленные баги:
1. Ошибка поиска файла конфигурации keycloak.json


### Работоспособность способа:

1. [X] **Не работает**
2. [ ] **Работает**


### Вариант реализации #2

_Реализация наипростейшей секьюрности с использованием исключительно keycloak_

#### Для реализации второго способа необходимо:

1. Закомитить класс SecurityConfig
2. В application.properties не вносить изменения, либо внести реверсные изменения первого способа
4. Пересобрать проект с помощью `mvn clean install`
5. Запустить Докер контейнр с помощью `docker-compose up -build`
6. Дождаться запуска контейнера
7. Открыть реализацию приложения по адресу https://localhost:8080/
8. Авторизоваться как пользователь в keycloak (редирект будет автоматическим)

#### Для изменения параметров keycloak необходимо:
1. Расскомитить класс SecurityConfig
2. В application.properties расскомитить закомиченный текст
3. В application.properties закомитить текст, который ранее не был закомичен
4. Пересобрать проект с помощью `mvn clean install`
5. Запустить Докер контейнр с помощью `docker-compose up -build`
6. Дождаться запуска контейнера
7. Открыть реализацию keycloak по адресу https://localhost:8180/
8. Авторизоваться под учетными данными admin/admin

### Неисправленные баги:
1. Цикличный редирект после успешной авторизации


### Работоспособность способа:

1. [X] **Не работает**
2. [ ] **Работает**



# Стек:
* Язык: Java 17
* Spring Boot: v2.6.3
* Зависимости: Описаны в pom.xml, у каждой зависимости есть описание
* Контейнеризация: Docker
* Тестирование: Отсутствует


# TODO
1. Способ 1:
2. [x] Исправить доступ к keycloak.json, возможные причины: явная зависимость от файла в realm-export.json
3. [x] Возможные пути решения: Поиск явной зависимости от файла keycloak.json, переконфигурация на application.properties
2. Способ 2:
2. [x] Исправить цикличность редиректа, возможные причины: не выявлены
