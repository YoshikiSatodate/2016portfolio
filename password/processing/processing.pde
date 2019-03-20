/* @pjs preload="
 ./processing/data/a1.png,
 ./processing/data/a2.png,
 ./processing/data/a3.png,
 ./processing/data/a4.png,
 ./processing/data/a5.png,
 ./processing/data/a6.png,
 ./processing/data/a7.png,
 ./processing/data/b1.png,
 ./processing/data/b2.png,
 ./processing/data/b3.png,
 ./processing/data/b4.png,
 ./processing/data/b5.png,
 ./processing/data/b6.png,
 ./processing/data/b7.png,
 ./processing/data/c1.png,
 ./processing/data/c2.png,
 ./processing/data/c3.png,
 ./processing/data/c4.png,
 ./processing/data/c5.png,
 ./processing/data/c6.png,
 ./processing/data/c7.png,
 ./processing/data/d1.png,
 ./processing/data/d2.png,
 ./processing/data/d3.png,
 ./processing/data/d4.png,
 ./processing/data/d5.png,
 ./processing/data/d6.png,
 ./processing/data/d7.png,
 ./processing/data/e1.png,
 ./processing/data/e2.png,
 ./processing/data/e3.png,
 ./processing/data/e4.png,
 ./processing/data/e5.png,
 ./processing/data/e6.png,
 ./processing/data/e7.png,
 ./processing/data/f1.png,
 ./processing/data/f2.png,
 ./processing/data/f3.png,
 ./processing/data/f4.png,
 ./processing/data/f5.png,
 ./processing/data/f6.png,
 ./processing/data/f7.png,
 ./processing/data/g1.png,
 ./processing/data/g2.png,
 ./processing/data/g3.png,
 ./processing/data/g4.png,
 ./processing/data/g5.png,
 ./processing/data/g6.png,
 ./processing/data/g7.png,
 ./processing/data/h1.png,
 ./processing/data/h2.png,
 ./processing/data/h3.png,
 ./processing/data/h4.png,
 ./processing/data/h5.png,
 ./processing/data/h6.png,
 ./processing/data/h7.png,
 ./processing/data/i1.png,
 ./processing/data/i2.png,
 ./processing/data/i3.png,
 ./processing/data/i4.png,
 ./processing/data/i5.png,
 ./processing/data/i6.png,
 ./processing/data/i7.png,
 ./processing/data/j1.png,
 ./processing/data/j2.png,
 ./processing/data/j3.png,
 ./processing/data/j4.png,
 ./processing/data/j5.png,
 ./processing/data/j6.png,
 ./processing/data/j7.png"; */

PImage[][] item = new PImage[10][7]; //アイテムの画像データ格納
boolean[] cateCheck = new boolean[10]; //カテゴリのIDを格納 選択されてtrue
int[][] password = new int[4][2]; //[category][item]
int pointer = 0; //passwordのポインタ
boolean movePointer = false;

Box[] hoge = new Box[7]; //アイテム表示の箱
Box[] cateBox = new Box[10]; //カテゴリ表示の箱
Box pic = new Box(0,250,100,260);
void setup() {
  size(1080, 1550);
  item[0][0] = loadImage("./processing/data/a1.png");
  item[0][1] = loadImage("./processing/data/a2.png");
  item[0][2] = loadImage("./processing/data/a3.png");
  item[0][3] = loadImage("./processing/data/a4.png");
  item[0][4] = loadImage("./processing/data/a5.png");
  item[0][5] = loadImage("./processing/data/a6.png");
  item[0][6] = loadImage("./processing/data/a7.png");
  item[1][0] = loadImage("./processing/data/b1.png");
  item[1][1] = loadImage("./processing/data/b2.png");
  item[1][2] = loadImage("./processing/data/b3.png");
  item[1][3] = loadImage("./processing/data/b4.png");
  item[1][4] = loadImage("./processing/data/b5.png");
  item[1][5] = loadImage("./processing/data/b6.png");
  item[1][6] = loadImage("./processing/data/b7.png");
  item[2][0] = loadImage("./processing/data/c1.png");
  item[2][1] = loadImage("./processing/data/c2.png");
  item[2][2] = loadImage("./processing/data/c3.png");
  item[2][3] = loadImage("./processing/data/c4.png");
  item[2][4] = loadImage("./processing/data/c5.png");
  item[2][5] = loadImage("./processing/data/c6.png");
  item[2][6] = loadImage("./processing/data/c7.png");
  item[3][0] = loadImage("./processing/data/d1.png");
  item[3][1] = loadImage("./processing/data/d2.png");
  item[3][2] = loadImage("./processing/data/d3.png");
  item[3][3] = loadImage("./processing/data/d4.png");
  item[3][4] = loadImage("./processing/data/d5.png");
  item[3][5] = loadImage("./processing/data/d6.png");
  item[3][6] = loadImage("./processing/data/d7.png");
  item[4][0] = loadImage("./processing/data/e1.png");
  item[4][1] = loadImage("./processing/data/e2.png");
  item[4][2] = loadImage("./processing/data/e3.png");
  item[4][3] = loadImage("./processing/data/e4.png");
  item[4][4] = loadImage("./processing/data/e5.png");
  item[4][5] = loadImage("./processing/data/e6.png");
  item[4][6] = loadImage("./processing/data/e7.png");
  item[5][0] = loadImage("./processing/data/f1.png");
  item[5][1] = loadImage("./processing/data/f2.png");
  item[5][2] = loadImage("./processing/data/f3.png");
  item[5][3] = loadImage("./processing/data/f4.png");
  item[5][4] = loadImage("./processing/data/f5.png");
  item[5][5] = loadImage("./processing/data/f6.png");
  item[5][6] = loadImage("./processing/data/f7.png");
  item[6][0] = loadImage("./processing/data/g1.png");
  item[6][1] = loadImage("./processing/data/g2.png");
  item[6][2] = loadImage("./processing/data/g3.png");
  item[6][3] = loadImage("./processing/data/g4.png");
  item[6][4] = loadImage("./processing/data/g5.png");
  item[6][5] = loadImage("./processing/data/g6.png");
  item[6][6] = loadImage("./processing/data/g7.png");
  item[7][0] = loadImage("./processing/data/h1.png");
  item[7][1] = loadImage("./processing/data/h2.png");
  item[7][2] = loadImage("./processing/data/h3.png");
  item[7][3] = loadImage("./processing/data/h4.png");
  item[7][4] = loadImage("./processing/data/h5.png");
  item[7][5] = loadImage("./processing/data/h6.png");
  item[7][6] = loadImage("./processing/data/h7.png");
  item[8][0] = loadImage("./processing/data/i1.png");
  item[8][1] = loadImage("./processing/data/i2.png");
  item[8][2] = loadImage("./processing/data/i3.png");
  item[8][3] = loadImage("./processing/data/i4.png");
  item[8][4] = loadImage("./processing/data/i5.png");
  item[8][5] = loadImage("./processing/data/i6.png");
  item[8][6] = loadImage("./processing/data/i7.png");
  item[9][0] = loadImage("./processing/data/j1.png");
  item[9][1] = loadImage("./processing/data/j2.png");
  item[9][2] = loadImage("./processing/data/j3.png");
  item[9][3] = loadImage("./processing/data/j4.png");
  item[9][4] = loadImage("./processing/data/j5.png");
  item[9][5] = loadImage("./processing/data/j6.png");
  item[9][6] = loadImage("./processing/data/j7.png");
  
  for(int i=0; i<hoge.length-1; i++) {
    hoge[i] = new Box(100+325*(i%3), 570+(int((i/3))*325), 230, 230);
  }
  hoge[hoge.length-1] = new Box(100+325,570+325*2,230,230);
  for(int i=0; i<cateBox.length; i++){
    cateBox[i] = new Box(-400,250+i*130,400,130);
  }
  for(int i=0; i<password.length; i++){
    for(int j=0; j<password[i].length; j++){
        password[i][j]= -1; //null
    }
  }
  for(int i=0; i<prepos.length; i++){
    prepos[i][0]=216*(i+1)-130;
    prepos[i][1]=130;
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

int scene = 1; //1:SignUp 2:Check 3:LogIn
void draw() {
    switch(scene){
    case 1:
        background(#29739b);
        for (int i=0; i<hoge.length; i++) {
            hoge[i].displayItem(choiceCate(),i);
            if (hoge[i].touch()&&!open){
                //register(nowCate,i);
                
                password[pointer][0] = nowCate;
                password[pointer][1] = i;
                movePointer = true;
            }
          }
        preview();
        menu(cateBox, pic);
    }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

void register(int cID, int iID){
    password[pointer][0] = cID;
    password[pointer][1] = iID;
    pointer++;
}

int prepos[][] = new int[4][2];
void preview(){
  for(int i=0; i<password.length; i++){
    if(password[i][0]<0){ //passwordがnullの場合
        fill(50);
        ellipse(prepos[i][0]+130,prepos[i][1]+130,30,30);
    }else{
        image(item[password[i][0]][password[i][1]],prepos[i][0],prepos[i][1]);
    }
  }
  if(movePointer){
  //pointer++;
  movePointer=!movePointer
          }

}

int nowCate = 0; //現在の表示カテゴリ
int choiceCate(){ //選択されたカテゴリのIDを返す
    for(int i=0; i<cateCheck.length; i++){
        if(cateCheck[i]){
            nowCate = i
            cateCheck[i]=false;
            return nowCate;
        }
    }
    return nowCate;
}

boolean open = false; //menuが開いていたらtrue
int dx=400; //menuの座標変化量
void menu(Box[] cate,Box p){ //カテゴリ選択などのメニューを表示
    for (int i=0; i<cate.length; i++) {
        if(p.touch())cate[i].x+=dx;
        cate[i].display();
        textSize(60);
        fill(20);
        switch(i){
            case 0:
            text("　動物　",cate[i].x+80,cate[i].y+100);
            break;
            case 1:
            text("　交通　",cate[i].x+80,cate[i].y+100);
            break;
            case 2:
            text("　 国 　",cate[i].x+80,cate[i].y+100);
            break;
            case 3:
            text("　 人 　",cate[i].x+80,cate[i].y+100);
            break;
            case 4:
            text("　 色 　",cate[i].x+80,cate[i].y+100);
            break;
            case 5:
            text(" 飲食物 ",cate[i].x+80,cate[i].y+100);
            break;
            case 6:
            text("　行事　",cate[i].x+80,cate[i].y+100);
            break;
            case 7:
            text("　 服 　",cate[i].x+80,cate[i].y+100);
            break;
            case 8:
            text("　科学　",cate[i].x+80,cate[i].y+100);
            break;
            case 9:
            text("ファイル",cate[i].x+80,cate[i].y+100);
            break;
        }
        if (cate[i].touch()&&open){
            cateCheck[i]=true;
            //cate[i].c = color(0, 150, 0);
        }
    }
    if(p.touch()){
        p.x+=dx;
        dx*=-1;
    }
    p.display();
    if(dx>0){
    open = false;
    }else{
    open = true;
    }
    for(int i=0; i<cate.length; i++){
     cate[i].c = color(220);
    }
    cate[nowCate].c = color(0, 150, 0);
}

class Box {
  int x, y, w, h; //左上の座標と縦横
  color c;

  Box(int _x, int _y, int _w, int _h) {
    this.x = _x;
    this.y = _y;
    this.w = _w;
    this.h = _h;
    this.c = color(220);
  }

  void display() { //箱の描写(後に画像へと)
    fill(this.c);
    rect(this.x, this.y, this.w, this.h);
  }
  
  void displayItem(int cID, int iID){
    image(item[cID][iID],this.x-40,this.y);
  
  }

  boolean touch() { //箱のtap判定
    if ((this.x<mouseX)&&(mouseX<this.x+this.w)&&(this.y<mouseY)&&(mouseY<this.y+this.h)) {
      return true;
    } else {
      return false;
    }
  }
  
}


void mouseClicked() {
 //image(item[0][0],mouseX,mouseY);
 }