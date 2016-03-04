function X = reconstruct(W, Y, mu)
    %%	Reconstroi Y usando W, passando mu para ajuste da média.
    %%  
    %%	Argumentos:
    %%	  Y [num_components x num_dados] projeção
    %%    W [dimensao x num_componentes] matriz de tranformação
    %%    mu [dimensao x 1] amostra de media (opcional)
    %%
    %%  Retorno:
    %%    X [dim x num_data] reconstruct data
    %%    X [dimensao x num_dado] dados reconstruidos.
    if(nargin<3)
        X = W * Y;
    else
        X = W*Y +repmat(mu,size(Y,2),1);
    end
end
