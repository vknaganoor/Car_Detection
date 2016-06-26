close all
clc

% addpath('M:\MR_Databases');
oneFolderName='Y:\aquibselfie\';

fldrs = dir(oneFolderName);  % list all sub folders of oneFolderName
d1=224;
d2=224;
count=192;
%% One levels only to load mat files for visualization
    for ii = 1:numel(fldrs)
    
     if fldrs(ii).name(1) == '.'
       continue;   % skip '.' and '..' asuuming all other sub folders do not start with .
     end
     cd('Y:\aquibselfie\');
     count=count+1;
     fls = dir(fullfile(oneFolderName, fldrs(ii).name)); % list all jpg files in subfolder
     a=imread(fls.name);
     b=imresize(a,[d1,d2]);
     fname=sprintf('im_%d.jpg',count);
     cd('Y:\selfie\');
     imwrite(b,fname);
     
     
     
     end
%      figure;imshow(Iout1);
