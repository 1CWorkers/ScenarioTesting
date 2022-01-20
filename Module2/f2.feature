﻿#language: ru

@tree

Функционал: Проверка корректного расчета итогов в документе "Заказ" 

Как Менеджер по продажам я хочу
видеть итоговое количество и сумму в документе
чтобы корректно оформить документ "Заказ"

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка расчета итогового количества и суммы по документу "Заказ"
* Создаем заказ и заполняем шапку
И Заполнение шапки документа "Заказ"

* Добавляем товары в заказ
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Veko67NE'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Сметана'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И я завершаю редактирование строки

* Проверяем итоговое количество и сумму
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '200'
