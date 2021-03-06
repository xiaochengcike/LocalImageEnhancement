%
function dummy = calculateLHE(filterSize, forestgray, padoption)

finalImage = lochist(forestgray, filterSize, padoption);

hold on;
subplot(1,3,1)
imshow(forestgray, [])
title('Original image')

subplot(1,3,2)
imshow(finalImage, [])
title('Locally enhanced image')

subplot(1,3,3)
imshow(histeq(forestgray, 256), []); %Matlab tricks us and default #outputColors = 64 unless explicitly specified!
title('Globally enhanced image');
hold off;

dummy = 3.14;