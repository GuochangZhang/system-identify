function Rxy=Est_Rxy(x,y,L,Methord)
%�������ܣ� ���ƻ���ؾ���
% x ����������
% L ������ؾ������
%Methord: ���Ʒ���.
%Rxy: ����ؾ���

Rxy=zeros(L,1);
Len=floor((length(x)+length(y))/2);
%����2
if Methord==2
    rxy=xcorr(x,y);
    for i=1:L
        Rxy(i)=rxy(Len-i);
    end
end
end