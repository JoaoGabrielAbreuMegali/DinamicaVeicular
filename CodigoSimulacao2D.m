% Definir a estrutura 'data' com pontos de referência (Waypoints)
data.ActorSpecifications.Waypoints = [
    0, 0;   % Ponto de referência 1 (x=0, y=0)
    10, 10; % Ponto de referência 2 (x=10, y=10)
    20, 5;  % Ponto de referência 3 (x=20, y=5)
    30, 0   % Ponto de referência 4 (x=30, y=0)
];

% Definir os pontos de referência a partir de 'Waypoints'
refPose = data.ActorSpecifications.Waypoints;
xRef = refPose(:, 1);  % Coordenada x dos pontos de referência
yRef = -refPose(:, 2); % Coordenada y (com sinal invertido)

% Definir o tempo de simulação e os pontos de referência no tempo
Ts = 18; % Tempo de simulação total (em segundos)
s = size(xRef); % Obter o tamanho do vetor xRef
tRef = linspace(0, Ts, s(1))'; % Vetor de tempo para cada ponto de referência

% Exemplo de como exibir as variáveis para verificação
disp('Pontos de referência X:');
disp(xRef);
disp('Pontos de referência Y:');
disp(yRef);
disp('Tempo de referência:');
disp(tRef);
Pontos de referência X:
     0
    10
    20
    30

Pontos de referência Y:
     0
   -10
    -5
     0

Tempo de referência:
     0
     6
    12
    18