void stage(int stageNum){
  if(stageNum==0){
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
    groundSolidRect(480,480,20,20,1,1,1,1);
    groundSolidRect(520,500,20,20,1,1,1,1);
    groundSolidRect(480,520,20,20,1,1,1,1);
  }
}
