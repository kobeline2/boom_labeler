%% read original images and adjust the sizes
img = imread("ref_img/scene00001.png");
ref = imread("ref_img/ref.png");
ref = imresize(ref, 0.5);
ref = ref(1:end-1, :, :);
%% preview them
figure; imshow(img)
figure; imshow(ref)

%% output
% imwrite(img, "ref_img/img_src.tiff")
% imwrite(ref, "ref_img/img_src.tiff")