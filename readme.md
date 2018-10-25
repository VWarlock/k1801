## International preface
This project contains materials regarding the ancient Soviet chips
of 1801 series. This line presents the package of ULA designs, based
on the same logical matrix chip. The 1801 chips were mass produced
in the 80th of XX century in the USSR and were used mostly within
Soviet PDP-11 clones related products, and were not very popular
or even known at all outside the iron curtain. Nowadays these chips
are interesting for retrocomputing community on the post-Soviet areas
as for former users of Soviet PDP-11 computers. This community mostly
speaks in Russian as native language, so the articles and documents
in this project are written in Russian. If some notable international
interest is found the translations to English may happen. All working
materials (schematics, topologies, HDL sources) are in English.
Please, feel free to contact me with questions and comments.

## Предисловие
Советская серия микросхем К1801 представлена:
* базовыми матричными кристаллами (БМК) 1801ВП1-xxx
* однокристалльными микропроцессорами 1801ВМx
* масочными ПЗУ 1801РЕх-xxx
* перепрограммируемыми ЭСППЗУ 1801РР1

Данный проект посвящен восстановлению (методом реверс-инжиниринга)
внутренних логических схем базовых матричных кристаллов 1801ВП1.
Также в проект включена библиотека прошивок 1801РЕ2, найденные 
в Сети листинги прошивок и утилита для конвертации.

* [1801ВП1-013](/013) - контроллер динамической памяти для платы МС1201.02 
* [1801ВП1-014](/014) - контроллер матрицы клавиатуры для компьютера БК-001х
* [1801ВП1-030](/030) - контроллер динамической памяти для платы МС1201.01
* [1801ВП1-037](/037) - контроллер динамической памяти и видео для БК-001х
* [1801ВП1-055](/055) - двунаправленный 16-разрядный шинный буфер
* [1801ВП1-065](/065) - универсальный последовательный приемопередатчик
* [1801ВП1-095](/095) - мост для шины МПИ, буферный элемент данных
* [1801ВП1-096](/096) - мост для шины МПИ, элемент управления шиной
* [1801ВП1-119](/119) - контроллер динамической памяти для платы МС1201.03 
* [1801ВП1-120](/120) - параллельный асинхронный порт межшинной связи УКНЦ
* [1801ВП1-128](/128) - контроллер НГМД с форматом записи MFM
* [1801РЕ2-xxx](/rom) - масочные ПЗУ объемом 4К 16-битных слов
* [Библиотека](/lib)  - библиотека функцональных ячеек БМК серии 1801

Очень многие устройства, построенные на основе микропроцессоров серии 1801
содержат помимо собственно микропроцессора вспомогательные микросхемы той же
самой 1801-ой серии. А именно - микросхемы 1801ВП1, и на них всех после
обозначения ВП1 следует таинственное трехзначное число. Очень много лет
назад автору пришлось работать с машиной ДВК, на центральной плате которой
стояло несколько таких разноциферных 1801ВП1 и разобраться подробно с
электрической схемой не было никакой возможности - потому что абсолютно
не было доступной документации именно на эти микросхемы. При системном
программировании на ДВК было большой загадкой как же именно отображается
ПЗУ и ОЗУ в верхней области адресов, как определяется начальный адрес
пуска процессора, как работает "секретный" пультовый режим и так далее.
Сегодня, благодаря микроскопу, развитым средствам автоматическрого 
проектирования печатных плат, системам логического проектирования стал
возможен процесс относительно малозатратного реверс-инжиниринга микроcхем
1801ВП1. В результате получается внутренняя поячеечная схема микросхемы
и полное логическое описание на языке Verilog.

Микросхема 1801ВП1 представляет собой так называемым БМК - Базовый Матричный
Кристалл. Изготавливается по n-МОП технологии по проектным нормам примерно 
3 микрона с одним слоем металла. Сначала изготавливают базовые пластины,
которые содержат собственно транзисторы - представляют собой легированные
области кремния и отдельный изолированный окислом слой поликремниевых затворов.
Затем это все покрывается слоем оксида кремния и базовая пластина готова.
В таком виде базовые пластины можно долго хранить или даже передать на другой
завод, возможно с менее точным и простым оборудованием для выполнения финальных
операций. Все микросхемы 1801ВП1, независимо от номера, имеют одинаковую
структуру и расположение транзисторов и изготавливаются на одних и теж же
базовых пластинах.

Различия между микросхемами появляются уже на последнем финишном этапе
изготовления - в верхнем слое окисла методом фотолитографии вытравливают
окна для доступа к нужным транзисторам и далее еще одной фотолитографией
формируют металлический рисунок из алюминия. Вид этого рисунка и определяет
электрическую схему, рисунки (проекты) пронумерованы и номер на микросхеме
служит для точной идентификации проекта.

## Изображение кристалла 1801ВП1-030  
![Die photo](/img/vp1.jpg)

На фотографии можно выделить 15 вертикальных столбцов - из них 13 столбцов
более широкие - это логические базовые ячейки, и 2 столбца более узкие - это
усилительные ячейки с возможной опциональной инверсией. В каждом столбце 20
пар ячеек, ячейки в паре зеркальные относительного друг друга, это позволяет
минимизировать проводники подачи питающих напряжений в слое металлизации.
В итоге кристалл 1801ВП1 содержит 520 логических ячеек и 80 усилительных. По
периметру кристалла расположены 40 периферийных ячеек ввода-вывода с
характерными "многопальцевыми транзисторами" и контактными площадками для
разварки проводников к внешним выводам микросхемы, а также встроенный генератор
отрицательного напряжения смещения подложки (на фотографии справа посередине).
В правом верхнем углу видная цифра 30, это номер проекта реализованного на 
БМК 1801-ВП1.

Внутреннее строение БМК серии 1801, электрические параметры и библиотека
функциональных ячеек кратко описаны в книге [1]. Ниже приведены несколько
страниц из данной книги с информацией, касающейся строения БМК серии 1801.

![page55](/img/p1.png) ![page56](/img/p2.png)
![page57](/img/p3.png) ![page58](/img/p4.png)

## Литература
1. "Базовые матричные кристаллы и матричные БИС"
В.Г.Домрачев, П.П.Мальцев, И.В.Новаченко, С.Н. Пономарев
М. Энергоатомиздат, 1992. ISBN 5-283-01597-1
2. "Микропроцессоры и микропроцессорные комплекты интегральных микросхем"
Справочник, в 2 томах, В.-Б.Б.Абрайтис, Н.Н.Аверьянов, А.И.Белоус и др. Под
редакцией В.А.Шахнова. М. Радио и связь. 1998. ISBN-5-256-00372-0
3. "Микропроцессорные структуры. Инженерные решения"
Б.В. Шевкопляс  M. Радио и связь, 1990. ISBN 5-256-00460-3

## Благодарности
Автор благодарит:
* [Barsmonster](https://zeptobars.com/en/) за выполненную декапсуляцию и панорамные микрофотографии некоторых микросхем серии 1801, а также за хостинг крупноразмерных фотографий
* [Voland](http://pk-fpga.ru) за моральную поддержку и начальное размещение материалов в Сети
* [Форум ZX](http://zx-pk.ru) за деятельное обсуждение процесса реверс-инжиниринга и информационную помощь
