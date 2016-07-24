PImage fighterImg, enemyImg, hpImg, treasureImg;
PImage bg1Img, bg2Img;
int x=floor(random(03,195)), y=floor(random(10,590)), z=floor(random(40,425));
int w = 0 , h = 0 , m = -640;

void setup(){
  size(640,480);
  fighterImg = loadImage("img/fighter.png");
  enemyImg = loadImage("img/enemy.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
 }

void draw(){
  //background
  h+=2;m+=2;
  image(bg1Img,h,0);
  image(bg2Img,m,0);
  if(h>639){h=-640;}
  if(m>639){m=-640;}
  
  //hp
  fill(255,0,0);
  rect(10,5,x,25);
  image(hpImg,2,5);
  
  //fighter
  image(fighterImg,575,220);
  
  //enemy
  image(enemyImg,w%640,z);
  w+=4;
  
  //treasure
  image(treasureImg,y,z);
}
