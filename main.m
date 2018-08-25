%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computacao
%Inteligencia Computacional
%Resolucao do problema das k Rainhas nao atacantes em tabuleiro k x k

clear %Limpar todas as variaveis
clc %Limpar visor

%Perguntamos o tamanho do tabuleiro
k = input('Digite o tamanho do tabuleiro: '); %Atribuimos o tamanho a k
tabuleiro = Random(k); %Geramos um tabuleiros aleatorio

%Exibimos os tabuleiros iniciais
disp('Tabuleiro inicial\n');
tabuleiro

%Verificar o tabuleiro aleatorio
if contAtqsHill(tabuleiro) == 0 %Se o tabuleiro nao tiver nenhum ataque
    disp('Tabuleiro Solucao') 
    tabuleiro %Exibe o tabuleiro solucao
    return %Encerra a execucao
end

%Executar Hill Climbing
i = 0;
while i <= k*k %Enquanto nao extrapolar o numero maximo de iteracoes
    sucessores = SucessoresHill(tabuleiro); %Gera sucessores
    for j=1:1:k*(k-1) %Percorre os sucessores
        if contAtqsHill(sucessores(j,:)) == 0 %Se algum sucessor tiver 0 ataques
            disp('Tabuleiro Solucao')
            sucessores(j,:) %Exibe a solucao
            return %Encerra a aplicacao
        end
    end
    [tabuleiro, ataques] = MelhorHill(sucessores); %tabuleiros recebe os melhores sucessores
    i = i + 1; %incrementa i
end

disp('Melhor Tabuleiro')
tabuleiro %Exibe o melhor tabuleiro
disp('Numero(s) de ataque(s): ')
disp(ataques);