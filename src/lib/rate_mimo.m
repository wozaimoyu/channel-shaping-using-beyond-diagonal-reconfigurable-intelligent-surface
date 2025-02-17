function [R] = rate_mimo(H, W, P_n)
	R = log(det(eye(size(W, 2)) + (H * W)' * (H * W) / P_n));
	R = real(R);
end
