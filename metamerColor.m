% oim = double(imread('experiment.png'));
% 
% opts = metamerOpts(oim, 'windowType=radial', 'scale=0.5', 'aspect=2');
% 
% m = mkImMasks(opts);
% 
% plotWindows(m, opts);
% 
% params = metamerAnalysisColor(oim, m, opts);
% 
% res = metamerSynthesisColor(params, size(oim), m, opts);

for i=0:29
    im = 'face' + string(i) + '.png';
    oim = double(imread(im));
%     outputImage = 'outputImage=' + string(i);
    opts = metamerOpts(oim, 'windowType=radial', 'scale=0.5', 'aspect=2', 'outputImage', i);
    m = mkImMasks(opts);
    plotWindows(m, opts);
    params = metamerAnalysisColor(oim, m, opts);
    res = metamerSynthesisColor(params, size(oim), m, opts);
end