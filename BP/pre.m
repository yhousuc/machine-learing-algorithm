%% pre��Ԥ�⺯��
function [ y ] = pre( x )
%PRE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global v w yam cta;

        a = x*v; % ���ز�����
        b = f(a, yam); % ���ز����

        beta = b*w; % ���������
        y = f(beta, cta); % ��������

end
