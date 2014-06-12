void stage(int stageNum){
  if(stageNum==-1){
    if(start==1){x=90;y=620;start=0;avail=1;}
    
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
  
  
  if(stageNum==0){
    if(start==1){x=90;y=620;start=0;avail=1;}
    
    //box
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(420,320,100);
  }
  
  if(stageNum==1){
    if(start==1){x=320;y=620;start=0;avail=1;}
    
    //box
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(0,300,480,40,0,0,1,1);
    
    goalEllipse(160,200,80);
  }
  
  if(stageNum==2){
    if(start==1){x=320;y=620;start=0;avail=1;}
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    goalEllipse(320,240,80);
    groundSolidEllipse(240,320,80);
    groundSolidEllipse(400,320,80);
  }
  
  if(stageNum==3){
    if(start==1){x=520;y=320;start=0;avail=1;}
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(320,310,320,30,1,1,0,0);
    groundSolidRect(320,480,30,160,1,0,1,0);
    
    goalEllipse(520,520,50);
  }
  
  if(stageNum==4){
    if(start==1){x=160;y=620;start=0;avail=1;}
    goalEllipse(440,80,120);
    groundSolidEllipse(640,640,320);
    groundSolidEllipse(960,0,480);
    
    groundSolidRect(-100,-100,840,120,0,0,0,0);
    groundSolidRect(-100,620,840,120,0,0,0,0);
    groundSolidRect(-100,-100,120,840,0,0,0,0);
    groundSolidRect(620,-100,120,840,0,0,0,0);
    
    groundSolidRect(300,0,40,320,0,1,0,1);
  }
  
  if(stageNum==5){
    if(start==1){x=320;y=620;start=0;avail=1;}
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
}
