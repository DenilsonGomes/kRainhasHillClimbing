%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computacao
%Inteligencia Computacional

%funcao que cria k tabuleiros aleatorios
function tab = Random(k)
    tab = zeros(1,k);
    for c=1:1:k; % De 1 ate o numero de tabuleiros
        for cont = 1:1:k; % Para cont percorrendo as colunas
            a = randi(k); % a é um numero aleatorio entre 1 e k
            tab(1, c) = a; % Elemento tab(a, cont) = 1
        end
    end
    return
end