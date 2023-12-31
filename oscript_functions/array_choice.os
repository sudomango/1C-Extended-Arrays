Функция МассивВыбрать(ИсходныйМассив)
	ДлинаМассива = ИсходныйМассив.Количество();
	Если ДлинаМассива < 1 Тогда
		ВызватьИсключение("Желаемое количество элементов больше кол-ва элементов в массиве.");
	КонецЕсли;

	ГСЧ = Новый ГенераторСлучайныхЧисел;
	СлучайныйИндекс = ГСЧ.СлучайноеЧисло(0, ДлинаМассива - 1);
	ВыбранныйЭлемент = ИсходныйМассив[СлучайныйИндекс];
	Возврат ВыбранныйЭлемент;
КонецФункции

// Функция МассивВыбратьНесколько возвращает массив, даже если КолЭлементов = 1.
// Для выбора единичного элемента воспользуйтесь функцией МассивВыбрать.
// Для печати результата (массива) в виде строки воспользуйтесь функцией МассивСтрока.

// Главный вопрос - должна ли данная функция возвращать повторяющиеся элементы или нет?
// В нашем случае - ответ "нет", то есть фактически мы просто перемешиваем все значения и возвращаем k первых элементов.

Функция МассивВыбратьНесколько(ИсходныйМассив, КолЭлементов)
	ДлинаМассива = ИсходныйМассив.Количество();
	Если КолЭлементов > ДлинаМассива Тогда
		ВызватьИсключение("Желаемое количество элементов больше кол-ва элементов в массиве.");
	КонецЕсли;

	МассивСлучайных = МассивПеремешать(ИсходныйМассив);
	ИтоговыйМассив = Новый Массив;
	Для Индекс = 0 По КолЭлементов - 1 Цикл
		ИтоговыйМассив.Добавить(МассивСлучайных[Индекс]);
	КонецЦикла;
	
	Возврат ИтоговыйМассив;
КонецФункции

// Для работы функции МассивВыбратьНесколько понадобится функция МассивПеремешать (чтобы не повторять один и тот же функционал несколько раз).

Функция МассивПеремешать(ИсходныйМассив)
	СтарыйМассив = МассивКопировать(ИсходныйМассив);
	НовыйМассив = Новый Массив;
	ГСЧ = Новый ГенераторСлучайныхЧисел;
	Пока СтарыйМассив.Количество() > 0 Цикл
		СлучайныйИндекс = ГСЧ.СлучайноеЧисло(0, СтарыйМассив.ВГраница());
		НовыйМассив.Добавить(СтарыйМассив[СлучайныйИндекс]);
		СтарыйМассив.Удалить(СлучайныйИндекс);
	КонецЦикла;
	Возврат НовыйМассив;
КонецФункции

// Для работы функции МассивПеремешать понадобится функция МассивКопировать, чтобы исходный массив оставался неизменным.

Функция МассивКопировать(ИсходныйМассив)
	СписЗнач = Новый СписокЗначений;
	СписЗнач.ЗагрузитьЗначения(ИсходныйМассив);
	Возврат СписЗнач.ВыгрузитьЗначения();
КонецФункции