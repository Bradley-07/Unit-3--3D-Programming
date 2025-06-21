float rotx,roty;

color turquoise = #15A6AD;
color green = #385A4A;


void setup(){
size(800,800,P3D);
//rotx = radians(45);
//roty =radians(45);

}


void draw(){
  background(255);
 //cube(width/2,height/2,0,turquoise,100);
 ball(width/2,height/2,0,green,100);
}

void mouseDragged(){
rotx = rotx + (pmouseY - mouseY)*0.01;
roty = roty + (pmouseX - mouseX)*-0.01;
}

void cube(float x, float y,float z, color c, float s){
  pushMatrix();
translate(x,y,z);
rotateX(rotx);
rotateY(roty);
//rotateZ();

fill(c);
stroke(0);
strokeWeight(2);
box(s); //w,h,d
popMatrix();
}

void ball(float x,float y,float z, color c, float s){
  translate(x,y,z);
rotateX(rotx);
rotateY(roty);
  
fill(c);
stroke(0);
strokeWeight(2); 
sphere(s);
}
