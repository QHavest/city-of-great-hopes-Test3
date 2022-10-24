function scr_player_and_objects(objects)
{
	// Відслідковуємо, чи немає на координатах гравців інших об'єктів
	a = (instance_position(obj_dim_player1.x, obj_dim_player1.y, objects));
	b = (instance_position(obj_dim_player2.x, obj_dim_player2.y, objects));
	
	if(a != noone or b != noone)
	{
		
		// Нові координати, на які буде переміщено гравця
		newy = obj_dim_player2.y;
	
		// Ставимо обох персонажів в одне місце щоб було легше знайти вільне місце
		obj_dim_player1.x = obj_dim_player2.x;
		obj_dim_player1.y = obj_dim_player2.y;
		
		while(a != noone or b != noone)
		{
			
			
		 /* Шукаємо нове місце для персонажів, шляхом перевірки кожного четвертого
			пікселя вниз від персонажів по осі y. */
			newy += 4;
			
			// Сама перевірка (чи немає на даній точці якихось об'єктів)
			a = (instance_position(obj_dim_player1.x, newy, objects));
			b = (instance_position(obj_dim_player2.x, newy, objects));
		}
		
		
	 /* Переміщення персонажів на нові координати. Додаткові числа пишуться для того, 
		щоб персонажі не знаходились на самому краю об'єкта, в якому вони застрягли */
		obj_dim_player1.y = newy + 20;
		obj_dim_player2.y = newy + 20;
		
	}
}