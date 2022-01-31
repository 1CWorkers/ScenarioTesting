﻿#language: ru

@tree

Функционал: Проверка отображения возвратов в отчете D2001 Продажи.

Как Менеджер я хочу
видеть возвраты покупателю в отчете 
чтобы получать корректные данные

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 0001_Загрузка_Данных_По_Возвратам
* Создание и проведение документов
	И Загрузка данных для документа "Возврат покупателю"
	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.SalesOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);		
		Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.SalesReturnOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Тогда не появилось окно предупреждения системы	
* Формирование отчет D2001
	И Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду доступности элемента с именем 'Result' в течение 10 секунд
	И я жду когда в табличном документе 'Result' заполнится ячейка 'R15C2' в течение 10 секунд
	И в табличном документе 'Result' я перехожу к ячейке "R15C2"
	И в табличном документе 'Result' я делаю двойной клик на текущей ячейке
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Регистратор'    |
	И в таблице "Source" я выбираю текущую строку
	Тогда открылось окно 'D2001 Продажи (Расшифровка)'
	И в табличном документе 'Result' я перехожу к ячейке "R7C1"
	Когда открылось окно 'D2001 Продажи (Расшифровка)'
	И в табличном документе 'Result' я перехожу к ячейке "R7C1"
	И я жду когда в табличном документе 'Result' заполнится ячейка 'R7C1' в течение 10 секунд
	И в табличном документе 'Result' ячейка с адресом 'R7C1' равна 'Возврат товаров от покупателя 1 от 02.03.2021 15:00:00'
* Закрытие клиента
	И я закрываю сеанс текущего клиента тестирования
				