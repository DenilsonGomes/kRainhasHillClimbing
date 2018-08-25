%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computacao
%Inteligencia Computacional

%funcao que retorna os melhores Sucessores
function [melhor, atqs] = MelhorHill(sucessores) %Recebe o vetAtqs      
    vetAtqs = contAtaquesHill(sucessores); %Gera vetor com os ataques dos tauleiros
        
    [atqs, index] = min(vetAtqs); %Retorna o minimo e indice dele
    melhor = sucessores(index,:);
    
    return
end