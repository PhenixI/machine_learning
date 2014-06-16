function [weights,w0,number_change]=PerceptronLearningAlgorithm_two(X,y)
%Perceptron Learning Algorithm (PLA)
%the number of training features

m=size(X,1);
n=size(X,2);

weights = zeros(n,1);
w0=0;
No_mistake=false;
number_change=0;
while (~No_mistake)
    No_mistake=true;
    for i=1:m
        %Ԥ���������ڱȽ��Ƿ�������
        prediction = sign_def (X(i,:) * weights+w0);
        if ~isequal(prediction,y(i))%����������ʱ��
            No_mistake=false;
            number_change =number_change+1;
            disp(num2str(number_change));
            weights = weights + y(i) * X(i,:)';%����Ȩ��,�÷������ڸ�֪����ԭʼ��ʽ
            w0=w0+y(i);%����w0
        end
    end
end

end