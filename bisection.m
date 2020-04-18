function x_pierwiastek = bisection(f, x_poczatkowy, x_koncowy, n_podzialu)
 
a  =  f(x_poczatkowy);  b = f(x_koncowy);
if  a*b  >  0.0
    disp('Funkcja posiada taki sam znak na koncach badanego przedzialu.')  
end

for k  =  1:n_podzialu
    
    x_pierwiastek  =  (x_poczatkowy + x_koncowy)/2;
    y  =  f(x_pierwiastek);
    
    if   a*y  < 0                                      %porównanie znaków f(xp) i f(x)
        x_koncowy = x_pierwiastek;                     %ustalenie punktu koncowego nowego przedzialu
    else
        x_poczatkowy = x_pierwiastek;                  %ustalenie punktu poczatkowego nowego przedzialu
    end
end