if mouse_id!=-1
{

    if device_mouse_check_button(mouse_id,mb_any)
    {
    direction=point_direction(pad_x,pad_y,device_mouse_raw_x(mouse_id),device_mouse_raw_y(mouse_id))
    }else mouse_id=-1
}
else
{
    for(var i=0;i<=5;i+=1)
    {
        if device_mouse_check_button(i,mb_any)
        {
            if point_distance(pad_x,pad_y,device_mouse_raw_x(i),device_mouse_raw_y(i))<=size
            {
                mouse_id=i
                direction=point_direction(pad_x,pad_y,device_mouse_raw_x(mouse_id),device_mouse_raw_y(mouse_id))
                i=6
            }
        }
    }
}
