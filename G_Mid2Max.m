%中间型转化为效益型
function [f3]=G_Mid2Max(X,value)
% X表示需要正向化的决策矩阵的某一列
% value表示处于中间的最好值
    M=max(abs(X-value));
    f3=1-abs(X-value)/M;
end