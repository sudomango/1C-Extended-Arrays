Функция МассивСтрока(ИсходныйМассив)
	Попытка
		РезСтрока = СтрСоединить(ИсходныйМассив, ", ");
	Исключение
		РезСтрока = "Не удалось преобразовать элементы в тип Строка.";
	КонецПопытки;
	Возврат РезСтрока;
КонецФункции