%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computacao
%Inteligencia Computacional

%funcao que conta os ataques do tabuleiro
function Atqs = contAtqsHill(tab)
    [~,k] = size(tab); %k recebe a dimensao do tabuleiro
    Atqs = 0; %Atqs inicia em 0
    
    %Calcular ataques por linha
    for c1=1:1:k-1 %Primeira rainha a ser comparada
        for c2=c1+1:1:k %Segunda rainha a ser comparada
            %Compara a linha da c1-esima rainha com todas as rainhas
            %que ainda nao foi comparada, de c1+1 ate k. De 1 ate c1 ja foi comparada.
            if tab(c1) == tab(c2) 
                %Se a linha da c1-esima rainha for igual a linha da
                %c2-esima rainha
                Atqs = Atqs + 1; %Incrementa o ataque
            end
        end %No fim deste for a rainha c1 foi comparada com todas as outras rainhas
    end %No fim deste for contou os ataques por linha
        
    %Contar os ataques por diagonal
    for c1=1:1:k-1 %Percorre ate a penultima coluna
        for c2=c1+1:1:k %Percorre da coluna atual ate a ultima
            %Verifica se c1 e c2 se atacam por diagonal
            if abs(c1-c2) == abs(tab(c1)-tab(c2))
                Atqs = Atqs + 1;
                %Caso sim, incrementa Atqs
            end
        end %Final deste for ja calculou os ataques de c1
    end %Final deste for ja calculou todos os ataques
    return
end