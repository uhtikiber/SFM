%this is the FL1L2 solver

function [F_set, L1_set, L2_set, num, R] = numbers(x, y, xx, yy, tol)
    %F_sym = sym('f_%d_%d',3); % fumdamental matrix (unknown)
    %syms L_1 L_2; % distortion parametrs (unknown)  

    %X = [F(1,1), F(1,2), F(2,1), F(2,2), L_1 * F(3,1), F(3,1), L_1*F(3,2),
    %    F(3,2), L_2*F(1,3), F(1,3), L_2*F(2,3), F(2,3), F(3,3), L_1*F(3,3),
    %    L_2*F(3,3), L_1*L_2*F(3,3)]
    %Q_sym = sym('q_%d_%d', [10 6]); % leftovers afret G-J elimination

    %[x, y, xx, yy, L1_th, L2_th, F_th] = generate_the_right_way();

    M = find_M(x, y, xx, yy);
    [~, MG] = qr(M);
    for i = 1 : 10
        j = 10 - i + 1;
        temp = MG(j, j);
        for k = j : 16
            MG(j, k) = MG(j, k) / temp;
        end
        for k = 1 : (j - 1)
            temp = MG(k, j);
            MG(k, j) = 0; %do i need this?
            for ind = 11 : 16
                MG(k, ind) = MG(k, ind) - temp * MG(j, ind);
            end
        end
    end
    %MG = rref(M);
    %disp(MG);

    Q = MG(:, 11:16);
    %disp(Q);

    R = find_R_num(Q);
    poly = find_det_R(R);
    L1_all = roots(poly); %complex roots
%     disp('THESE ARE L1');
%     disp(L1_all);
    L1_new = zeros(10);
    num = 0;
    for i = 1 : length(L1_all)
        if abs(imag(L1_all(i))) < tol
            num = num + 1;
            L1_new(num) = real(L1_all(i));
        end
    end
    L1_new = L1_new(1:num);
    L1_all = L1_new;
    
    F_set = zeros(num, 3, 3);
    L1_set = zeros(1, num);
    L2_set = zeros(1, num);
    
    for i = 1:num
        L1 = L1_all(i);
        L2 = find_L2_fourth_attempt(R, L1);
        F = find_F(Q, L1, L2);
%         disp('Here are the results for L1, L2:');
%         disp([L1 L2]);
%         disp('Here is the counted F:');
%         disp(F);
        F_set(i, :, :) = F;
        L1_set(i) = L1;
        L2_set(i) = L2;

    end

end




