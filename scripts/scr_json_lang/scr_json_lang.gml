// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_json_lang(argument0,argument1){
	/// load_string_json(language, keyword)

var LANGUAGE = argument0;
var KEYWORD = argument1;

// Відкриття JSON файлу
var JsonFile = file_text_open_read("lang.txt");
var Data = "";

// Зчитати Json файл та зберегти дані у Data змінній
while (!file_text_eof(JsonFile)) {
    Data += file_text_read_string(JsonFile);
    file_text_readln(JsonFile);
}

// Закриття Json файлу
file_text_close(JsonFile);

// Збереження даних в тимчасовій карті
var temp_map = json_decode(Data);

// Перевіряє дані про поточну МОВУ
var lang_map = ds_map_find_value(temp_map, LANGUAGE);

//  Якщо вибране слово не є рядком, переводить його в рядок. ЗРОБЛЕНО НА ВИПАДОК РІЗНИХ СИТУАЦІЙ
if (!is_string(KEYWORD)) KEYWORD = string(KEYWORD);

//  Перед знищенням структур даних, зберегти вихідний рядок в локальній змінній
var output_string = lang_map[? KEYWORD];

// Видаляємо створені раніше карти, щоб не навантажувати память
ds_map_destroy(temp_map);
ds_map_destroy(lang_map);

// Повертаємо вихідний/знайдений рядок
return output_string;
}