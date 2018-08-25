%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computacao
%Inteligencia Computacional

%funcao que gera os sucessores
function sucessores = SucessoresHill(tab)
    [~,k]=size(tab); %k recebe a dimensao do tabuleiro
    sucessores = zeros(k*(k-1),k); % O tabuleiro gera k*(k-1) sucessores
        
    for i=1:1:k*(k-1) %For para sucessores
        sucessores(i,:) = tab; %sucessores recebem o pai
    end
            
    a=1; %a conta os sucessores
    
    for c=1:1:k %For para as rainhas (uma em cada coluna)
        linha = tab(c); %linha onde a rainha estava
        for l=1:1:k %For para as linhas
            if l ~= linha %Se nesta linha nao tina um rainha
                sucessores(a,c) = l; %No sucessor a mude a rainha da coluna c
                a = a+1; %Incrementa a
            end
        end
    end
    
    return
end