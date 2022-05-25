function [code] = Shannon(Freq)
Prob=Freq/sum(Freq);%calcul de la probabilité
if(length(Prob)==1) %si le vecteur contient 1 element
    code={'0'};%lui attribuer le code 0
elseif (length(Prob)==2) %si deux elements
    code={'0','1'} %attribuer 0 au premier et 1 au deuxieme
else %cas general : calcul diff minimale
    Text=sort(Prob,'descend')%sorts text en fct de la proba
    Div=abs((2*cumsum(Text))-1);
[~,Ps]=min(Div);%prends la position du nbr min 
if(Ps==1) %s'il est en 1ere position
    Left=Text(1); %divise en deux parties
    Right=Text(2:end);
    SR=Shannon(Right); %fait le codage pour la partie droite
    code=['0',strcat('1',SR)]%attribue 0 au 1er et 0 au reste
else %cas general
    Left=Text(1:Ps);
    Right=Text(Ps+1:end);
    SL=Shannon(Left);
    SR=Shannon(Right);
    code=[strcat('0',SL) , strcat('1',SR)];
end
end    
end

