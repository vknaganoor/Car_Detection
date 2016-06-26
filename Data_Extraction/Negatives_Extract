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
    im = imread(image);
    Im = demosaic(im,'bggr');
    xmin = randi([1,700],1);
    ymin = randi([1,900],1);
    width = 32;
    height = 32;
    image_segment = imcrop(Im,[xmin,ymin,width,height]);
    imwrite(image_segment,image_name)
    i
end
