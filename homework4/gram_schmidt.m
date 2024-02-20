% gram_schmidt.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>

function x = gram_schmidt(mat, norm, ip)
    [row, col] = size(mat);
    x = zeros(row, col);

    for i = 1:col
        if i == 1
            x(:, 1) = mat(:, i) / norm(mat(:, i));
            continue
        end

        v = mat(:, i);

        for j = 1:(i - 1)
            v = v - ip(v, x(:, j)) * x(:, j);
        end

        x(:, i) = v / norm(v);
    end

end
