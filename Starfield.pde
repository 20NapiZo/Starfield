  background(0);
  
  pat = new particle[o];
    for(int i=0; i<pat.length; i++) {
    pat[i] = new norm();
  }
  pat[0] = new odd();
  pat[1] = new jum();
}

void draw(){
   background(0);
   for(int i=0; i<pat.length; i++){ 
    pat[i].show(); 
    pat[i].move();
   }
}

void mousePressed(){
  
}

interface particle{
  public void show();
  public void move();
}

class jum extends norm{
  public void show(){
    fill(c);
    noStroke();
    ellipse((int)x,(int)y,80,80);
  }
}

class norm implements particle{
  double x, y, speed, angle;
  int c;
  
  norm(){
    c = 255;
    x = width/2;
    y = height/2;
    speed = Math.random()*10;
    angle = Math.random()*Math.PI*2;
  }
  public void move(){
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
  }
  public void show(){
    fill(c);
    noStroke();
    ellipse((int)x,(int)y,2,2);
  } 
}

class odd implements particle{
  double x, y, speed, angle;
  int c;
  
  odd(){
    c = 0;
    x = width/2;
    y = height/2;
    speed = Math.random()*10;
    angle = Math.random()*Math.PI*2;
  }
  public void move(){
    x = x + (int) (Math.random()*17)-8;
    y = y + (int) (Math.random()*17)-8;
  }
  public void show(){
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    noStroke();
    rect((int)x,(int)y,200,200);
  }
  
}
