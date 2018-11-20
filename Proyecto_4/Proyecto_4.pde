import gab.opencv.*;
import processing.video.*;
import org.opencv.core.Mat;
import org.opencv.core.Core;
import org.opencv.core.Scalar;
import org.opencv.imgproc.Imgproc;


OpenCV opencv;
Capture video;
Mat opencvH, opencvS, opencvV;

video v1;

ArrayList<Contour> contours;

void setup() {

size(640, 480);
background(0);

opencv = new OpenCV(this, 640, 480);
v1 = new video (1);

video = new Capture(this, 640, 480);
video.start();

}

void draw (){

  if (video.available() == true) {

    video.read();
    v1.display();
    v1.capture();
  }

}
