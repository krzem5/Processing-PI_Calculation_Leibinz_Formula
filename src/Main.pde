final double TARGET_PI_VALUE=3.1415926535897932;



double pi;
int idx=1;



void setup(){
	size(1920,1080);
}



void draw(){
	background(0);
	if (idx%2==1){
		pi+=(double)4/(idx*2-1);
	}
	else{
		pi-=(double)4/(idx*2-1);
	}
	idx++;
	if (Double.toString(pi)==Double.toString(TARGET_PI_VALUE)){
		noLoop();
	}
	noFill();
	stroke(255);
	strokeWeight(0.5);
	beginShape();
	for (int i=1;i<idx;i++){
		float v=(float)1/(i*2-1);
		if (i%2==0){
			v=-v;
		}
		vertex(map(i,0,idx,0,width),map(v,-1,1,height-50,50));
	}
	endShape();
	strokeWeight(2);
	line(0,height/2,width,height/2);
	textAlign(RIGHT,BOTTOM);
	textFont(createFont("consolas",20));
	text(df(Double.toString(pi)),width,height-20);
	text(df(Double.toString(TARGET_PI_VALUE)),width,height);
}



String df(String d){
	while (d.length()<18){
		d+="0";
	}
	return d;
}
