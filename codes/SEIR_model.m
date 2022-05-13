function [S,E,I,R] = SEIR_model(t,r,B,a,y,S0,E0,I0,R0,N0)
%SEIR_model 用于计算S、E、I、R四种人群的数量
%   输出S、E、I、R为四种人群的数组
%   输入参数：t为预测的时间,r为一个感染者每天接触的易感者人数，B为传染系数（就是把S人群变为E人群的概率）
%   a为暴露者的发病率，y为恢复系数
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

