 void end_game(){
   if (b_count==30) {
    background(255);
    textSize(20);
    fill(0, 0, 255);
    text("GAMECLEAR", 175, 175);
  }


  if (count2>=3) {//死んだら
    fill(255);
    rect(50, 350, 50, 5);//バーを固定
    dx=0;
    dy=0;//ボールをとめる

    textSize(20);
    fill(255);
    text("GAMEOVER", 175, 175);
  } else {
    fill(255);
    rect(mouseX-25, 350, 50, 5);//生きてる時のバーの位置
  }
 }