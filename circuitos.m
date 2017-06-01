## Circuitos 1.0
## Função que calcula a regra de Cramer com base nos dados inseridos e retorna os resultados
## Autor: Matheus de Sousa Siqueira <matheussiqueira.ec@gmail.com>
## Data: 31/05/2017

function [variaveis] = circuitos(coeficientes, solucoes, unidade, variaveis)
	% Uso:	
	%     circuitos(coeficientes, solucoes, unidade, variaveis)
	%
	%
	%
	%
	% Utilidade:
	%     Calcula a regra de Cramer para achar os resultados das variáveis informadas, recebe a matriz: dos coeficientes (quadrada), o vetor das soluções, a unidade dos valores a serem encontrados (A ou V) e um vetor das variáveis (chars) a serem encontradas.

	if (nargin != 4)
        	print_usage();
	endif
	
	if !(issquare(coeficientes))
		error("A matriz de coeficientes deve ser quadrada.");
	endif

	if !(isvector(solucoes))
		error("É obrigatório informar um vetor de soluções.");
	endif

	if !(ischar(variaveis) && unidade)
		error("O vetor de variáveis e/ou a unidade devem ser compostos de caracteres.");
	endif
	
	aux = size(coeficientes, 1);
	variaveis = cellstr(variaveis);
	x = ones(aux,1);
	a_det = det(coeficientes);

	for i = 1:aux
		C = coeficientes;
		C( : ,i) = solucoes;
		variaveis(i,1) = strcat(variaveis(i,1), {" = "}, num2str(det(C)/a_det), {" "}, unidade);
	end
endfunction
