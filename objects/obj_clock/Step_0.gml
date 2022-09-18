secAngle = -(current_second * 6);
minAngle = -(current_minute * 6);
hrAngle = -((current_hour + (current_minute/60)) *30);

seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;