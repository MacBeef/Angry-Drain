
// initialization

void setup(){
  surface.setTitle("Angry Drain; return of drainage");
  fullScreen();
  size(1920, 1080);
}

void draw(){
  if(onIntroScreen){
    introScreen();
  }else if(inSingleplayer){
    background(30, 50, 60);
  }else if(inMultiplayer){
    background(255, 150, 60);
  }else if(inOptions){
    background(100, 50, 255);
  }
}
