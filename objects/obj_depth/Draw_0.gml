//Розмір сітки
var dgrid = ds_depthgrid;
var inst_num = instance_number(par_depthobject);
if(ds_grid_height(dgrid) != inst_num){
ds_grid_resize(dgrid,2,inst_num);
}
//Добавляємо обєкти на сітку (карту)
var yy = 0; with(par_depthobject){
	//ds_grid_add(dgrid,0,0, id);
	dgrid[# 0,yy] = id;
	dgrid[# 1,yy] = y;
	yy+=1;
}

//Сортуємо сітку
ds_grid_sort(dgrid,1,true);

//Зациклюємо відображення обєктів
var inst;
yy = 0; repeat(inst_num){	
	//витягуємо ID перемінної
	inst = dgrid[# 0, yy];
	//витягуємо обєкт для відрисовки
	with(inst){
		event_perform(ev_draw,0);
	}
	
	yy+=1;
}