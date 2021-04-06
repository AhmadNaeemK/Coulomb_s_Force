class charge{
  
  float strength;
  float mass;
  
  PVector pos;
  PVector acc;
  PVector vel;
  PVector force;
  
  int[] chargeColor = new int[3];
  
  
  public charge(float strength, PVector pos){
    this.mass = 1;
    this.pos = pos;
    this.strength = strength;
    
    if (this.strength < 0) {this.chargeColor[0] = 255; this.chargeColor[1] = 0; this.chargeColor[2] = 0;}
    else if (this.strength == 0) {this.chargeColor[0] = 0; this.chargeColor[1] = 255; this.chargeColor[2] = 0;}
    else {this.chargeColor[0] = 0; this.chargeColor[1] = 0; this.chargeColor[2] = 255;}
    
    }
  
  public void show(){
    
    ellipseMode(CENTER);
    noStroke();
    fill(this.chargeColor[0], this.chargeColor[1], this.chargeColor[2]);
    ellipse(this.pos.x, this.pos.y, this.mass, this.mass);
    
  }
  
}
