%区间类型转化为效益类型
function [f2]=G_Inter2Max(X,a,b)
% X表示需要正向化的决策矩阵的某一列
% a,b分别表示最佳区间的上下限
    M=max([a-min(X),max(X)-b]);%向量X中的所有元素与最佳区间[a,b]的最远距离
    f2=ones(size(X),1);
    for i=1:size(X)
        if i<a
            f2(i)=1-(a-X(i))/M;%当X(i)小于a时的公式
        elseif i>b
            f2(i)=1-(X(i)-b)/M;
        else
            f2(i)=1;
        end
    end
end
