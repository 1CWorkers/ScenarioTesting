﻿#language: ru


Функционал: Проверка заполнения полей документа "Заказ покупателя"

Как Менеджер я хочу
корректно заполнять документ заказа 
чтобы все нужные поля были заполнены

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 0001_Загрузка_Данных
	И Загрузка справочника "Партнеры"
	И Загрузка соглашений
	
Сценарий: 0002_Проверка заполнения полей шапки документа 
* Открытие формы документа
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Когда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Когда открылось окно 'Заказ покупателя (создание)'
* Заполнение поля Партнер у клиента с одним соглашением	
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'       |
		| '1'   | 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	И элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
	И элемент формы с именем "LegalName" стал равен 'Клиент 1'
	И элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
* Заполнение поля Партнер у клиента с двумя соглашениями
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '2'   | 'Клиент 2 (2 соглашения)' |
	И в таблице "List" я выбираю текущую строку
	И элемент формы с именем "Partner" стал равен 'Клиент 2 (2 соглашения)'
	И элемент формы с именем "LegalName" стал равен 'Клиент 2'
	И элемент формы с именем "Agreement" стал равен ''
* Проверка блокировки поля контрагент при очистке реквизита "Партнер"
	И в поле с именем 'Partner' я ввожу текст ''
	И элемент формы с именем 'LegalName' стал равен ''
	И элемент формы с именем 'LegalName' присутствует на форме
	И элемент формы с именем 'LegalName' не доступен
	И я закрываю сеанс текущего клиента тестирования
		
		 
	
	
