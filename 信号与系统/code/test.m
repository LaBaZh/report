x = randi([0,1] , [1,2^17]);
tic
fft(x);
toc
%%
tic
fftNew(x);
toc
%%
tic
fftNew1(x);
toc