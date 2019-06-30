void show_block(int n) {
  if (hit3[n]>0) {
    if( n==1 || n==4 || n==8) {
      stroke(0);
      fill(255, 0, 0);
      rect(50*n,0 , b_w, b_h);
    } else if (n==2 || n==6 || n==7) {
      stroke(0);
      fill(0, 255, 0);
      rect(50*n, 0, b_w, b_h);
    } else {
      stroke(0);
      fill(0, 0, 255);
      rect(50*n, 0, b_w, b_h);
    }
  }
  if (hit2[n]>0) {
    if (n==1 || n==4 || n==8 ) {
      stroke(0);
      fill(255, 0, 0);     
      rect(50*n, 30, b_w, b_h);
    } else if (n==2 || n==6 || n==7) {
      stroke(0);
      fill(0, 255, 0);
      rect(50*n, 30, b_w, b_h);
    } else {
      stroke(0);
      fill(0, 0, 255);
      rect(50*n, 30, b_w, b_h);
    }
  }

  if (hit[n]>0) {
    if (n==1 || n==4 || n==8) {
      stroke(0);
      fill(255, 0, 0);
      rect(50*n, 60, b_w, b_h);
    } else if (n==2 || n==6 || n==7) {
      stroke(0);
      fill(0, 255, 0);
      rect(50*n, 60, b_w, b_h);
    } else {
      stroke(0);
      fill(0, 0, 255);
      rect(50*n, 60, b_w, b_h);
    }
  }
}