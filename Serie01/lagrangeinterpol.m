function [p] = lagrangeinterpol(b, x, z)
    n = length(x)-1;
    p = 0;
    for j = 0:n % berechne Summe über alle Lagrange-Polynome
        L = 1;
        for k = 0:n % berechne das Produkt eines einzelnen Lagrange-Polynoms
            if k~=j
                L = L .* ((z - x(k+1))/(x(j+1)-x(k+1)));
            end
         end
         p = p + lagrangekoeff(b(j+1))*L;
    end
end