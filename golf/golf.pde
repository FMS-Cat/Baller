int avail=1,genesw,holdStart=1,shot,charge,coll,start=1,goal=0,gameover,stageSel,score;
float resist=0.999,e=0.8,f=0.99;
float x,y,r=10,vx=0,vy=0,ax=0,ay=0.02,pv,ox,oy,pox,poy,m,cx,cy,angleVelo,angleColl,angleRef,angleShot,vm,am,dist,mxFirst,myFirst,power,glow,FX=1,xStop,yStop,timer=0.999999,timerStop,timerPow;
int[] bgColor={51,153,153};
PFont hel=createFont("Helvetica Neue",12);
PFont helb=createFont("Helvetica Neue",96);

import ddf.minim.*;

Minim minim;
AudioPlayer soundBounce,soundSmash,soundDead,soundScore;
  
void setup(){
  
  size(640,640);
  frameRate(320);
  
  minim = new Minim(this);
  soundBounce=minim.loadFile("bounce.wav");
  soundSmash=minim.loadFile("smash.wav");
  soundDead=minim.loadFile("dead.wav");
  soundScore=minim.loadFile("score.wav");
  
}

void draw(){
  
  background(bgColor[0],bgColor[1],bgColor[2]);
  
  vx=vx+ax;
  vy=vy+ay;
  x=x+vx;
  y=y+vy;
  
  angleVelo=atan2(-vy,-vx);
  
  if(gameover==0&goal==0){
    if(mousePressed==true&avail>=1){
      if(holdStart==1){
        mxFirst=mouseX;
        myFirst=mouseY;
        holdStart=0;
      }
      charge=1;
      if(charge==1){
        power=sqrt(sq(mxFirst-mouseX)+sq(myFirst-mouseY))*2;
        if(power>200){power=200;}
        if(mxFirst==mouseX){angleShot=PI/2;}
        else{angleShot=atan((myFirst-mouseY)/(mxFirst-mouseX));}
        if(angleShot<0){angleShot+=PI;}
        if(mouseY>myFirst){angleShot+=PI;}
        if(angleShot==0&mouseX>mxFirst){angleShot=PI;}
      }
    }else{
      if(charge==1){
        shot=1;
        avail--;
        charge=0;
      }
    }
  }
  
  if(shot==1){
    vx=power*cos(angleShot)*0.03;
    vy=power*sin(angleShot)*0.03;
    soundBounce.rewind();
    soundBounce.play();
    soundSmash.rewind();
    soundSmash.play();
    holdStart=1;
  }
  
  if(goal>=1&gameover==0){
    if(FX==1){
      xStop=x;yStop=y;timerStop=timer;
      if(goal==1){
        soundScore.rewind();
        soundScore.play();
      }
    }
    x=xStop;y=yStop;timer=timerStop;vx=0;vy=0;
    FX*=0.95;
    if(FX<0.01&goal==1){
      stageSel=int(random(15));
      score++;
      timer=1;
      goal=2;
      start=1;
      FX=1;
    }
    if(FX<0.01&goal==2){
      goal=0;
      FX=1;
    }
  }
  
  if(gameover>=1&goal==0){
    if(FX==1){
      xStop=x;yStop=y;timerStop=timer;charge=0;holdStart=1;
      if(gameover==1){
        soundDead.rewind();
        soundDead.play();
      }
    }
    x=xStop;y=yStop;timer=timerStop;vx=0;vy=0;
    FX*=0.95;
    if(gameover==1){FX*=0.9;}
    if(FX<0.01&gameover==1){
      stageSel=0;
      score=0;
      timer=1;
      gameover=2;
      start=1;
      FX=1;
    }
    if(FX<0.01&gameover==2){
      gameover=0;
      FX=1;
    }
  }
  
  stage(stageSel);
  
  if(coll==1){
    if(shot==0){  
      vx*=f;vy*=f;
      pv=sqrt(sq(vx)+sq(vy));
      angleRef=angleColl*2-angleVelo;
      vx=pv*cos(angleRef)*(1-abs(cos(angleColl))*(1-e));
      vy=pv*sin(angleRef)*(1-abs(sin(angleColl))*(1-e));
      if(pv<0.1&avail<=0){gameover=1;}
      if(abs(cos(angleColl)*vx)+abs(sin(angleColl)*vy)>0.3){
        soundBounce.rewind();
        soundBounce.play();
      }
      println(angleColl);
    }
    coll=0;
  }
  
  if(timer<=0.004){gameover=1;}
  
  if(x<0|width<x|y<0|height<y){gameover=1;}
  
  shot=0;
  vx*=resist;vy*=resist;
  
  if(charge==1){
    stroke(bgColor[0],bgColor[1],bgColor[2]);
    strokeWeight(6);
    noFill();
    line(x,y,x-(power-1)*cos(angleShot),y-(power-1)*sin(angleShot));
    ellipse(x,y,power*2,power*2);
    ellipse(mxFirst,myFirst,20+sin(timer*100)*7,20+sin(timer*100)*7);
    stroke(255);
    strokeWeight(2);
    noFill();
    line(x,y,x-(power-1)*cos(angleShot),y-(power-1)*sin(angleShot));
    ellipse(x,y,power*2,power*2);
    ellipse(mxFirst,myFirst,20+sin(timer*100)*7,20+sin(timer*100)*7);
    for(int cnt=0;cnt<6;cnt++){
      noStroke();
      fill(bgColor[0],bgColor[1],bgColor[2],255-cnt*32);
      ellipse(x+(r+8+cnt*10)*cos(angleShot),y+(r+8+cnt*10)*sin(angleShot),8,8);
      fill(255,255-cnt*32);
      ellipse(x+(r+8+cnt*10)*cos(angleShot),y+(r+8+cnt*10)*sin(angleShot),4,4);
    }
  }
  
  noStroke();
  fill(bgColor[0],bgColor[1],bgColor[2]);
  ellipse(x,y,r*2+4,r*2+4);
  fill(255);
  ellipse(x,y,r*2,r*2);
  
  fill(0,71);
  noStroke();
  textFont(helb);
  textAlign(CENTER,CENTER);
  text(score,width/2-2,height/2-15);
  
  if(gameover==2|goal==2){timer=0.999999;}
  
  timer=pow(timer,timerPow);
  fill(0,71);
  for(int c=0;c<60;c++){
    float rr;
    if(c<timer*60&timer*60<c+1){rr=((timer*60)%1)*5;}else if(c+1<timer*60){rr=5;}else{rr=0;}
    ellipse(width/2+sin(PI/60*2*c)*70,height/2-cos(PI/60*2*c)*70,rr,rr);
  }
  timer=pow(timer,1/timerPow);
  
  if(goal==1){
    noFill();
    strokeWeight((1-FX)*width*sqrt(2));
    stroke(#339999);
    ellipse(width/2,height/2,width*sqrt(2),height*sqrt(2));
    if(FX<0.02){
      noStroke();
      fill(51,153,153,(0.02-FX)*255/0.01);
      rect(0,0,width,height);
    }
  }
  
  if(goal==2){
    noStroke();
    fill(51,153,153);
    if(FX<0.02){
      fill(51,153,153,(FX-0.01)*255/0.01);
    }
    ellipse(width/2,height/2,width*sqrt(2)*FX,height*sqrt(2)*FX);
  }
  
  if(gameover==1){
    strokeWeight((1-FX)*32);
    stroke(#FFFFFF);
    for(int cnt=-16;cnt<17;cnt++){
      line(-10+cnt*40,-10,+650+cnt*40,+650);
    }
  }
  
  if(gameover==2){
    noStroke();
    fill(255);
    if(FX<0.02){
      fill(255,(FX-0.01)*255/0.01);
    }
    ellipse(width/2,height/2,width*sqrt(2)*FX,height*sqrt(2)*FX);
  }
  
  fill(0,0,0,127);
  noStroke();
  textFont(hel);
  textAlign(LEFT,TOP);
  text("x = "+round(x)+" , y = "+round(y),5,0);
  text("Velocity = "+float(round(sqrt(sq(vx)+sq(vy))*100))/100,5,10);
  text(frameRate,5,20);
}

void keyPressed(){
  gameover=1;
}

void stop(){
  soundBounce.close();
  soundSmash.close();
  soundDead.close();
  soundScore.close();
  minim.stop();
  super.stop();
}
