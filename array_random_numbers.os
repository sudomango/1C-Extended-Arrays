Функция МассивСлучайныхЧисел(Мин, Макс, Длина)
	ГСЧ = Новый ГенераторСлучайныхЧисел;
	СлучайныеЧисла = Новый Массив;
	Если Мин < 0 Тогда
		Разница = 0 - Мин;
		Для Счетчик = 0 По Длина - 1 Цикл
			НовоеЧисло = ГСЧ.СлучайноеЧисло(0, Макс + Разница);
			СлучайныеЧисла.Добавить(НовоеЧисло - Разница);
		КонецЦикла;
	Иначе
		Для Счетчик = 0 По Длина - 1 Цикл
			СлучайныеЧисла.Добавить(ГСЧ.СлучайноеЧисло(Мин, Макс));
		КонецЦикла;
	КонецЕсли;
	Возврат СлучайныеЧисла;
КонецФункции