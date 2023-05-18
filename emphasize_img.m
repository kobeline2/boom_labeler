filePath = "/Users/takahiro/Desktop/佐久間ダム動画データ/220725_snapshots/" + ...
    "scene00681.png";
img = imread(filePath);
shadow_lab = rgb2lab(img);
max_luminosity = 100;
L = shadow_lab(:,:,1)/max_luminosity;

shadow_imadjust = shadow_lab;
shadow_imadjust(:,:,1) = imadjust(L)*max_luminosity;
shadow_imadjust = lab2rgb(shadow_imadjust);

shadow_histeq = shadow_lab;
shadow_histeq(:,:,1) = histeq(L)*max_luminosity;
shadow_histeq = lab2rgb(shadow_histeq);

shadow_adapthisteq = shadow_lab;
shadow_adapthisteq(:,:,1) = adapthisteq(L)*max_luminosity;
shadow_adapthisteq = lab2rgb(shadow_adapthisteq);

imshow(img)
figure; imshow(shadow_adapthisteq)