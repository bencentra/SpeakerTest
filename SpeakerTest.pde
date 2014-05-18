/*
*	GraphTest.pde - Demo of the focus/relax graphs
*
*	Made by Brennan Kirsche and Ben Centra
*/

//Sketch dimensions
int WIDTH = 1200;
int HEIGHT = 600;
int GRAPH_W = 600;

//Graphs
RiriSpeaker speaker, speaker2;

// Background Images
PImage bg_focus, bg_relax;

boolean playing = true;


//setup
void setup()
{
//Sketch Setup
size(WIDTH, HEIGHT);
background(0);
frameRate(60);
//Background Images
bg_focus = loadImage("focus_radial.png");
bg_relax = loadImage("relax_radial.png");
//Graph
speaker = new RiriSpeaker(0,0,GRAPH_W, HEIGHT,bg_focus);
speaker2 = new RiriSpeaker(GRAPH_W,0,GRAPH_W, HEIGHT,bg_relax);
  
}

void draw()
{
	if (playing) {
		background(0);
		// Draw the speakers
    	speaker.draw();
    	speaker2.draw();
	}
}

// Set the value of the speakers
void keyPressed() {
	if (key == ' ') {
		playing = !playing;
	}
	if (key == '1') {
		speaker.setSpeakerSize(speaker.graphWidth - 20);
		speaker2.setSpeakerSize(speaker.graphWidth - 20);
	}
	if (key == '2') {
		speaker.setSpeakerSize(speaker.graphWidth/2);
		speaker2.setSpeakerSize(speaker.graphWidth/2);
	}
}
