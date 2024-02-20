% isorthogonal.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>

function x = isorthogonal(a, b, ip)
    if ip(a, b) < eps
        x = true;
    else
        x = false;
    end
end
