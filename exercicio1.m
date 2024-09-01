function t = exercicio1(func,xl,xu)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui
t = 0;
n_iter = 0; 
ea = 100;
t_ant = 0;
h = 35;
l = 20;

% Avaliação inicial
fl = func(xl);

while true
    t = (xl + xu) / 2;
    fr = func(t)

    n_iter = n_iter + 1;
    
    if t ~= 0
        ea = abs((t - t_ant)/t) * 100;
    end
    
    test = fl * fr;
    
    if test < 0
        xu = t;
    elseif test > 0
    xl = t;
    else
        ea = 0;
    end
    
    if ea < es || n_iter >= imax
        break;
    end
end



%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
