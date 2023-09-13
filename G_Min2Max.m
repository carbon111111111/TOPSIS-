%成本类型转化为转效益类型
function [f1]=G_Min2Max(X)
% X表示需要正向化的决策矩阵的某一列
    [n1,~]=size(X);
    f1=repmat(max(X),n1,1)-X;
end