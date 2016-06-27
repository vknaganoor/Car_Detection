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
    Eight = '-R.jpg';
    image = strcat(One,Two,Three,Four,Five,Six,Seven);
    image_name = strcat(Five,Six,Seven);
    im= imread(image);
    Im = demosaic(im,'bggr');
    xmin = randi([1,700],1);
    ymin = randi([1,700],1);
    width = 63;
    height = 63;
    image_segment = imcrop(Im,[xmin,ymin,width,height]);
    imwrite(image_segment,image_name)
    i
end
