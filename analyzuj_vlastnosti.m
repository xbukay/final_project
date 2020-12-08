function analyzuj_vlastnosti(cit, men)

    if length(men) >= length(cit)
        disp('System je fyzikalne realizovatelny');
    else
        disp('System nie je fyzikalne realizovatelny!');
    end
end