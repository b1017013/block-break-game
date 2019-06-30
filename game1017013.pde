/*1017013 西俣雷斗*/

void setup() {
  size(500, 400);
}//ウィンドウのサイズ

float x=0;
float y=100;
float dx=1;
float dy=3;


int []hit ={3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
int []hit2={3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
int []hit3={3, 3, 3, 3, 3, 3, 3, 3, 3, 3};

float r_w = 50.0; // racket width
float b_w = 50.0; // block width
float b_h = 30.0; // block height
float a_w = 5.0; // ball width
float a_h = 5.0; // ball height


int count=0;//バーに当たった回数
int count2=0;//床に当たった回数
int b_count=0;
int a = 0;
int a2 = 0;
int a3 = 0;
int b = 0;
void draw() {

  int ref=0;


  if (x>width) {
    dx=-1;
  } else if (x<0) {
    dx=1;
  }
 if (y>=height) {
    x=0;
    y=90;
    dx=1;
    dy=5;
  } else if (y<0) {
    dy=3;
  }

  ////////////////壁の反射表現


  x=x+dx;
  y=y+dy;//x,yの動く表現


  background(0);//動いてるように見せるための塗りつぶし
  noStroke();
  if (a == 0) {
    fill(255);
  } else {
    fill_ball(a, b);
  } 
  rect(x, y, a_w, a_w);





  for (int i=0; i<hit.length; i++) {//
    for (int j=0; j<3; j++) {
      show_block(i);

      if (hit[i]>0) {
        ref=checkHitBlock(i, j, x, y);

        if (ref != 0) {
          a = ref;
          b = i;
        }
        switch(ref) {
        case 1:
          hit[i]--;          
          dy=-dy;
          b_count++;
          break;
        case 3:
          dx=-dx;
          hit[i]--;
          b_count++;
          break;
        case 5:
          dy=-dy;
          hit[i]--;
          b_count++;
          break;
        case 7:
          dx=-dx;
          hit[i]--;
          b_count++;
          break;
        case 2:
        case 8:
          dy=-dy;
          hit[i]--;
          b_count++;
          break;
        case 4:
        case 6:
          dx=-dx;
          hit[i]--;
          b_count++;
          break;
        }
      }

      if (hit2[i]>0) {
        ref=checkHitBlock(i, j, x, y);
        if (ref != 0) {
          a2 = ref;
          b = i;
        }
        switch(ref) {
        case 9:
          dy=-dy;
          hit2[i]--;
          b_count++;
          break;
        case 11:
          dx=-dx;
          hit2[i]--;
          b_count++;
          break;
        case 13:
          dy=-dy;
          hit2[i]--;
          b_count++;
          break;
        case 15:
          dx=-dx;
          hit2[i]--;
          b_count++;
          break;

        case 10:
        case 16:
          dy=-dy;
          hit2[i]--;
          b_count++;
          break;
        case 12:
        case 14:
          dx=-dx;
          hit2[i]--;
          b_count++;
          break;
        }
      }

      if (hit3[i]>0) {
        ref=checkHitBlock(i, j, x, y);
        if (ref != 0) {
          a3 = ref;
          b = i;
        }
        switch(ref) {
        case 17:
          dy=-dy;
          hit3[i]--;
          b_count++;
          break;
        case 19:
          dx=-dx;
          hit3[i]--;
          b_count++;
          break;
        case 21:
          dy=-dy;
          hit3[i]--;
          b_count++;
          break;
        case 23:
          dx=-dx;
          hit3[i]--;
          b_count++;
          break;

        case 18:
        case 24:
          dy=-dy;
          hit3[i]--;
          b_count++;
          break;
        case 20:
        case 22:
          dx=-dx;
          hit3[i]--;
          b_count++;
          break;
        }
      }
    }
  }
end_game();






  text(count, 10, 380);
  text(count2, 480, 380);////カウント表示の位置

  if ( mouseX+25>width && count2<3) {
    rect(450, 350, 50, 5);//マウスが右端に来た時バーを固定
  }
  if (mouseX-25<0 && count2<3) {
    rect(0, 350, 50, 5);//マウスが左端に来た時バーを固定
  }

  if ( y+3>=350 && y<351 ) {//ボールのy座標がバーの位置より大きく
    if (x>=mouseX-25 && x<=mouseX+25 && count2<3) {//生きてる時ボールのx座標がバーの中にあるなら
      dy=-dy;//ボールを反射
      count=count+1;//ボールがバーに当たった回数を１増やす
    }
  }



  if (y>=height ) {//床に当たったら
    count2=count2+1;//死んだ回数を１増やす
  }
}