function c = newtonkoeff_bugged(x,y)

n = lenght(y);

 c = y;
 for j = 1:n
     for k = n:-1:j
         c(k) = (c(k)-c(k-1))/x(k)-x(k-j));
     end 
 end
 
 
    



