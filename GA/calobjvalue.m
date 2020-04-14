function [objvalue]=calobjvalue(pop)
temp1=decodechrom(pop,1,10);
[px,py]=size(temp1);
x=temp1.*1000./1023-500*ones(px,py);
objvalue=(x(:,1).*sin(abs(x(:,1).^(0.5))));
for i=2:py
    objvalue=objvalue+(x(:,i).*sin(abs(x(:,i).^(0.5))));
end
end

