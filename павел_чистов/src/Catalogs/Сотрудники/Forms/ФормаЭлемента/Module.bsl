
&НаКлиенте
Процедура ОтчествоПриИзменении(Элемент)
	ОбновитьФИО();
	ПроверкаПола();
КонецПроцедуры

&НаКлиенте
Процедура ИмяПриИзменении(Элемент)
	ОбновитьФИО();
КонецПроцедуры

&НаКлиенте
Процедура ФИОПриИзменении(Элемент)
	ОбновитьФИО();
КонецПроцедуры
&НаКлиенте
Процедура ПроверкаПола()
	Если Объект.Отчество = "" Тогда
	Объект.Пол = ПредопределенноеЗначение("Перечисление.Пол.ПустаяСсылка");
	КонецЕсли;
	
	Если Прав(Объект.Отчество, 2) = "ич" ИЛИ Прав(Объект.Отчество, 4) = "евич" ИЛИ Прав(Объект.Отчество,4) = "ович" Тогда
	Объект.Пол = ПредопределенноеЗначение("Перечисление.Пол.Мужской");
	Иначе Объект.Пол = ПредопределенноеЗначение("Перечисление.Пол.Женский");
	КонецЕсли;
КонецПроцедуры

&НаКлиенте 
Процедура ОбновитьФИО()
	Объект.Наименование= Объект.ФИО+ " "+ Объект.Имя+ " " +Объект.Отчество;
КонецПроцедуры 