for i=1:4:length(M)
    One = 'tme';
    Two = num2str(M(i,1));
    Three = '/';
    Four = 'Right/';
    Six = M(i,2);
    if(Six>9999)
        Five = '0';
    elseif(Six>999)
        Five = '00';
    else
        Five = '000';
    end
    Six = num2str(Six);
    Seven = '-R.png';
    image = strcat(One,Two,Three,Four,Five,Six,Seven);
    image_name = strcat(Five,Six,Seven);
    im= imread(image);
    Im = demosaic(im,'bggr');
    xmin = M(i,3);
    ymin = M(i,4);
    xmax = M(i,5);
    ymax = M(i,6);
    width = xmax - xmin;
    height = ymax -ymin;
    image_segment = imcrop(Im,[xmin,ymin,width,height]);
    imwrite(image_segment,image_name)
    i
end
