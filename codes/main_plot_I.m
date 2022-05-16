%clear all;
% close all;
clc;
data1=load('./Model_Omicron_China/OUTPUT/OPT=school_close_SH+new_I_Is_H_ICU_D_byS-V1-V2-V3-V1E-V2E-V3E-V1W-V2W-V3W-R-RDelta.txt');
%data2=load('OPT=A_baseline+state_S_Is_H_ICU_D_byS-V1-V2-V3-V1E-V2E-V3E-V1W-V2W-V3W-R-RDelta.txt');
%data3=load('OPT=A_baseline+vac_V1_V2_VB.txt');
sim1=data1(1:637,:);
sim2=data1(638:1274,:);
sim3=data1(1275:1911,:);
sim4=data1(1912:2548,:);
y1=sim1;
for i=1:1
save_NEW_S_I        = zeros(637,1);	
save_NEW_V1_I       = zeros(637,1);	
save_NEW_V2_I       = zeros(637,1);	
save_NEW_V3_I       = zeros(637,1);	
save_NEW_V1E_I      = zeros(637,1);	
save_NEW_V2E_I      = zeros(637,1);		
save_NEW_V3E_I      = zeros(637,1);	
save_NEW_V1W_I      =zeros(637,1);	
save_NEW_V2W_I      =zeros(637,1);	
save_NEW_V3W_I      =zeros(637,1);	
save_NEW_R_I        =zeros(637,1);	
save_NEW_RDelta_I   =zeros(637,1);	  
save_NEW_S_Is	    =zeros(637,1);	
save_NEW_V1_Is	    =zeros(637,1);		 
save_NEW_V2_Is		=zeros(637,1);	
save_NEW_V3_Is      =zeros(637,1);	
save_NEW_V1E_Is     =zeros(637,1);	
save_NEW_V2E_Is     =zeros(637,1);	
save_NEW_V3E_Is     =zeros(637,1);	
save_NEW_V1W_Is     =zeros(637,1);	
save_NEW_V2W_Is     =zeros(637,1);	
save_NEW_V3W_Is     =zeros(637,1);	
save_NEW_R_Is       =zeros(637,1);	
save_NEW_RDelta_Is  =zeros(637,1);	
save_NEW_S_H        =zeros(637,1);	
save_NEW_V1_H		=zeros(637,1);	
save_NEW_V2_H       =zeros(637,1);		
save_NEW_V3_H       =zeros(637,1);	
save_NEW_V1E_H      =zeros(637,1);	
save_NEW_V2E_H      =zeros(637,1);	
save_NEW_V3E_H      =zeros(637,1);	
save_NEW_V1W_H      =zeros(637,1);	
save_NEW_V2W_H      =zeros(637,1);	
save_NEW_V3W_H      =zeros(637,1);	
save_NEW_R_H        =zeros(637,1);	
save_NEW_RDelta_H   =zeros(637,1);	
save_NEW_S_ICU      =zeros(637,1);	
save_NEW_V1_ICU     =zeros(637,1);	
save_NEW_V2_ICU     =zeros(637,1);	
save_NEW_V3_ICU     =zeros(637,1);	
save_NEW_V1E_ICU    =zeros(637,1);	
save_NEW_V2E_ICU 	=zeros(637,1);	
save_NEW_V3E_ICU    =zeros(637,1);	
save_NEW_V1W_ICU 	=zeros(637,1);	
save_NEW_V2W_ICU	=zeros(637,1);	
save_NEW_V3W_ICU    =zeros(637,1);	
save_NEW_R_ICU      =zeros(637,1);	
save_NEW_RDelta_ICU =zeros(637,1);	
save_NEW_S_D        =zeros(637,1);	
save_NEW_V1_D		=zeros(637,1);	
save_NEW_V2_D       =zeros(637,1);		
save_NEW_V3_D       =zeros(637,1);	
save_NEW_V1E_D      =zeros(637,1);	
save_NEW_V2E_D      =zeros(637,1);	
save_NEW_V3E_D      =zeros(637,1);	
save_NEW_V1W_D      =zeros(637,1);	
save_NEW_V2W_D      =zeros(637,1);	
save_NEW_V3W_D      =zeros(637,1);	
save_NEW_R_D        =zeros(637,1);	
save_NEW_RDelta_D   =zeros(637,1);	   
end
for i=1:14
     save_NEW_S.I{i}=y1(:,3+60*(i-1));	
     save_NEW_S_I = save_NEW_S.I{i}+save_NEW_S_I;
     
     save_NEW_V1.I{i}=y1(:,4+60*(i-1));	
     save_NEW_V1_I=save_NEW_V1_I+save_NEW_V1.I{i};
     
     save_NEW_V2.I{i}=y1(:,5+60*(i-1));
     save_NEW_V2_I = save_NEW_V2_I+save_NEW_V2.I{i};
     
     save_NEW_V3.I{i}=y1(:,6+60*(i-1));
     save_NEW_V3_I = save_NEW_V3.I{i} + save_NEW_V3_I;
     
     save_NEW_V1E.I{i}=y1(:,7+60*(i-1));
     save_NEW_V1E_I=save_NEW_V1E.I{i}+save_NEW_V1E_I;
     
     save_NEW_V2E.I{i}=y1(:,8+60*(i-1));	
     save_NEW_V2E_I =save_NEW_V2E.I{i}+save_NEW_V2E_I;
     
     save_NEW_V3E.I{i}=y1(:,9+60*(i-1));
     save_NEW_V3E_I =save_NEW_V3E.I{i}+save_NEW_V3E_I;
     
     save_NEW_V1W.I{i}=y1(:,10+60*(i-1));	
     save_NEW_V1W_I = save_NEW_V1W.I{i} + save_NEW_V1W_I;
     
     save_NEW_V2W.I{i}=y1(:,11+60*(i-1)); 
     save_NEW_V2W_I = save_NEW_V2W.I{i}+save_NEW_V2W_I;
     
     save_NEW_V3W.I{i}=y1(:,12+60*(i-1));
     save_NEW_V3W_I = save_NEW_V3W.I{i} + save_NEW_V3W_I;
     
     save_NEW_R.I{i}=y1(:,13+60*(i-1));
     save_NEW_R_I= save_NEW_R.I{i}+ save_NEW_R_I;
     
     save_NEW_RDelta.I{i}=y1(:,14+60*(i-1));
     save_NEW_RDelta_I = save_NEW_RDelta.I{i} + save_NEW_RDelta_I;  
     
     save_NEW_S.Is{i}=y1(:,15+60*(i-1));
     save_NEW_S_Is=save_NEW_S.Is{i}+save_NEW_S_Is;
     
     save_NEW_V1.Is{i}=y1(:,16+60*(i-1));
     save_NEW_V1_Is = save_NEW_V1.Is{i}+save_NEW_V1_Is;
     
     save_NEW_V2.Is{i}=y1(:,17+60*(i-1));	
     save_NEW_V2_Is = save_NEW_V2.Is{i}+save_NEW_V2_Is;
     
     save_NEW_V3.Is{i}=y1(:,18+60*(i-1));
     save_NEW_V3_Is = save_NEW_V3.Is{i}+save_NEW_V3_Is;
     
     save_NEW_V1E.Is{i}=y1(:,19+60*(i-1)); 	
     save_NEW_V1E_Is = save_NEW_V1E.Is{i}+save_NEW_V1E_Is;
     
     save_NEW_V2E.Is{i}=y1(:,20+60*(i-1));	
     save_NEW_V2E_Is =save_NEW_V2E.Is{i}+save_NEW_V2E_Is;
     
     save_NEW_V3E.Is{i}=y1(:,21+60*(i-1));
     save_NEW_V3E_Is=save_NEW_V3E.Is{i}+save_NEW_V3E_Is;
     
     save_NEW_V1W.Is{i}=y1(:,22+60*(i-1));	
     save_NEW_V1W_Is = save_NEW_V1W.Is{i}+save_NEW_V1W_Is;
     
     save_NEW_V2W.Is{i}=y1(:,23+60*(i-1));	
     save_NEW_V2W_Is = save_NEW_V2W.Is{i}+save_NEW_V2W_Is;
     
     save_NEW_V3W.Is{i}=y1(:,24+60*(i-1));
     save_NEW_V3W_Is = save_NEW_V3W.Is{i}+save_NEW_V3W_Is;
     
     save_NEW_R.Is{i}=y1(:,25+60*(i-1));
     save_NEW_R_Is = save_NEW_R.Is{i}+save_NEW_R_Is;
     
     save_NEW_RDelta.Is{i}=y1(:,26+60*(i-1));
     save_NEW_RDelta_Is=save_NEW_RDelta.Is{i}+save_NEW_RDelta_Is;
     
     save_NEW_S.H{i}=y1(:,27+60*(i-1));	
     save_NEW_S_H=save_NEW_S.H{i}+save_NEW_S_H;
     
     save_NEW_V1.H{i}=y1(:,28+60*(i-1)); 	
     save_NEW_V1_H=save_NEW_V1.H{i}+save_NEW_V1_H;
     
     save_NEW_V2.H{i}=y1(:,29+60*(i-1)); 
     save_NEW_V2_H=save_NEW_V2.H{i}+save_NEW_V2_H;
     
     save_NEW_V3.H{i}=y1(:,30+60*(i-1));
     save_NEW_V3_H=save_NEW_V3.H{i}+save_NEW_V3_H;
     
     save_NEW_V1E.H{i}=y1(:,31+60*(i-1)); 
     save_NEW_V1E_H=save_NEW_V1E.H{i}+save_NEW_V1E_H;
     
     save_NEW_V2E.H{i}=y1(:,32+60*(i-1)); 
     save_NEW_V2E_H=save_NEW_V2E.H{i}+save_NEW_V2E_H;
     
     save_NEW_V3E.H{i}=y1(:,33+60*(i-1));
     save_NEW_V3E_H=save_NEW_V3E.H{i}+save_NEW_V3E_H;
     
     save_NEW_V1W.H{i}=y1(:,34+60*(i-1));	
     save_NEW_V1W_H=save_NEW_V1W.H{i}+save_NEW_V1W_H;
     
     save_NEW_V2W.H{i}=y1(:,35+60*(i-1)); 	
     save_NEW_V2W_H=save_NEW_V2W.H{i}+save_NEW_V2W_H;
     
     save_NEW_V3W.H{i}=y1(:,36+60*(i-1));
     save_NEW_V3W_H=save_NEW_V3W.H{i}+save_NEW_V3W_H;
     
     save_NEW_R.H{i}=y1(:,37+60*(i-1));
     save_NEW_R_H=save_NEW_R.H{i}+save_NEW_R_H;
     
     save_NEW_RDelta.H{i}=y1(:,38+60*(i-1));
     save_NEW_RDelta_H=save_NEW_RDelta.H{i}+save_NEW_RDelta_H;
    
     save_NEW_S.ICU{i}=y1(:,39+60*(i-1));
     save_NEW_S_ICU=save_NEW_S.ICU{i}+save_NEW_S_ICU;
     
     save_NEW_V1.ICU{i}=y1(:,40+60*(i-1)); 
     save_NEW_V1_ICU=save_NEW_V1.ICU{i}+save_NEW_V1_ICU;
     
     save_NEW_V2.ICU{i}=y1(:,41+60*(i-1)); 	
     save_NEW_V2_ICU=save_NEW_V2.ICU{i}+save_NEW_V2_ICU;
     
     save_NEW_V3.ICU{i}=y1(:,42+60*(i-1));
     save_NEW_V3_ICU=save_NEW_V3.ICU{i}+save_NEW_V3_ICU;
     
     save_NEW_V1E.ICU{i}=y1(:,43+60*(i-1));	
     save_NEW_V1E_ICU=save_NEW_V1E.ICU{i}+save_NEW_V1E_ICU;
     
     save_NEW_V2E.ICU{i}=y1(:,44+60*(i-1)); 
     save_NEW_V2E_ICU=save_NEW_V2E.ICU{i}+save_NEW_V2E_ICU;
     
     save_NEW_V3E.ICU{i}=y1(:,45+60*(i-1));
     save_NEW_V3E_ICU =save_NEW_V3E.ICU{i}+save_NEW_V3E_ICU;
     
     save_NEW_V1W.ICU{i}=y1(:,46+60*(i-1)); 
     save_NEW_V1W_ICU =save_NEW_V1W.ICU{i}+save_NEW_V1W_ICU;
     
     save_NEW_V2W.ICU{i}=y1(:,47+60*(i-1)); 
     save_NEW_V2W_ICU = save_NEW_V2W.ICU{i}+save_NEW_V2W_ICU;
     
     save_NEW_V3W.ICU{i}=y1(:,48+60*(i-1));
     save_NEW_V3W_ICU = save_NEW_V3W.ICU{i}+save_NEW_V3W_ICU;
     
     save_NEW_R.ICU{i}=y1(:,49+60*(i-1)); 
     save_NEW_R_ICU = save_NEW_R.ICU{i}+save_NEW_R_ICU;
     
     save_NEW_RDelta.ICU{i}=y1(:,50+60*(i-1));
     save_NEW_RDelta_ICU = save_NEW_RDelta.ICU{i}+save_NEW_RDelta_ICU;
     
     save_NEW_S.D{i}=y1(:,51+60*(i-1));	
     save_NEW_S_D = save_NEW_S.D{i}+save_NEW_S_D;
     
     save_NEW_V1.D{i}=y1(:,52+60*(i-1));
     save_NEW_V1_D = save_NEW_V1.D{i}+ save_NEW_V1_D;
     
     save_NEW_V2.D{i}=y1(:,53+60*(i-1));	
     save_NEW_V2_D = save_NEW_V2.D{i}+save_NEW_V2_D;
     
     save_NEW_V3.D{i}=y1(:,54+60*(i-1));
     save_NEW_V3_D = save_NEW_V3.D{i}+save_NEW_V3_D;
     
     save_NEW_V1E.D{i}=y1(:,55+60*(i-1)); 	
     save_NEW_V1E_D = save_NEW_V1E.D{i}+save_NEW_V1E_D;
     
     save_NEW_V2E.D{i}=y1(:,56+60*(i-1)); 
     save_NEW_V2E_D=save_NEW_V2E.D{i}+save_NEW_V2E_D;
     
     save_NEW_V3E.D{i}=y1(:,57+60*(i-1));
     save_NEW_V3E_D=save_NEW_V3E.D{i}+save_NEW_V3E_D;
     
     save_NEW_V1W.D{i}=y1(:,58+60*(i-1)); 	
     save_NEW_V1W_D = save_NEW_V1W.D{i}+save_NEW_V1W_D;
     
     save_NEW_V2W.D{i}=y1(:,59+60*(i-1));	
     save_NEW_V2W_D = save_NEW_V2W.D{i}+ save_NEW_V2W_D;
     
     save_NEW_V3W.D{i}=y1(:,60+60*(i-1));
     save_NEW_V3W_D = save_NEW_V3W.D{i}+save_NEW_V3W_D;
     
     save_NEW_R.D{i}=y1(:,61+60*(i-1)); 
     save_NEW_R_D = save_NEW_R.D{i}+save_NEW_R_D;
     
     save_NEW_RDelta.D{i}=y1(:,62+60*(i-1));
     save_NEW_RDelta_D = save_NEW_RDelta.D{i}+save_NEW_RDelta_D;    
end

I=save_NEW_S_I +save_NEW_V1_I+save_NEW_V2_I+save_NEW_V3_I +save_NEW_V1E_I+save_NEW_V2E_I+save_NEW_V3E_I+save_NEW_V1W_I+save_NEW_V2W_I+save_NEW_V3W_I+save_NEW_R_I+save_NEW_RDelta_I;
%plot_figure_R_I(save_NEW_R,save_NEW_R_I);
%plot_figure_RDelta_I(save_NEW_RDelta,save_NEW_RDelta_I);
%plot_figure_S_I(save_NEW_S,save_NEW_S_I);
%plot_figure_V1_I(save_NEW_V1,save_NEW_V1_I);

plot(I);
hold on




