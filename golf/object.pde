// 箱
void groundSolidRect(int objx,int objy,int objwid,int objhei,int objkado0,int objkado1,int objkado2,int objkado3){
  
  // 縦に当てた時の処理
  if(objx<x&x<objx+objwid&objy-r<y&y<objy+objhei+r){
    if(y<objy+objhei/2){y=objy-r;}
    else{y=objy+objhei+r;}
    angleColl=PI/2;coll=1;
  }
  // 横に当てた時の処理
  if(objx-r<x&x<objx+objwid+r&objy<y&y<objy+objhei){
    if(x<objx+objwid/2){x=objx-r;}
    else{x=objx+objwid+r;}
    angleColl=0;coll=1;
  }
  
  // 角に当てた時の処理
  for(int cnt=0;cnt<4;cnt++){
    if(objkado0==0&cnt==0){cnt++;}
    if(objkado1==0&cnt==1){cnt++;}
    if(objkado2==0&cnt==2){cnt++;}
    if(objkado3==0&cnt==3){cnt++;}
    if((dist(x,y,objx+objwid*(cnt/2),objy+objhei*(cnt%2))<r)&objy-r+(objhei+r)*(cnt%2)<y&y<objy+(objhei+r)*(cnt%2)&objx-r+(objwid+r)*(cnt/2)<x&x<objx+(objwid+r)*(cnt/2)&cnt<4){
      angleColl=atan2((y-objy-objhei*(cnt%2)),(x-objx-objwid*(cnt/2)));
      x=objx+objwid*(cnt/2)+cos(angleColl)*(r+0.1);
      y=objy+objhei*(cnt%2)+sin(angleColl)*(r+0.1);
      coll=1;
    }
  }
  
  noStroke();
  fill(255);
  rect(objx,objy,objwid,objhei);
}

void groundSolidEllipse(int objx,int objy,int objr){
  if(dist(x,y,objx,objy)<r+objr){
    angleColl=atan2(y-objy,x-objx);
    x=objx+cos(angleColl)*(r+objr+0.1);
    y=objy+sin(angleColl)*(r+objr+0.1);
    coll=1;
  }
  
  noStroke();
  fill(255);
  ellipse(objx,objy,objr*2,objr*2);
}

void goalEllipse(int objx,int objy,int objr){
  if(dist(x,y,objx,objy)<r+objr){
    angleColl=atan2(y-objy,x-objx);
    x=objx+cos(angleColl)*(r+objr+0.1);
    y=objy+sin(angleColl)*(r+objr+0.1);
    goal=1;
  }
  noStroke();
  fill(255,255-glow*255,255-glow*153);
  ellipse(objx,objy,objr*2,objr*2);
  glow*=0.99;
  if(glow<0.1){glow=1;}
}
