function [CI] = sig_CI(Q, t)
    [Q_99,~] = sig_x_percentile(Q, t, 99);
    [Q_90,~] = sig_x_percentile(Q, t, 90);
    [Q_1,~]  = sig_x_percentile(Q, t, 1);
    CI       = (Q_90 - Q_1)./ (Q_99 - Q_1);
end
        