Функция МассивМинЗначение(ИсходныйМассив)
	Мин = ИсходныйМассив[0];
	Для Каждого Элемент Из ИсходныйМассив Цикл
		Если Элемент < Мин Тогда
			Мин = Элемент;
		КонецЕсли;
	КонецЦикла;
	Возврат Мин;
КонецФункции