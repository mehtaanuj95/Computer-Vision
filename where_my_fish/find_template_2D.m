function [yIndex xIndex] = find_template_2D(template, img)
	c = normxcorr2(template, img);
	%c = c / 2;
	
	imshow(c);
	%surf(c);
	[y x] = find(c == max(c(:)));
	yIndex = y - size(template, 1) + 1;
	xIndex = x - size(template, 2) + 1;

endfunction