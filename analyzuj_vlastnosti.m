function analyzuj_vlastnosti(cit, men)

    if length(men) == length(cit)
        disp('System je rydzy');
    elseif length(men)>length(cit)
        disp('System je striktne rydzy');
    else
        disp('System nie je fyzikalne realizovatelny')
    end
end