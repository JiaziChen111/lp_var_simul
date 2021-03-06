function IRF = compute_IVirfs(model,settings);
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

true_irf = model.irf;
var_select = settings.specifications.var_select;
response_pos = settings.est.IRF_response_var_pos;
normalize_pos = settings.est.IV_est_normalize_var_pos;

IRF_response = true_irf(:, var_select(:, response_pos));
IRF = IRF_response ./ true_irf(1, var_select(:, normalize_pos));

end

