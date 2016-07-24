PImage fighterImg;
PImage enemyImg;
PImage hpImg;
PImage treasureImg;
PImage bg1Img;
PImage bg2Img;
int x=floor(random(03,195));
int y=floor(random(10,590));
int z=floor(random(40,425));
int w = 0;
int h = 0;

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
  image(bg1Img,h%640,0);
  image(bg2Img,h%640-640,0);
  h++;
  fill(255,0,0);
  rect(10,5,x,25);
  image(fighterImg,575,220);
  image(enemyImg,w%640,z);
  w++;
  image(hpImg,2,5);
  image(treasureImg,y,z);
}
