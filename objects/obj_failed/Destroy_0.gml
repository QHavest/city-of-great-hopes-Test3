switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_screen_gamestart)
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
					break;
				}