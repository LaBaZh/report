%please open this file with UTF-8

%设置频率为50Hz
f = 50;
%设置五种序列的抽样间隔
T = [0.000625 , 0.005 , 0.0046875 , 0.004 , 0.0025];
%设置截断点数为32
N1 = 0:1:31;
%设置截断点数为16
N2 = 0:1:15;
%序列一：抽样间隔为0.000625s，截断点数为32
x1 = sin(2*pi*f*T(1)*N1);
%序列二：抽样间隔为0.005s，截断点数为32
x2 = sin(2*pi*f*T(2)*N1);
%序列三：抽样间隔为0.0046874s，截断点数为32
x3 = sin(2*pi*f*T(3)*N1);
%序列四：抽样间隔为0.004s，截断点数为32
x4 = sin(2*pi*f*T(4)*N1);
%序列五：抽样间隔为0.0025s，截断点数为16
x5 = sin(2*pi*f*T(5)*N2);

%调用drawPic函数绘制五个序列的时域图像和频域分析结果
drawPic(x1 , N1 ,'序列1');
drawPic(x2 , N1 ,'序列2');
drawPic(x3 , N1 ,'序列3');
drawPic(x4 , N1 ,'序列4');
drawPic(x5 , N2 ,'序列5');