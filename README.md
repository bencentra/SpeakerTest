SpeakerTest
=========

Sample sketch for the "Speaker" UI component for [EEGJ](https://github.com/codenameriri/EEGJ).

RiriSpeaker
---------

To create a RiriSpeaker object:
```java
// Instance vars
PImage backgroundImg;
RiriSpeaker speaker;

void setup() {
	// Load the background image
	backgroundImg = loadImage('pathtofile.png');
	// Create the speaker (xPos, yPos, width, height, background)
	speaker = new RiriSpeaker(0,0,width,height,backgroundImage);
}

void draw() {
	// Draw the speaker	
	speaker.draw();
}

void mousePressed() {
	// Click to set the position of the grpah
	speaker.setSpeakerSize(speaker.graphWidth);
}
```

The speaker starts at position 0. Use the `setSpeakerSize()` method to set the position of the speaker. As long as the speaker's `draw()` method is being called in the main sketch's draw loop, it will automatically animate. 