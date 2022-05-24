draw_set_color(c_white)
draw_circle(pad_x,pad_y,size,1)
if mouse_id!=-1
{
draw_set_alpha(0.5)
var idis=min(size-size/3,point_distance(pad_x,pad_y,device_mouse_raw_x(mouse_id),device_mouse_raw_y(mouse_id)))
draw_circle(pad_x+lengthdir_x(idis,direction),pad_y+lengthdir_y(idis,direction),size/3,0)
}else 
{
draw_set_alpha(0.2)
draw_circle(pad_x,pad_y,size/3,1)
}
draw_set_alpha(1)
