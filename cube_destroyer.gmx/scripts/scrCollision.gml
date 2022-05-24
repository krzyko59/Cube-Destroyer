    //dzwiek kolizii
    audio_play_sound(souRip , 10, false);
    //ogien collision
    i=instance_create(x,y,objOgien_collision)
    i.image_xscale=10+wielkosc/9
    i.image_yscale=10+wielkosc/9
    i.gravity=0
    //efekt wysyłana pociskw w kazda strone
    for(i=0;i<=360;i+=5)
    {
        ii=instance_create(x+lengthdir_x(20,i),y+lengthdir_y(20,i),objOgien)
        ii.direction=i
        ii.speed=8+random(3)
    }
    //zabieranie paliwa
    fuel-=1000
    //powiekszanie
    wielkosc+=2
    image_xscale=wielkosc/25
    image_yscale=wielkosc/25
    //napis odejmowania fuela
    i=instance_create(x,y,objMinus)
    i.str=1000
    if fuel<=0 and alarm[1]<0 and !instance_exists(objOver)
    {//koniec gry
        _speed=0
        pause=true
        fuel=0
        alarm[0]=-1
        alarm[1]=45
        fuel=0
    }
    else
    {
        //aktywowanie ochrony
        ochrona=1
        alarm[4]=room_speed*3
        audio_play_sound(souTarcza , 10, false);
    }
