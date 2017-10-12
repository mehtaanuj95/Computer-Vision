pkg load image;
% Test COde

tablet = imread('anuj.jpg');
tablet = rgb2gray(tablet);
%tablet = tablet(:,:,2);
%tablet = tablet / 3;


%imshow(tablet); hold on;
glyph = tablet(1050:1165,1410:1540);
%imshow(glyph); 


[y x]= find_template_2D(glyph, tablet);
disp([y x])


%imagesc(tablet);
%hold on;
%plot(x, y, 'r+', 'markersize', 16);
%hold off;