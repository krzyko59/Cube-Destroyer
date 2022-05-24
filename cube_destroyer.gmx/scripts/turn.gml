//Funkcja TURN zwraca roznice miedzy katami w korzystniejszym kierunku
//Dodatni wynik oznaczy kierunek zgodny z ruchem wskazowek zegara
//Ujemny wynik oznaczy kierunek przeciwny do ruchu wskazowek zegara

var dif=0;
var ang1=argument0;
var ang2=argument1;

while(ang1>=360)ang1-=360;  //Dzięki tym czterem instrukcją unikniemy problematycznych wartosci.
while(ang1<0)ang1+=360;     //ang1 i ang2 beda zawsze z przedzialu 0-359
while(ang2>=360)ang2-=360;
while(ang2<0)ang2+=360;

if(ang2>ang1+180)           //Tutaj wyliczamy kat
dif=-((360-ang2)+ang1);
else
{
if(ang1>ang2+180)
dif=((360-ang1)+ang2);
else
dif=ang2-ang1;
}
return(dif);
