function outLightField = CreateLightField(workingDir,u,v,s,t)


colorchanel = 3;
%%%%initialize a 4D light field
LightField = zeros(u,v,s,t,colorchanel);


%%%%%%% Read in Images from workingDir to create LightField
for i = 1:u
    for j = 1:v
        %filename = fullfile(workingDir,sprintf('dragons-%d.png',(i-1)*v+j));
        filename = fullfile(workingDir,sprintf('IMG_08%d.jpg',(i-1)*v+j-1 + 60));
        img = double(imread(filename))./255;
        LightField(i,j,:,:,:) = reshape(img,[1,1,s,t,colorchanel]);
    end
end

outLightField = LightField;















