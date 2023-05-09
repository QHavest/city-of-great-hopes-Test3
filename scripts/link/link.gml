// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function link(){
	switch(global.LANGUAGE)
		{
					case "eng":
					links = "https://forms.gle/PjE8nerZUZoRKCFs9";
					break;
					case "ua":
					links = "https://docs.google.com/forms/d/e/1FAIpQLScmMvY63YkL7un1LaGXKXj-RSeHmYif08DUSV_REhhM0Lwvuw/viewform?usp=sf_link";
					break;
		}
	
	url_open(links);
}