function sign_self=sign_def(x)
%����Ԥ�������������x��һ��������˵���������е�ÿ��Ԫ��
%�궨
s=size(x,1);
sign_self=zeros(s,1);
for i=1:s
   if x(i)>0 
       sign_self(i)=1;
   else if x(i)==0
       sign_self(i)=-1;
   else if x(i)<0
       sign_self(i)=-1;
       end
       end
   end
end