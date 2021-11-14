A[] kero=new A[10];

void setup() {
 size(1000,500);
 
 for(int i=0; i<kero.length; i++){
   kero[i]=new A();
 }
}

void draw(){
  background(255);
  for(int i=0; i<kero.length; i++) {
    kero[i].update();
    kero[i].bounce();
    kero[i].display();
  }
} 