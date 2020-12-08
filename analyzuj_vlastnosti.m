function analyzuj_vlastnosti(cit, men)

    if length(men) == length(cit)
        disp('System je rydzy');
    elseif length(men)>length(cit)
        disp('System je striktne rydzy');
    else
        disp('System nie je fyzikalne realizovatelny')
    end
    
    korene = roots(men);
    P = 0;
    for i=1:length(korene)
        if korene(i) >= 0
            P = 1;
        end
    end
    
    if P == 0
        disp('System je stabilny');
    else
        disp('System nie je stabilny!');
    end
end