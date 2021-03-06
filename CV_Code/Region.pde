class Region {
  
  // size of the region
  float sizeX;
  float sizeY;
  
  // position of the region
  float posX;
  float posY; 
  
  // color of the region (for display)
  color col; 
  
  Region(float posX_, float posY_, float sizeX_, float sizeY_, color col_) {
    sizeX = sizeX_;
    sizeY = sizeY_;
    posX = posX_;
    posY = posY_;
    col = col_;
  }
  
  boolean contains(float x1, float y1) {
    return posX <= x1 && x1 <= posX + sizeX &&
           posY <= y1 && y1 <= posY + sizeY; 
  }
  
  void display() {
    fill(col, 100);
    rect(posX, posY, sizeX, sizeY);
  }
  
}