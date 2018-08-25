%Autor: Denilson Gomes Vaz da Silva

%funcao que retorna um vetor com os ataques dos tabuleiro
function vetAtqs = contAtaquesHill(tabs)
    [t,~] = size(tabs); %t recebe a qunatidade de tabuleiros
    vetAtqs = zeros(1,t); %Vetor com os ataques dos tabuleiros
    %(Numero de ataques na posição do tabuleiro)
        
    for i=1:1:t %For p/ todos os Sucessores
        vetAtqs(i) = contAtqsHill(tabs(i,:)); %Elemento i tem o numero de ataques do tabuleiro i
    end
    return
end