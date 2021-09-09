function [IQR ] = sig_Q_IQR(Q, t)
    [Q_75,~] = sig_x_percentile(Q, t, 75);
    [Q_25,~] = sig_x_percentile(Q, t, 25);
    IQR      = Q_75 - Q_25;
end