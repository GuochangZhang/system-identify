function Rxx=Est_Rxx(x,L,Methord)
%�������ܣ� ��������ؾ���
% x ����������
% L ������ؾ������
%Methord: ���Ʒ���.ȡֵ��ΧΪ1-2
%Rxx: ����ؾ���

Rxx=zeros(L,L);
%����2
if Methord==2
    rxx=xcorr(x);
    for i=1:L
        for j=1:L
            Rxx(i,j)=rxx(length(x)-i+j);
        end
    end
end
end