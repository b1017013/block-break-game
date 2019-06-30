void fill_ball(int ref,int i){
  if(ref != 0){
    switch(i){
      case 1:
      case 4:
      case 8:
        fill(255,0,0);
        break;
      case 2:
      case 6:
      case 7:
        fill(0,255,0);
        break;
      case 3:
      case 5:
      case 9:
      case 0:
        fill(0,0,255);
        break;
    }
  }
}
        

/*int bcolor;
int[] beforecolor=new int[10];
void fill_ball(){
for(int i=0;i<beforecolor.length;i++){
beforecolor[i]=1;
  if(beforecolor[i]!=hit[i]){
bcolor=i;
}
beforecolor[i]=hit[i];
println(beforecolor[i]);
}
  if(bcolor==0 || bcolor==3 || bcolor==5 || bcolor==7 || bcolor==9){
fill(255,0,0);
}

}*/
/*void fill_ball(int s, int t, float x, float y) {

  float colorbox=-1;
  
  
  if(y==90){
    colorbox=x;
  

 if((colorbox>=0 && colorbox<50) ||( colorbox>=150 && colorbox<200) || (colorbox>=250 && colorbox<300) || (colorbox>=450 && colorbox<500)) {
    
      fill(0, 0, 255);
      noStroke();
      rect(x, y, a_w, a_w);//ボールの位置と大きさ
    }
   else if( (colorbox>=50 && colorbox<100) ||( colorbox>=200 && colorbox<250) || (colorbox>=400 && colorbox<450) ) {
    
      fill(255, 0, 0);
      noStroke();
      rect(x, y, a_w, a_w);//ボールの位置と大きさ
    }
   else if ((colorbox>=100 && colorbox<150) ||( colorbox>=300 && colorbox<350) || (colorbox>=350 && colorbox<400) ) {
    
      fill(0, 255, 0);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  }
}
  





/*
  if (s==0 || s==4 || s==7 ||s==9 && t==1) {
    if (y==60) {
      fill(0, 0, 255);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else if (s==2 || s==6 && t==1 ) {
    if (y==60) {
      fill(255, 0, 0);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else if (s==1 || s==3 || s==5 || s==8 && t==1) {
    if (y==60) {
      fill(0, 255, 0);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else if (s==1 || s==6 && t==0) {
    if (y==30) {
      fill(0, 0, 255);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else if (s==0 || s==3 || s==5 || s==7 || s==9 && t==0 ) {
    if (y==30) {
      fill(255, 0, 0);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else if (s==2 || s==4 || s==8 && t==0 ) {
    if (y==30) {
      fill(0, 255, 0);
      noStroke();
      rect(x, y, a_w, a_w);
    }
  } else {
    noStroke();
    rect(x, y, a_w, a_w);
  }
}
*/