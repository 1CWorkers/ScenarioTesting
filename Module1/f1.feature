﻿#language: ru

Функционал: Проверка расчета суммы документа Заказ, при изменении количества и цены

Как Менеджер по продажам я хочу
чтобы при изменении количества и цены сумма рассчитывалась автоматически
чтобы было удобно пользоваться документом Заказ

Контекст: Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Расчет суммы при изменении количества

* Закрытие всех окон
	И я закрываю все окна клиентского приложения
	// test
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Добавление товара в Заказ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Сметана'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверка суммы при изменении поля Цена
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '10,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
	И элемент формы с именем "ТоварыИтогСумма" стал равен '10'
* Проверка суммы при изменении поля Количество
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И элемент формы с именем "ТоварыИтогСумма" стал равен '20'

