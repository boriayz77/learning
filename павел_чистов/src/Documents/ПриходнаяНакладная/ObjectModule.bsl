Процедура ОбработкаПроведения(Отказ,Режим)
	Движения.ОстаткиТоваров.Записывать = Истина;
	Движения.СтоимостьТоваров.Записывать = Истина;
	ТЗ = Новый ТаблицаЗначений();
	ТЗ = Товары.Выгрузить();
	ТЗ.Свернуть("Номенклатура","Количество, Сумма");
	
	Для Каждого ТекСтрокаТовары Из ТЗ Цикл
		Движение = Движения.ОстаткиТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Склад = Склад;
		Движение.Количество = ТекСтрокаТовары.Количество;
		
		Движение = Движения.СтоимостьТоваров.ДобавитьПриход();
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Количество = ТекСтрокаТовары.Количество;
		Движение.Стоимость= ТекСтрокаТовары.Сумма;
	КонецЦикла;
КонецПроцедуры