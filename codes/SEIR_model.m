function [S,E,I,R] = SEIR_model(t,r,B,a,y,S0,E0,I0,R0,N0)
%SEIR_model ���ڼ���S��E��I��R������Ⱥ������
%   ���S��E��I��RΪ������Ⱥ������
%   ���������tΪԤ���ʱ��,rΪһ����Ⱦ��ÿ��Ӵ����׸���������BΪ��Ⱦϵ�������ǰ�S��Ⱥ��ΪE��Ⱥ�ĸ��ʣ�
%   aΪ��¶�ߵķ����ʣ�yΪ�ָ�ϵ��
S(1)=S0;
E(1)=E0;
I(1)=I0;
R(1)=R0;
for i = 1:t
    S(i+1) = S(i) - r*B*S(i)*I(i)/N0;
    E(i+1) = E(i) + r*B*S(i)*I(i)/N0-a*E(i);
    I(i+1) = I(i) + a*E(i) - y*I(i);
    R(i+1) = R(i) + y*I(i);
end
end

