function [G] = receive_min_interference(H, W)
	[L, K] = deal(size(W, 2), size(W, 4));
	Q = pagemtimes(pagemtimes(H, W), 'none', pagemtimes(H, W), 'ctranspose');
    [U, ~] = pageeig(sum(Q, 4) - Q(:, :, logical(eye(K))));
    G = pagectranspose(U(:, 1 : L, :));
end
