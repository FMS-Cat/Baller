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
    if(start==1){x=90;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0005;
    timerPow=1;
    
    //box
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(420,320,100);
  }
  
  // コの字
  if(stageNum==1){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0009;
    timerPow=1;
    
    //box
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(0,300,480,40,0,0,1,1);
    
    goalEllipse(160,200,80);
  }
  
  // バウンド、右下
  if(stageNum==2){
    if(start==1){x=520;y=320;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0007;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(320,310,320,30,1,1,0,0);
    groundSolidRect(320,480,30,160,1,0,1,0);
    
    goalEllipse(520,520,50);
  }
  
  // ボールの下に横板
  if(stageNum==3){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(240,240,160,40,1,1,1,1);
    
    goalEllipse(320,120,80);
  }
  
  // plus
  if(stageNum==4){
    if(start==1){x=160;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(240,300,160,40,1,1,1,1);
    groundSolidRect(300,240,40,160,1,1,1,1);
    
    goalEllipse(440,200,80);
  }
  
  // U
  if(stageNum==5){
    if(start==1){x=160;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(290,0,60,320,0,1,0,1);
    
    goalEllipse(480,200,80);
  }
  
  // Bubble
  if(stageNum==6){
    if(start==1){x=540;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    goalEllipse(0,640,120);
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidEllipse(320,-160,540);
    groundSolidEllipse(320,640,160);
  }
  
  // コの字(2)
  if(stageNum==7){
    if(start==1){x=440;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(0,220,520,40,0,0,1,1);
    
    goalEllipse(120,120,80);
  }
  
  // 左上右下バブル
  if(stageNum==8){
    if(start==1){x=140;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    goalEllipse(640,0,320);
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidEllipse(0,0,420);
    groundSolidEllipse(640,640,420);
  }
  
  // ボールの下に縦板
  if(stageNum==9){
    if(start==1){x=140;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.001;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(260,240,40,160,1,1,1,1);
    
    goalEllipse(320,160,50);
  }
  
  // H2O?
  if(stageNum==10){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0014;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(320,240,80);
    groundSolidEllipse(240,320,80);
    groundSolidEllipse(400,320,80);
  }
  
  // 障害物なし
  if(stageNum==11){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0013;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(400,200,50);
  }
  
  // 障害物なし
  if(stageNum==12){
    if(start==1){x=520;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0013;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(220,340,60);
  }
  
  // 角からぴょこっと
  if(stageNum==13){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0013;
    timerPow=1;
    
    goalEllipse(400,200,50);
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
  }
  
  // 障害物なし
  if(stageNum==14){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=51;bgColor[1]=153;bgColor[2]=153;}
    timer-=0.0013;
    timerPow=1;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(160,160,50);
  }
  
  // まるに反射 (Dark)
  if(stageNum==-1){
    if(start==1){x=160;y=620;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0015;
    timerPow=4;
    
    goalEllipse(440,80,120);
    groundSolidEllipse(640,640,320);
    groundSolidEllipse(960,0,480);
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(300,0,40,320,0,1,0,1);
  }
  
  // 3x3 (Dark)
  if(stageNum==-2){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0015;
    timerPow=3;
    
    groundSolidRect(-80,-80,160,160,0,0,0,1);
    groundSolidRect(560,-80,160,160,0,1,0,0);
    groundSolidRect(-80,560,160,160,0,0,1,0);
    groundSolidRect(560,560,160,160,1,0,0,0);
    
    groundSolidRect(240,-80,160,160,0,1,0,1);
    groundSolidRect(240,560,160,160,1,0,1,0);
    
    groundSolidEllipse(0,320,80);
    groundSolidEllipse(640,320,80);
    
    groundSolidRect(240,240,160,160,1,1,1,1);
    goalEllipse(320,160,60);
  }
  
  // エッジ反射 (Dark)
  if(stageNum==-3){
    if(start==1){x=120;y=620;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0013;
    timerPow=4;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,280,120,840,0,0,0,0);
    
    groundSolidRect(0,280,200,40,0,0,1,1);
    groundSolidRect(440,280,200,40,1,1,0,0);
    
    goalEllipse(120,200,40);
  }
  
  // 落下 (Dark)
  if(stageNum==-4){
    if(start==1){x=160;y=200;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0015;
    timerPow=4;
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(0,200,400,40,0,0,1,1);
    
    goalEllipse(320,640,80);
  }
  
  // 糸通し (Dark)
  if(stageNum==-5){
    if(start==1){x=320;y=620;start=0;avail=1;bgColor[0]=83;bgColor[1]=83;bgColor[2]=83;}
    timer-=0.0019;
    timerPow=4;
    
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(0,200,305,30,0,0,1,1);
    groundSolidRect(335,200,305,30,1,1,0,0);
    
    goalEllipse(320,-700,800);
  }
}
