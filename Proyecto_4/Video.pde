class video
{
  int v;
  
  video(int v_)
  {
    v=v_;
  }
  
  void display()
  {
  image(video,0,0,640,480);
  opencv.loadImage(video); 
  }
  
  void capture()
  {
    
  opencv.useColor(HSB);

  opencvH = opencv.getH();  

  opencvS = opencv.getS(); 

  opencvV = opencv.getV();   

  Core.inRange(opencvH, new Scalar( 0), new Scalar( 15), opencvH);

  Core.inRange(opencvS, new Scalar(71), new Scalar(131), opencvS);

  Imgproc.erode(opencvH, opencvH, new Mat());

  Imgproc.erode(opencvS, opencvS, new Mat());

  Core.bitwise_and(opencvH, opencvS, opencvV);
 opencv.setGray(opencv.getV());

  contours = opencv.findContours(true, true);

  //scale(1);

  for (int f=0; f<contours.size(); f++) {

    if (contours.get(f).area() > 8000) {

      contours.get(f).draw();

    }

  } 
  }
}
