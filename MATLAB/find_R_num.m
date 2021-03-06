% elemets of matrix R(i, j, :) are polynomial coefficients
function [R12, R13, R14, R31, R32, R33, R34, R41, R42, R43, R44] = find_R_num(Q)
%	R11 = [0, 0, 0, 0];
	R12 = [Q(6, 1)*Q(8, 6)-Q(6, 6)*Q(8, 1),...
		Q(5, 6)*Q(8, 1)-Q(5, 1)*Q(8, 6)-Q(6, 1)*Q(7, 6)+Q(6, 6)*Q(7, 1)+Q(6, 1)*Q(8, 5)-Q(6, 5)*Q(8, 1),...
		Q(5, 1)*Q(7, 6)-Q(5, 6)*Q(7, 1)-Q(5, 1)*Q(8, 5)+Q(5, 5)*Q(8, 1)-Q(6, 1)*Q(7, 5)+Q(6, 5)*Q(7, 1),...
		Q(5, 1)*Q(7, 5)-Q(5, 5)*Q(7, 1)];
	R13 = [Q(6, 1)*Q(8, 4)-Q(6, 4)*Q(8, 1)+Q(6, 2)*Q(8, 6)-Q(6, 6)*Q(8, 2),...
		Q(5, 4)*Q(8, 1)-Q(5, 1)*Q(8, 4)-Q(6, 1)*Q(7, 4)+Q(6, 4)*Q(7, 1)-Q(5, 2)*Q(8, 6)+Q(5, 6)*Q(8, 2)-Q(6, 2)*Q(7, 6)+Q(6, 6)*Q(7, 2)+Q(6, 1)*Q(8, 3)-Q(6, 3)*Q(8, 1)+Q(6, 2)*Q(8, 5)-Q(6, 5)*Q(8, 2),...
		Q(5, 1)*Q(7, 4)-Q(5, 4)*Q(7, 1)+Q(5, 2)*Q(7, 6)-Q(5, 6)*Q(7, 2)-Q(5, 1)*Q(8, 3)+Q(5, 3)*Q(8, 1)-Q(6, 1)*Q(7, 3)+Q(6, 3)*Q(7, 1)-Q(5, 2)*Q(8, 5)+Q(5, 5)*Q(8, 2)-Q(6, 2)*Q(7, 5)+Q(6, 5)*Q(7, 2),...
		Q(5, 1)*Q(7, 3)-Q(5, 3)*Q(7, 1)+Q(5, 2)*Q(7, 5)-Q(5, 5)*Q(7, 2)];
	R14 = [Q(6, 2)*Q(8, 4)-Q(6, 4)*Q(8, 2),...
		Q(5, 4)*Q(8, 2)-Q(5, 2)*Q(8, 4)-Q(6, 2)*Q(7, 4)+Q(6, 4)*Q(7, 2)+Q(6, 2)*Q(8, 3)-Q(6, 3)*Q(8, 2),...
		Q(5, 2)*Q(7, 4)-Q(5, 4)*Q(7, 2)-Q(5, 2)*Q(8, 3)+Q(5, 3)*Q(8, 2)-Q(6, 2)*Q(7, 3)+Q(6, 3)*Q(7, 2),...
		Q(5, 2)*Q(7, 3)-Q(5, 3)*Q(7, 2)];
% 	R21 = R12;
% 	R22 = R13;
% 	R23 = R14;
%	R24 = [0, 0, 0, 0];
	R31 = [0, Q(6, 1)*Q(10, 6)-Q(6, 6)*Q(10, 1),...
		Q(5, 6)*Q(10, 1)-Q(5, 1)*Q(10, 6)+Q(6, 1)*Q(10, 5)-Q(6, 5)*Q(10, 1),...
		Q(5, 5)*Q(10, 1)-Q(5, 1)*Q(10, 5)];
	R32 = [0, Q(6, 6)*Q(9, 1)-Q(6, 1)*Q(9, 6)+Q(6, 1)*Q(10, 4)-Q(6, 4)*Q(10, 1)+Q(6, 2)*Q(10, 6)-Q(6, 6)*Q(10, 2),...
		Q(5, 1)*Q(9, 6)-Q(5, 6)*Q(9, 1)-Q(5, 1)*Q(10, 4)+Q(5, 4)*Q(10, 1)-Q(6, 1)*Q(9, 5)+Q(6, 5)*Q(9, 1)-Q(5, 2)*Q(10, 6)+Q(5, 6)*Q(10, 2)+Q(6, 1)*Q(10, 3)-Q(6, 3)*Q(10, 1)+Q(6, 2)*Q(10, 5)-Q(6, 5)*Q(10, 2),...
		Q(5, 1)*Q(9, 5)-Q(5, 5)*Q(9, 1)-Q(5, 1)*Q(10, 3)+Q(5, 3)*Q(10, 1)-Q(5, 2)*Q(10, 5)+Q(5, 5)*Q(10, 2)];
	R33 = [0, Q(6, 4)*Q(9, 1)-Q(6, 1)*Q(9, 4)-Q(6, 2)*Q(9, 6)+Q(6, 6)*Q(9, 2)+Q(6, 2)*Q(10, 4)-Q(6, 4)*Q(10, 2),...
		Q(5, 1)*Q(9, 4)-Q(5, 4)*Q(9, 1)+Q(5, 2)*Q(9, 6)-Q(5, 6)*Q(9, 2)-Q(6, 1)*Q(9, 3)+Q(6, 3)*Q(9, 1)-Q(5, 2)*Q(10, 4)+Q(5, 4)*Q(10, 2)-Q(6, 2)*Q(9, 5)+Q(6, 5)*Q(9, 2)+Q(6, 2)*Q(10, 3)-Q(6, 3)*Q(10, 2),...
		Q(5, 1)*Q(9, 3)-Q(5, 3)*Q(9, 1)+Q(5, 2)*Q(9, 5)-Q(5, 5)*Q(9, 2)-Q(5, 2)*Q(10, 3)+Q(5, 3)*Q(10, 2)];
	R34 = [0, Q(6, 4)*Q(9, 2)-Q(6, 2)*Q(9, 4),...
		Q(5, 2)*Q(9, 4)-Q(5, 4)*Q(9, 2)-Q(6, 2)*Q(9, 3)+Q(6, 3)*Q(9, 2),...
		Q(5, 2)*Q(9, 3)-Q(5, 3)*Q(9, 2)];
	R41 = [0, Q(8, 1)*Q(10, 6)-Q(8, 6)*Q(10, 1),...
		Q(7, 6)*Q(10, 1)-Q(7, 1)*Q(10, 6)+Q(8, 1)*Q(10, 5)-Q(8, 5)*Q(10, 1),...
		Q(7, 5)*Q(10, 1)-Q(7, 1)*Q(10, 5)];
	R42 = [0, Q(8, 6)*Q(9, 1)-Q(8, 1)*Q(9, 6)+Q(8, 1)*Q(10, 4)-Q(8, 4)*Q(10, 1)+Q(8, 2)*Q(10, 6)-Q(8, 6)*Q(10, 2),...
		Q(7, 1)*Q(9, 6)-Q(7, 6)*Q(9, 1)-Q(7, 1)*Q(10, 4)+Q(7, 4)*Q(10, 1)-Q(8, 1)*Q(9, 5)+Q(8, 5)*Q(9, 1)-Q(7, 2)*Q(10, 6)+Q(7, 6)*Q(10, 2)+Q(8, 1)*Q(10, 3)-Q(8, 3)*Q(10, 1)+Q(8, 2)*Q(10, 5)-Q(8, 5)*Q(10, 2),...
		Q(7, 1)*Q(9, 5)-Q(7, 5)*Q(9, 1)-Q(7, 1)*Q(10, 3)+Q(7, 3)*Q(10, 1)-Q(7, 2)*Q(10, 5)+Q(7, 5)*Q(10, 2)];
	R43 = [0, Q(8, 4)*Q(9, 1)-Q(8, 1)*Q(9, 4)-Q(8, 2)*Q(9, 6)+Q(8, 6)*Q(9, 2)+Q(8, 2)*Q(10, 4)-Q(8, 4)*Q(10, 2),...
		Q(7, 1)*Q(9, 4)-Q(7, 4)*Q(9, 1)+Q(7, 2)*Q(9, 6)-Q(7, 6)*Q(9, 2)-Q(8, 1)*Q(9, 3)+Q(8, 3)*Q(9, 1)-Q(7, 2)*Q(10, 4)+Q(7, 4)*Q(10, 2)-Q(8, 2)*Q(9, 5)+Q(8, 5)*Q(9, 2)+Q(8, 2)*Q(10, 3)-Q(8, 3)*Q(10, 2),...
		Q(7, 1)*Q(9, 3)-Q(7, 3)*Q(9, 1)+Q(7, 2)*Q(9, 5)-Q(7, 5)*Q(9, 2)-Q(7, 2)*Q(10, 3)+Q(7, 3)*Q(10, 2)];
	R44 = [0, Q(8, 4)*Q(9, 2)-Q(8, 2)*Q(9, 4),...
		Q(7, 2)*Q(9, 4)-Q(7, 4)*Q(9, 2)-Q(8, 2)*Q(9, 3)+Q(8, 3)*Q(9, 2),...
		Q(7, 2)*Q(9, 3)-Q(7, 3)*Q(9, 2)];
end