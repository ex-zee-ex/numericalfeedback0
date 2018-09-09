import themidibus.*; //Import the library
MidiBus myBus;

float spc, theta2,amp,period,dx,yv,wavew;
float aa,ss, dd, ff, gg, jj, hh,kk;
float qq, ww, ee, rr, tt, yy, uu, ii,oo;
int[][] pix0;
int[][] pix1;
int cs=4;
int fill1,w,h,siz;
int sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8;
float theta;
void setup(){

size(1000,1000,P3D);
spc=cs;
wavew=width+cs;
period=width/2.0;
dx=(TWO_PI/period)*spc;
amp=height/4;

colorMode(HSB,100);
w=width/cs;
h=height/cs;
siz=(width*height)/(cs*cs);
pix0=new int[w][h];
pix1=new int[w][h];

for(int i=0;i<w;i++){
  for(int j=0;j<h;j++){
//pix0[i][j]=int(random(0,100));
  }//endjfor
}//endifor


 MidiBus.list();
 myBus = new MidiBus(this, 0, -1);
 
 
 
 sw1=sw2=sw3=sw4=sw5=sw6=sw7=sw8=1;
 
}//endsetup

void draw(){
  theta2 +=.005*(1+10*ww);
  //background(100);
  //int fill3;
//i is x
//translate(width/2,height/2);
float xx=theta2;

for(int i=0;i<w-1;i++){
  
  //here is the bit that generates the waaaves
  amp=cs*(1+height/2*qq);
  yv=(sin(xx)+1)*amp;
 // println(yv);
  xx+=dx;
  fill(0);
 //ellipse(i*spc,height/2+yv,spc,spc);
 
 
 
  //j is y
  for(int j=0;j<h-1;j++){
    
    
    //where is everyone
    int l=pix0[i][j];
    
    int l_u=pix0[i][int(abs(j+h/8*gg))%h];
    int l_r=pix0[int(abs(i+w/8*hh))%w][j];
    
    
     int x=(i)*cs;
    int y=(j)*cs;
    fill1=l;
    if(((y-height/2+amp)<=yv+cs)&&((y-height/2+amp)>=yv-cs)){
    //fill(100);
   // pushMatrix();
   // translate(0,height/2-1);
    //ellipse(x,y,cs,cs);
    //popMatrix();
    fill1=100;
    if(sw1==-1){
    fill1=0;}
    }
    
    
   // ***********RULLES***********
    
    
    //hahathisiscrazystrobezone
    //if the current fill value is the same
    //as the previous one flip it
   // if(fill1==pix1[i][j]){
   //  fill1=abs(100-fill1);
   // }
    
    
    
    
    //would b kinda nice to have a rule somewhere that switches off toroid univerise
    if(l<l_u){
     
    fill1=int(fill1+2*aa*l_u)/2;
      
    }
    if(l<l_r){
     
    fill1=int(fill1+2*ss*l_r)/2;
      
    }
    
    
     if(fill1==pix1[i][j]){
       
       //if u do this one it goes color glitches
    // fill1=int(fill1*log(aa));
    
    fill1=int(fill1*log(1+2*kk));
     
     
    }
    //stroke(fill1,100,100);
    // noFill();
     noStroke();
    fill(fill1);
    pushMatrix();
    translate(x,y);
   // line(-cs/2,0,cs/2,0);
    rect(0,0,cs,cs);
   // line(-cs,-cs,cs,cs);
    popMatrix();
   
    //so if you add feedback in here its only in the rightways x direction
   // pix1[i][j]=int(fill1*.9*(1+sin(theta*fill1/1000)));
    
    
     pix1[i][j]=fill1;
    
    /*
    int scl=1;
    int fill1=0;
    int fill2=0;
   // int fill3=0;
    int l=int(pix0[i][j]*(1+qq));
    int l_u=int(pix0[i][abs((j-1)%h)]*(1+ww));
    int l_r=int(pix0[i+1][j]*(1+ee));
    int l_l=int(pix0[abs((i-1)%w)][j]*(1+rr));
    int l_d=int(pix0[i][(j+1)%h]*(1+tt));
    int l_d_l=int(pix0[abs(i-1)%w][(j+1)%h]*(1+yy));
    int l_d_r=int(pix0[(i+1)%w][(j+1)%h]*(1+uu));
    int l_u_r=int(pix0[(i+1)%w][abs((j-1)%h)]*(1+ii));
    int l_u_l=int(pix0[abs((i-1)%w)][abs((j-1)%h)]*(1+oo));
    
    
 
   // println(pixxx[loc]);
   
    
    
    //fill1=(l_u_l-l_d_l/2+l_r/4-l_l/6+l_u_r-l_u_l)/8;
    
    if(sw1*l_u<sw1*l){
    fill1+=25;
    }
    if(sw2*l_d<sw2*l){
    fill1+=25;
    }
    if(sw3*l_l<sw3*l){
    fill1+=25;
    }
    if(sw4*l_r<sw4*l){
    fill1+=25;
    }
    
    if(sw5*l_u_l<sw5*l){
    fill2+=25;
    }
    if(sw6*l_u_r<sw6*l){
    fill2+=25;
    }
    if(sw7*l_d_r<sw7*l){
    fill2+=25;
    }
    if(sw8*l_d_l<sw8*l){
    fill2+=25;
    }
    
   // if(l_u_l>50){
    
  //  }
    
    fill1=(fill1+fill2)/2;
    
    
    
     if(keyPressed){
       
      if(key=='p'){
        if(x*x+y*y<1000){
          fill1=0;
    // println("yeah");
        }
       }//endp
     }//endifkeypressed
    
    if(x==0){
    fill1=int(fill1*(1+cos(theta)));
    }
    if(y==0){
    fill1=int(fill1*(1+sin(theta)));
    }
    */
   // fill(fill1%100,100,100);
   
 
     
    
    
    
  
  }//endjfor
}//endifor
//noLoop();

for(int i=0;i<w;i++){
  for(int j=0;j<h;j++){
pix0[i][j]=pix1[i][j];
//println(pix0[i][j]);
  }//endjfor
}//endifor


 if(keyPressed){
   if(key=='q'){
      sw1=sw2=sw3=sw4=sw5=sw6=sw7=sw8=1;
   
   }
   
   if(key=='1'){
   sw1*=-1;
   //println(sw1);
   }
     if(key=='2'){
   sw2*=-1;
   //println(sw1);
   }
     if(key=='3'){
   sw3*=-1;
   //println(sw1);
   }
     if(key=='4'){
   sw4*=-1;
   //println(sw1);
   }
   
     if(key=='5'){
   sw5*=-1;
   //println(sw1);
   }
     if(key=='6'){
   sw6*=-1;
   //println(sw1);
   }
   
     if(key=='7'){
   sw7*=-1;
   //println(sw1);
   }
     if(key=='8'){
   sw8*=-1;
   //println(sw1);
   }
   
   
 if(key==']'){
  for(int i=0;i<w;i++){
   for(int j=0;j<h;j++){
    pix0[i][j]=int(random(0,100));
   }//endjfor
  }//endifor
 }//end]
 
 }//endifkeypressed
 
 theta+=.01;
}//enddraw

void controllerChange(int channel, int number, int value) {
  
  //AAALSO note on and note off can be used as switches!! 
  
  // Receive a controllerChange
  /*
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  */
  
  
  
  if(number==20){
  qq=(value)/127.0;
 // println("x="+x);
  }
   if(number==21){
  ww=(value)/127.0;

 // println("x="+x);
  }
 if(number==71){
  ee=(value)/127.0;

 // println("x="+x);
  }
   if(number==72){
  rr=(value)/127.0;

 // println("x="+x);
  }
   if(number==25){
  tt=(value)/127.0;

 // println("x="+x);
  }
   if(number==73){
  yy=(value)/127.0;
 // println("x="+x);
  }
   if(number==74){
  uu=(value)/127.0;

 // println("x="+x);
  }
   if(number==70){
  ii=(value)/127.0;

 // println("x="+x);
  }
   if(number==63){
  oo=(value)/127.0;

 // println("x="+x);
  }
  
  
  
  
  
  if(number==22){
  aa=(value)/127.0;

 // println("x="+x);
  }
  if(number==23){
  ss=(value)/127.0;

 // println("x="+x);
  }
  if(number==61){
  dd=(value)/127.0;

 // println("x="+x);
  }
  if(number==24){
  ff=(value)/127.0;

 // println("x="+x);
  }
  if(number==26){
  gg=(value-63)/63.0;

 // println("x="+x);
  }
  if(number==27){
  hh=(value-63)/63.0;

 // println("x="+x);
  }
  if(number==62){
  jj=(value)/127.0;

 // println("x="+x);
  }
  if(number==95){
  kk=(value)/127.0;

 // println("x="+x);
  }
}//endcontrollerchange