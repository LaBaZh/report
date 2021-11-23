%输入学号以及补零
x = [3 1 9 0 1 0 5 0 5 5 , zeros(1 , 6)]; 
%基4蝴蝶图相加时的系数
t = [1 1 1 1 ; 1 -1j -1 1j ; 1 -1 1 -1 ; 1 1j -1 -1j];
%将待fft变换的序列分解，矩阵中每一行为一组
x1 = [x(1:4:16) ; x(2:4:16) ; x(3:4:16) ; x(4:4:16)];
%对每组进行4点FFT
X1 = x1*t;
%得到第二级运算的旋转因子矩阵
w = exp(-1j*pi/8);
W = [1 1 1 1 ; 1 w w^2 w^3 ; 1 w^2 w^4 w^6 ; 1 w^3 w^6 w^9];
%第二级FFT变换
X2 = ((X1.*W).'*t).';
X = [X2(1 , 1:4) , X2(2 , 1:4) , X2(3 , 1:4) , X2(4 , 1:4)];
%绘制图像
figure(1)
n = 0:1:15;
stem(n , x , 'filled');
figure(2)
stem(n , abs(X) , 'filled');
figure(3)
stem(n , abs(fft(x)) , 'filled');