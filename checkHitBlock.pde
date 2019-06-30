int checkHitBlock(int n, int k, float x, float y) {
  float left   = b_w * n;//ブロックの左辺のｘ座標
  float right  = b_w * (n + 1);//ブロックの右辺のｘ座標
  float top    = b_h*k ;//ブロックの上辺のｙ座標
  float bottom = b_h*k + b_h;//ブロックの下辺のｙ座標
  float cx = left + b_w / 2;//ブロックの真ん中のｘ座標
  float cy = top + b_h / 2;//ブロックの真ん中のｙ座標
  float y1, y2;

  if ((x + a_w <= left) ||
    (x >= right) ||
    (y + a_h <= top) ||
    (y >= bottom)) {
    return 0;
  }

  x = x + a_w / 2;
  y = y + a_h / 2;

  y1 = y - (-(x - cx)* b_h / b_w + cy);
  y2 = y - ( (x - cx)* b_h / b_w + cy);


  if (y1 > 0 && k==2 ) {
    if (y2 > 0) {

      return 1;
    } else if (y2 == 0) {
      return 2;
    } else {
      return 3;
    }
  } else if (y1 < 0 && k==2  ) {
    if (y2 > 0) {

      return 7;
    } else if (y2 == 0) {
      return 6;
    } else {
      return 5;
    }
  } else  if (y2 > 0 && k==2) {
    return 8;
  } else if (y2 == 0) {
    return -1;////////////////////////////////////////////////////1段目のブロックのあたり判定
  } else if ( y1 > 0 && k==1 ) {
    if (y2 > 0) {

      return 9;
    } else if (y2 == 0) {
      return 10;
    } else {
      return 11;
    }
  } else if (y1 < 0 && k==1  ) {
    if (y2 > 0) {

      return 15;
    } else if (y2 == 0) {
      return 14;
    } else {
      return 13;
    }
  } else 
  if (y2 > 0 && k==1) {
    return 16;
  } else if (y2 == 0) {
    return -1;//////////////////////////////////////////////////////2段目のブロックのあたり判定
  } else if ( y1 > 0 && k==0 ) {
    if (y2 > 0) {

      return 17;
    } else if (y2 == 0) {
      return 18;
    } else {
      return 19;
    }
  } else if (y1 < 0 && k==0  ) {
    if (y2 > 0) {

      return 23;
    } else if (y2 == 0) {
      return 22;
    } else {
      return 21 ;
    }
  } else { 
    if (y2 > 0 && k==0) {
      return 24 ;
    } else if (y2 == 0) {
      return -1;/////////////////////////////////////////////////////3段目のブロックのあたり判定
    }
  }

  return 0;
}








/* 
 if (y1 > 0 && y-a_h/2>=30 && y-a_h/2<=60 ) {
 if (y2 > 0) {
 
 return 9;
 } else if (y2 == 0) {
 return 10;
 } else {
 return 11;
 }
 
 } else if (y1 < 0 && y-a_h/2>=30 && y-a_h/2<=60  ) {
 if (y2 > 0) {
 
 return 15;
 } else if (y2 == 0) {
 return 14;
 } else {
 return 13;
 }
 
 } else {
 if (y2 > 0 && y-a_h/2>=60 && y-a_h/2<=90) {
 return 16;
 } else if (y2 == 0) {
 return -2;
 } else {
 return 12;
 }
 }
 }
 */