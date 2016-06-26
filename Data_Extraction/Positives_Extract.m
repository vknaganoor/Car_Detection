for i=1:3:length(M)
    One = 'tme';
    Two = num2str(M(i,1));
    Three = '/';
    Four = 'Right/';
    Five = '0';
    Six = num2str(M(i,2));
    Seven = '-R.png';
    image = strcat(One,Two,Three,Four,Five,Six,Seven);
    image_name = strcat(Five,Six,Seven);
    im= imread(image);
    Im = demosaic(im,'bggr');
    xmin = M(3,3);
    ymin = M(3,4);
    xmax = M(3,5);
    ymax = M(3,6);
    width = xmax - xmin;
    height = ymax -ymin;
    image_segment = imcrop(Im,[xmin,ymin,width,height]);
    imwrite(image_segment,image_name)
    i
end
