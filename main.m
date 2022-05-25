clear all;
close all;
clc;

T=input('write down a text=','s');
[F,L]=frequency(T);
[C]= shanon(F);

Y=[];
[~,Pi]=sort(F,'descend');
[~,In]=sort(Pi);

for i=1:length(In)
    Y=[Y,C(In(i))];
end

for i=1:length(F)
    disp(['the code of' L(i) 'is' Y(i)]);
end
