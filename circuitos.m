## Circuitos 1.0
## Função que calcula a regra de Cramer com base nos dados inseridos e retorna os resultados
## Autor: Matheus de Sousa Siqueira <matheussiqueira.ec@gmail.com>
## Data: 31/05/2017

function circuitos(coeficientes, solucoes, unidade, variaveis)
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

	if (size(solucoes, 1) == 1)
		solucoes = solucoes.';
	endif

	aux = [];
	j=1;
	cols = size(variaveis, 2);
	if (size(variaveis, 1) == 1)
		for i=1:cols/2
			aux(i,:) = variaveis(1,j:j+1);
			j+=2;
		endfor
		variaveis = cellstr(aux);
	else
		variaveis = cellstr(variaveis);
	endif

	x = coeficientes\solucoes;

	for i = 1:size(coeficientes, 1)
		printf("%s = %f %s\n", variaveis{i}, x(i), unidade);
	end
endfunction
