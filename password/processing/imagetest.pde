/* @pjs preload="
 ./processing/data/1.png"; */

PImage img = loadImage("./processing/data/1.png");

void setup(){
    size(500,500);
    image(img,0,0);
}