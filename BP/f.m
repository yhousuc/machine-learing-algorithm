%% f����Ԫ�������
function [ y ] = f( bet, cta )
%F ������Ԫ���
%   bet����Ԫ���룬cta����ֵ

s = size(bet, 2);
if s~=size(cta)
    fprintf('����f��������')
end

y = zeros(1, s);
for i = 1:s
    y(i) = Sigmoid(bet(i)-cta(i));
end
