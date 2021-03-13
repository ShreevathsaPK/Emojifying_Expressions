%faceDetector = vision.CascadeObjectDetector;
%shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 255]);

I=imread('obama.jpeg');

BW1 = edge(I(:,:,1),'sobel');

%imshow(BW1);

%bbox = step(faceDetector, I);
% Draw boxes around detected faces and display results
%I_faces = step(shapeInserter, I, int32(bbox));
%imshow(I_faces), title('Detected faces');

faceDetector = vision.CascadeObjectDetector;
shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 255]);
bbox = step(faceDetector, I);
% Draw boxes around detected faces and display results
I_faces = step(shapeInserter, I, int32(bbox));
imshow(I_faces), title('Detected faces');

