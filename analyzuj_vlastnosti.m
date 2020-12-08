function analyzuj_vlastnosti(cit, men)

    if length(men) == length(cit)
        disp('System je rydzy');
        figure
        G=tf(cit,men);
        step(G)
    elseif length(men)>length(cit)
        disp('System je striktne rydzy');
        figure
        G=tf(cit,men);
        step(G)
    else
        disp('System nie je fyzikalne realizovatelny')
    end
    
    korene = roots(men);
    P = 0;
    I = 0;
    for i=1:length(korene)
        if korene(i) > 0
            P = 1;
        elseif korene(i)==0
            P = 2;
        end
        
        if imag( korene(i) ) > 0
            I = 1;
        end
    end
    
    if P == 0
        disp('System je stabilny');
    elseif P==2
        disp('System je na hranici stability');
    else
        disp('System nie je stabilny!');
    end
    
    if I == 0
        disp('System je aperiodicky');
    else
        disp('System je periodicky');
    end
end