clc;
clear;

%% ����Ԥ����
disp('���ڽ�������Ԥ����...');
[matrix,attributes_label,attributes]=id3_preprocess();

%% ����ID3������������id3()Ϊ�Զ��庯��
disp('����Ԥ������ɣ����ڽ��й�����...');
tree = id3(matrix,attributes_label,attributes);

%% ��ӡ����������
[nodeids,nodevalues] = print_tree(tree);
tree_plot(nodeids,nodevalues);

disp('ID3�㷨������������ɣ�');