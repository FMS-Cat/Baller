void stage(int stageNum){
  if(stageNum==999999){
    if(start==1){x=90;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    
    //box
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    //hole
    groundSolidRect(320,320,80,80,1,1,1,0);
    groundSolidRect(480,320,80,80,1,0,1,1);
    groundSolidRect(320,360,240,40,0,0,0,0);
    
    //l
    groundSolidRect(160,240,40,240,1,1,1,0);
    groundSolidRect(160,440,80,40,0,1,1,1);
    
    //f
    groundSolidRect(80,80,80,20,1,0,1,1);
    groundSolidRect(80,120,80,20,0,0,1,1);
    groundSolidRect(80,80,20,80,1,1,0,1);
    
    //m
    groundSolidRect(200,80,80,20,1,0,1,0);
    groundSolidRect(200,80,20,80,1,1,0,1);
    groundSolidRect(240,80,20,80,0,1,0,1);
    groundSolidRect(280,100,20,60,0,1,1,1);
    
    //s
    groundSolidRect(380,80,60,20,1,0,1,1);
    groundSolidRect(340,140,60,20,1,1,0,1);
    groundSolidRect(380,80,20,80,1,0,0,1);
    
    //edges
    groundSolidEllipse(480,480,10);
    groundSolidEllipse(520,500,10);
    goalEllipse(480,520,20);
  }
  
  // init
  if(stageNum==0){
    if(start==1){x=360;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0002;
    timerPow=1;
    
    //box
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    goalEllipse(360,480,160);
  }
  
  // "ko" no ji
  if(stageNum==1){
    if(start==1){x=360;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0006;
    timerPow=1;
    
    //box
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(0,620,480,40,0,0,1,1);
    
    goalEllipse(240,400,120);
  }
  
  // h^
  if(stageNum==2){
    if(start==1){x=520;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0004;
    timerPow=1;
    
    goalEllipse(720,1280,240);
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(360,620,360,40,1,1,0,0);
    groundSolidRect(360,960,40,320,1,0,1,0);
  }
  
  // bar below goal
  if(stageNum==3){
    if(start==1){x=360;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(280,360,160,40,1,1,1,1);
    
    goalEllipse(360,240,80);
  }
  
  // plus
  if(stageNum==4){
    if(start==1){x=160;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0006;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(240,300,160,40,1,1,1,1);
    groundSolidRect(300,240,40,160,1,1,1,1);
    
    goalEllipse(440,200,80);
  }
  
  // U
  if(stageNum==5){
    if(start==1){x=200;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(330,0,60,480,0,1,0,1);
    
    goalEllipse(550,200,80);
  }
  
  // Double Bubble
  if(stageNum==6){
    if(start==1){x=600;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    goalEllipse(0,1280,160);
    
    groundSolidRect(-100,-100,920,220,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidEllipse(360,380,540);
    groundSolidEllipse(360,1280,160);
  }
  
  // "c" letter
  if(stageNum==7){
    if(start==1){x=440;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(320,320,520,40,1,1,0,0);
    
    goalEllipse(560,220,80);
  }
  
  // Bubble Left-Up
  if(stageNum==8){
    if(start==1){x=140;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0005;
    timerPow=1;
    
    goalEllipse(720,160,320);
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidEllipse(320,0,420);
    groundSolidEllipse(1000,640,420);
  }
  
  // bar below goal
  if(stageNum==9){
    if(start==1){x=140;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0007;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(320,480,40,160,1,1,1,1);
    
    goalEllipse(420,320,120);
  }
  
  // Simple
  if(stageNum==10){
    if(start==1){x=440;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0008;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    goalEllipse(160,580,50);
  }
  
  // Simple
  if(stageNum==11){
    if(start==1){x=320;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0009;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    goalEllipse(400,200,70);
  }
  
  // Simple
  if(stageNum==12){
    if(start==1){x=540;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0009;
    timerPow=1;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    goalEllipse(220,340,90);
  }
  
  // Simple
  if(stageNum==13){
    if(start==1){x=250;y=1260;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0011;
    timerPow=1;
    
    goalEllipse(440,200,210);
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
  }
  
  // Ellipse reflect (Dark)
  if(stageNum==-1){
    if(start==1){x=140;y=1260;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0013;
    timerPow=4;
    
    goalEllipse(120,0,320);
    groundSolidEllipse(720,1280,360);
    groundSolidEllipse(1040,320,720);
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(0,820,250,40,0,0,1,1);
  }
  
  // 3x3 (Dark)
  if(stageNum==-2){
    if(start==1){x=360;y=940;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0015;
    timerPow=3;
    
    groundSolidRect(-40,240,160,160,1,1,1,1);
    groundSolidRect(600,240,160,160,1,1,1,1);
    groundSolidRect(-40,880,160,160,1,1,1,1);
    groundSolidRect(600,880,160,160,1,1,1,1);
    
    groundSolidRect(280,240,160,160,1,1,1,1);
    groundSolidRect(280,880,160,160,1,1,1,1);
    
    groundSolidEllipse(40,640,80);
    groundSolidEllipse(680,640,80);
    
    groundSolidRect(280,560,160,160,1,1,1,1);
    goalEllipse(360,480,60);
  }
  
  // Yuka Edge (Dark)
  if(stageNum==-3){
    if(start==1){x=120;y=1260;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0011;
    timerPow=4;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,600,120,1480,0,0,0,0);
    
    groundSolidRect(0,600,220,80,0,0,1,1);
    groundSolidRect(480,600,220,80,1,1,0,0);
    
    goalEllipse(120,120,240);
  }
  
  // Fall (Dark)
  if(stageNum==-4){
    if(start==1){x=160;y=400;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0012;
    timerPow=4;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(0,400,400,40,0,0,1,1);
    
    goalEllipse(360,1280,100);
  }
  
  // Itotoshi (Dark)
  if(stageNum==-5){
    if(start==1){x=360;y=1260;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0012;
    timerPow=4;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    groundSolidRect(0,400,330,30,0,0,1,1);
    groundSolidRect(390,400,330,30,1,1,0,0);
    
    goalEllipse(360,-600,800);
  }
  
  // H2O?
  if(stageNum==-6){
    if(start==1){x=360;y=1260;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0009;
    timerPow=4;
    
    groundSolidRect(-100,-100,920,120,0,0,0,0);
    groundSolidRect(-100,1260,920,120,0,0,0,0);
    groundSolidRect(-100,-100,120,1480,0,0,0,0);
    groundSolidRect(700,-100,120,1480,0,0,0,0);
    
    goalEllipse(360,320,80);
    groundSolidEllipse(280,400,80);
    groundSolidEllipse(440,400,80);
  }
}
