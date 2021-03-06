#language: ru

@tree

Функционал: Создание документа "Расход товара", пользователем с ограниченными правами

Как Продавец я хочу
Создать документ "Расход товара"
чтобы осуществить продажу 

Контекст:	
	Попытка
		И Я подключаю клиент тестирования "Продавец" из таблицы клиентов тестирования
	Исключение
		И я закрываю окно предупреждения
	
Сценарий: Загрузка тестовых данных
	И 01_Загрузка_справочников
	И 02_ЗагрузкаДокументаПоступление
	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.ПриходТовара.НайтиПоНомеру("000000054").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""
Сценарий: Создание документа "Расход товара"

* Создание документа
	И Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
	Когда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
* Заполнение документа 
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'       |
		| '000000013' | 'Магазин "Продукты"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' |
		| 'Ч-0002'  | '000000018' | 'Bosch15'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' |
		| 'ОБ-003'  | '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И Пауза 3
	Тогда открылось окно 'Продажа * от *'
	И я нажимаю на кнопку с именем 'ФормаПровести'
    И Пауза 3
	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.РасходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Удалить();
	"""
	И я закрываю все окна клиентского приложения
	
Сценарий: Проверка доступности списка документов "Заказ"
* Проверка доступности
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
* Проверка доступности кнопки создания Заказа
	Когда Проверяю шаги на Исключение:
	|И я нажимаю на кнопку с именем 'ФормаСоздать'|
	И я закрываю все окна клиентского приложения
	И я закрываю главное окно TestClient