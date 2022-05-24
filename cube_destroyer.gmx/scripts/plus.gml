//PLUSOWANIE
if !objStatek.pause
{
    if instance_exists(objPlus)
    {
        with(objPlus)
        {
            str+=argument0
            xx=0
            image_alpha=1
            if str>500 x=xstart+random(15)*choose(1,-1)
            if str>1000 x=xstart+random(30)*choose(1,-1)
        }
    }
    else
    {
        i=instance_create(0,0,objPlus)
        i.str=argument0
    }
    with(objStatek)fuel+=argument0
    with(objPlus_effect)
    {
        x=other.x
        y=other.y
        size=1+random(.5)*choose(1,-1)
        image_alpha=1
        image_angle=random(48)-random(48)
        switch(argument0)
        {
            case 1:image_index=0 break;
            case 20:image_index=1 break;
            case 100:image_index=2 break;
        }
    }
}
