%% �������
clear all
input_data % ����ѵ����
init_pamas % ����ѵ��

% ��ʼԤ��
for i = 1:size(X,1)
    p = pre(X(i,:));
    % x��p�ĸ���Ϊ1
    fprintf('f( %s ) = round(%.4f) = %d\n', num2str(X(i,:)), p, round(p));
end

% ��ͼ
plot(result);
if size(X, 1)>=4
    legend(num2str(X(1,:)),num2str(X(2,:)),num2str(X(3,:)),num2str(X(4,:)));
end
title('���');
xlabel('ѵ������');
ylabel('Ϊ1�ĸ��ʣ�����Ϊ0�ĸ���');
