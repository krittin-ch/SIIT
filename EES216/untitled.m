load data1.mat

% X = data.x;
% Y = data.y;
% Y = Y-7;



%fit_data = rationalfit(X,Y);
%[resp,X] = freqresp(fit_data,X);
% f = fit(X',Y','exp1');

hold on
scatter(X,Y,'r')
plot(f,'b')

hold off


h = findall(0, 'X', 'resp');
a = get(h, 'xdata');
b = get(h, 'ydata');

