var i=instance_create(0,0,objPad)
with(i)
{
size=display_get_gui_width()/5
pad_x=display_get_gui_width()/2
pad_y=display_get_gui_height()-size*1.1-GoogleMobileAds_BannerGetHeight()
mouse_id=-1
}
return i
