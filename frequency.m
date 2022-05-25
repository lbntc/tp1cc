function [ Freq,Lettre ] = frequency( Text )

Freq=[]; %initialise de l'espace libre pour les vecteurs
Lettre=[];


while(length(Text)>0)%tant que le texte contient des lettres
    n=1; %premiere position
    for i=2:length(Text)%va de la 2eme case jusqua la derniere
    if(Text(i)==Text(1))%si la lettre de la ieme case est la meme que celle de la 1ere case
       n=n+1;%incremente le compteur 
    end
    end
    Freq=[Freq,n];
    c=Text(1);%case temp
    Text(1)=[];%efface la case 1
    
    j=1;
    while(j<=length(Text));
        if(Text(j)==c)
            Text(j)=[];%efface la jeme case si elle ressemble a Text(1)
        else
            j=j+1;
        end
    end 
    Lettre=[Lettre,c]; %vecteur modifié
end
end 

