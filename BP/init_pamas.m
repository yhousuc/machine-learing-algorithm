%% ѵ��������

% note: ���ز���Ԫ�����Զ��壡
% note: ѵ����������Ҫ����
% note: ��������Ԫֵ������ɺ���ܸ�������Ȩ����ֵ����

% ��(0, 1)��Χ�������ʼ�������е�����Ȩ����ֵ
d = size(X, 2); % �������Ԫ����
q = d+2; % ���ز���Ԫ��
l = size(Y, 2); % �������Ԫ����

global v w yam cta
v = rand(d, q); % ����㵽���ز�����Ȩ
w = rand(q, l); % ���ز㵽���������Ȩ
yam = rand(1,q); % ���ز���ֵ
cta = rand(1,l); % �������ֵ

global result % ����ѵ������ȷ��
% ��v w yam cta����ѵ��
for time = 1: 10000 %ѵ������
    for i = 1:size(X, 1) %����ѵ�����е�ÿ������
        % ÿ������Ϊ��x, y) 
        x = X(i, :); 
        y = Y(i, :);

        alpha = x*v; % ���ز�����
        b = f(alpha, yam); % ���ز����

        bet = b*w; % ���������
        y8 = f(bet, cta); % ��������
        
        result(time, i) = y8;
        
        g = y8.*(1-y8).*(y-y8);
        deta_w = eta*b'*g; % �����������Ȩ����ֵ��΢��
        deta_cta = -eta*g;
         e = b.*(1-b).*(g*w');
        deta_yam = -eta*e;
        deta_v = eta*x'*e;   
        % ������ɺ�ͬ�����¡�
        w = w + deta_w; % ����w
        cta = cta + deta_cta; % ����cta
        yam = yam + deta_yam; % ����yam
        v = v + deta_v; % ����v
    end
end
    
