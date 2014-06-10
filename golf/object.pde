// 箱
void groundSolidRect(int objx,int objy,int objwid,int objhei,int objkado0,int objkado1,int objkado2,int objkado3){

  // 角に当てた時の処理
  for(int cnt=0;cnt<4;cnt++){
    if(objkado0==0&cnt==0){cnt++;}
    if(objkado1==0&cnt==1){cnt++;}
    if(objkado2==0&cnt==2){cnt++;}
    if(objkado3==0&cnt==3){cnt++;}
    if((sqrt(sq(x-objx-objwid*(cnt/2))+sq(y-objy-objhei*(cnt%2)))<r)&cnt<4){
      if(x-objx-objwid*(cnt/2)==0){angleColl=PI/2;}
      else{angleColl=atan((y-objy-objhei*(cnt%2))/(x-objx-objwid*(cnt/2)));}
      if(angleColl<0){angleColl+=PI;}
      x+=2*(cnt/2)-1;
      y+=2*(cnt%2)-1;
      coll=1;
    }
  }
  
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
  noStroke();
  fill(#FFFFFF);
  rect(objx,objy,objwid,objhei);
}
