class element
{
  public int h, w, X, Y, r,g,b;
  public element(int x,int y, int a, int b)
  {
    h= (int) random(1,a);
    w=b;
    X=x;
    Y=0;
    r=255;
    g=255;
    b=255;
  }
  public void show()
  {
    fill(r,g,b);
    rect(X,Y,w,h);
  }
  public void setColor(int a, int d, int c)
  {
    r=a;
    g=d;
    b=c;
  }
 
}


element[] el;
void setup()
{
  size(600,400);
  int x=0;
  el= new element[60];
  for(int i=0; i<60; i++)
  {
    el[i]=new element(x, this.height-10, this.height, 10);
    x+=10;
  }

}

//element* ptr;
int i=0;
int tmp;
int j;

void draw()
{
  if(i>=60)
  {
    traverse();
    display();
    counting();
    noLoop();
  }
    for(j=i; j<60; j++)
    {
      if(el[i].h<el[j].h)
      {
        
        el[i].setColor(0,230,153);
        el[j].setColor(255,85,0);
        tmp= el[i].h;
        el[i].h=el[j].h;
        el[j].h=tmp;
        
        
        
        
        //el[i].show();
        
      }
      
      clear();
      
      display();
    }
    //traverse();
  i++;
  
}

void counting()
{
  for(int i=0; i<60; i++)
    print(el[i].h+"\n");
}


void display()
{
   for(int i=0; i<60; i++)
  {
    el[i].show();
  }
}

void traverse()
{

  for(int i=0; i<60; i++)
  {
    el[i].setColor(255,255,255);
  }
  
}
