%% test
function [accuracy, predict_class]= test_svm(x,y,w,b)
right_num = 0;
n = size(x,1);
m = size(x,2);
for i = 1: n
	t = 0;
    predict_class(i) = -1;
	for j = 1: m %% here m = 4;
		t = t + w(j)* x(i,j);	
	end
	predict_y(i) = t + b;
    if predict_y(i) >= 0 
        predict_class(i) = 1;
	end
    if  predict_class(i) == y(i)
        right_num = right_num +1;
    end
end
accuracy = right_num / n;