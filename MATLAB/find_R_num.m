% elemets of matrix R(i, j, :) are polynomial coefficients
function R = find_R_num(Q)
	R = zeros(4, 4, 4);
	R(1, 1, :) = [0, 0, 0, 0];
	R(1, 2, :) = [Q(5, 1)*Q(7, 5)-Q(5, 5)*Q(7, 1),...
		Q(5, 1)*Q(7, 6)-Q(5, 6)*Q(7, 1)-Q(5, 1)*Q(8, 5)+Q(5, 5)*Q(8, 1)-Q(6, 1)*Q(7, 5)+Q(6, 5)*Q(7, 1),...
		Q(5, 6)*Q(8, 1)-Q(5, 1)*Q(8, 6)-Q(6, 1)*Q(7, 6)+Q(6, 6)*Q(7, 1)+Q(6, 1)*Q(8, 5)-Q(6, 5)*Q(8, 1),...
		Q(6, 1)*Q(8, 6)-Q(6, 6)*Q(8, 1)];
	R(1, 3, :) = [Q(5, 1)*Q(7, 3)-Q(5, 3)*Q(7, 1)+Q(5, 2)*Q(7, 5)-Q(5, 5)*Q(7, 2),...
		Q(5, 1)*Q(7, 4)-Q(5, 4)*Q(7, 1)+Q(5, 2)*Q(7, 6)-Q(5, 6)*Q(7, 2)-Q(5, 1)*Q(8, 3)+Q(5, 3)*Q(8, 1)-Q(6, 1)*Q(7, 3)+Q(6, 3)*Q(7, 1)-Q(5, 2)*Q(8, 5)+Q(5, 5)*Q(8, 2)-Q(6, 2)*Q(7, 5)+Q(6, 5)*Q(7, 2),...
		Q(5, 4)*Q(8, 1)-Q(5, 1)*Q(8, 4)-Q(6, 1)*Q(7, 4)+Q(6, 4)*Q(7, 1)-Q(5, 2)*Q(8, 6)+Q(5, 6)*Q(8, 2)-Q(6, 2)*Q(7, 6)+Q(6, 6)*Q(7, 2)+Q(6, 1)*Q(8, 3)-Q(6, 3)*Q(8, 1)+Q(6, 2)*Q(8, 5)-Q(6, 5)*Q(8, 2),...
		Q(6, 1)*Q(8, 4)-Q(6, 4)*Q(8, 1)+Q(6, 2)*Q(8, 6)-Q(6, 6)*Q(8, 2)];
	R(1, 4, :) = [Q(5, 2)*Q(7, 3)-Q(5, 3)*Q(7, 2),...
		Q(5, 2)*Q(7, 4)-Q(5, 4)*Q(7, 2)-Q(5, 2)*Q(8, 3)+Q(5, 3)*Q(8, 2)-Q(6, 2)*Q(7, 3)+Q(6, 3)*Q(7, 2),...
		Q(5, 4)*Q(8, 2)-Q(5, 2)*Q(8, 4)-Q(6, 2)*Q(7, 4)+Q(6, 4)*Q(7, 2)+Q(6, 2)*Q(8, 3)-Q(6, 3)*Q(8, 2),...
		Q(6, 2)*Q(8, 4)-Q(6, 4)*Q(8, 2)];
	R(2, 1, :) = [Q(5, 1)*Q(7, 5)-Q(5, 5)*Q(7, 1),...
		Q(5, 1)*Q(7, 6)-Q(5, 6)*Q(7, 1)-Q(5, 1)*Q(8, 5)+Q(5, 5)*Q(8, 1)-Q(6, 1)*Q(7, 5)+Q(6, 5)*Q(7, 1),...
		Q(5, 6)*Q(8, 1)-Q(5, 1)*Q(8, 6)-Q(6, 1)*Q(7, 6)+Q(6, 6)*Q(7, 1)+Q(6, 1)*Q(8, 5)-Q(6, 5)*Q(8, 1),...
		Q(6, 1)*Q(8, 6)-Q(6, 6)*Q(8, 1)];
	R(2, 2, :) = [Q(5, 1)*Q(7, 3)-Q(5, 3)*Q(7, 1)+Q(5, 2)*Q(7, 5)-Q(5, 5)*Q(7, 2),...
		Q(5, 1)*Q(7, 4)-Q(5, 4)*Q(7, 1)+Q(5, 2)*Q(7, 6)-Q(5, 6)*Q(7, 2)-Q(5, 1)*Q(8, 3)+Q(5, 3)*Q(8, 1)-Q(6, 1)*Q(7, 3)+Q(6, 3)*Q(7, 1)-Q(5, 2)*Q(8, 5)+Q(5, 5)*Q(8, 2)-Q(6, 2)*Q(7, 5)+Q(6, 5)*Q(7, 2),...
		Q(5, 4)*Q(8, 1)-Q(5, 1)*Q(8, 4)-Q(6, 1)*Q(7, 4)+Q(6, 4)*Q(7, 1)-Q(5, 2)*Q(8, 6)+Q(5, 6)*Q(8, 2)-Q(6, 2)*Q(7, 6)+Q(6, 6)*Q(7, 2)+Q(6, 1)*Q(8, 3)-Q(6, 3)*Q(8, 1)+Q(6, 2)*Q(8, 5)-Q(6, 5)*Q(8, 2),...
		Q(6, 1)*Q(8, 4)-Q(6, 4)*Q(8, 1)+Q(6, 2)*Q(8, 6)-Q(6, 6)*Q(8, 2)];
	R(2, 3, :) = [Q(5, 2)*Q(7, 3)-Q(5, 3)*Q(7, 2),...
		Q(5, 2)*Q(7, 4)-Q(5, 4)*Q(7, 2)-Q(5, 2)*Q(8, 3)+Q(5, 3)*Q(8, 2)-Q(6, 2)*Q(7, 3)+Q(6, 3)*Q(7, 2),...
		Q(5, 4)*Q(8, 2)-Q(5, 2)*Q(8, 4)-Q(6, 2)*Q(7, 4)+Q(6, 4)*Q(7, 2)+Q(6, 2)*Q(8, 3)-Q(6, 3)*Q(8, 2),...
		Q(6, 2)*Q(8, 4)-Q(6, 4)*Q(8, 2)];
	R(2, 4, :) = [0, 0, 0, 0];
	R(3, 1, :) = [0, Q(5, 5)*Q(9, 1)-Q(5, 1)*Q(9, 5),...
		Q(5, 6)*Q(9, 1)-Q(5, 1)*Q(9, 6)+Q(6, 1)*Q(9, 5)-Q(6, 5)*Q(9, 1),...
		Q(6, 1)*Q(9, 6)-Q(6, 6)*Q(9, 1)];
	R(3, 2, :) = [0, Q(5, 1)*Q(9, 5)-Q(5, 5)*Q(9, 1)-Q(5, 1)*Q(9, 3)+Q(5, 3)*Q(9, 1)-Q(5, 2)*Q(9, 5)+Q(5, 5)*Q(9, 2),...
		Q(5, 1)*Q(9, 6)-Q(5, 6)*Q(9, 1)-Q(5, 1)*Q(9, 4)+Q(5, 4)*Q(9, 1)-Q(6, 1)*Q(9, 5)+Q(6, 5)*Q(9, 1)-Q(5, 2)*Q(9, 6)+Q(5, 6)*Q(9, 2)+Q(6, 1)*Q(9, 3)-Q(6, 3)*Q(9, 1)+Q(6, 2)*Q(9, 5)-Q(6, 5)*Q(9, 2),...
		Q(6, 6)*Q(9, 1)-Q(6, 1)*Q(9, 6)+Q(6, 1)*Q(9, 4)-Q(6, 4)*Q(9, 1)+Q(6, 2)*Q(9, 6)-Q(6, 6)*Q(9, 2)];
	R(3, 3, :) = [0, Q(5, 1)*Q(9, 3)-Q(5, 3)*Q(9, 1)+Q(5, 2)*Q(9, 5)-Q(5, 5)*Q(9, 2)-Q(5, 2)*Q(9, 3)+Q(5, 3)*Q(9, 2),...
		Q(5, 1)*Q(9, 4)-Q(5, 4)*Q(9, 1)+Q(5, 2)*Q(9, 6)-Q(5, 6)*Q(9, 2)-Q(6, 1)*Q(9, 3)+Q(6, 3)*Q(9, 1)-Q(5, 2)*Q(9, 4)+Q(5, 4)*Q(9, 2)-Q(6, 2)*Q(9, 5)+Q(6, 5)*Q(9, 2)+Q(6, 2)*Q(9, 3)-Q(6, 3)*Q(9, 2),...
		Q(6, 4)*Q(9, 1)-Q(6, 1)*Q(9, 4)-Q(6, 2)*Q(9, 6)+Q(6, 6)*Q(9, 2)+Q(6, 2)*Q(9, 4)-Q(6, 4)*Q(9, 2)];
	R(3, 4, :) = [0, Q(5, 2)*Q(9, 3)-Q(5, 3)*Q(9, 2),...
		Q(5, 2)*Q(9, 4)-Q(5, 4)*Q(9, 2)-Q(6, 2)*Q(9, 3)+Q(6, 3)*Q(9, 2),...
		Q(6, 4)*Q(9, 2)-Q(6, 2)*Q(9, 4)];
	R(4, 1, :) = [0, Q(7, 5)*Q(9, 1)-Q(7, 1)*Q(9, 5),...
		Q(7, 6)*Q(9, 1)-Q(7, 1)*Q(9, 6)+Q(8, 1)*Q(9, 5)-Q(8, 5)*Q(9, 1),...
		Q(8, 1)*Q(9, 6)-Q(8, 6)*Q(9, 1)];
	R(4, 2, :) = [0, Q(7, 1)*Q(9, 5)-Q(7, 5)*Q(9, 1)-Q(7, 1)*Q(9, 3)+Q(7, 3)*Q(9, 1)-Q(7, 2)*Q(9, 5)+Q(7, 5)*Q(9, 2),...
		Q(7, 1)*Q(9, 6)-Q(7, 6)*Q(9, 1)-Q(7, 1)*Q(9, 4)+Q(7, 4)*Q(9, 1)-Q(8, 1)*Q(9, 5)+Q(8, 5)*Q(9, 1)-Q(7, 2)*Q(9, 6)+Q(7, 6)*Q(9, 2)+Q(8, 1)*Q(9, 3)-Q(8, 3)*Q(9, 1)+Q(8, 2)*Q(9, 5)-Q(8, 5)*Q(9, 2),...
		Q(8, 6)*Q(9, 1)-Q(8, 1)*Q(9, 6)+Q(8, 1)*Q(9, 4)-Q(8, 4)*Q(9, 1)+Q(8, 2)*Q(9, 6)-Q(8, 6)*Q(9, 2)];
	R(4, 3, :) = [0, Q(7, 1)*Q(9, 3)-Q(7, 3)*Q(9, 1)+Q(7, 2)*Q(9, 5)-Q(7, 5)*Q(9, 2)-Q(7, 2)*Q(9, 3)+Q(7, 3)*Q(9, 2),...
		Q(7, 1)*Q(9, 4)-Q(7, 4)*Q(9, 1)+Q(7, 2)*Q(9, 6)-Q(7, 6)*Q(9, 2)-Q(8, 1)*Q(9, 3)+Q(8, 3)*Q(9, 1)-Q(7, 2)*Q(9, 4)+Q(7, 4)*Q(9, 2)-Q(8, 2)*Q(9, 5)+Q(8, 5)*Q(9, 2)+Q(8, 2)*Q(9, 3)-Q(8, 3)*Q(9, 2),...
		Q(8, 4)*Q(9, 1)-Q(8, 1)*Q(9, 4)-Q(8, 2)*Q(9, 6)+Q(8, 6)*Q(9, 2)+Q(8, 2)*Q(9, 4)-Q(8, 4)*Q(9, 2)];
	R(4, 4, :) = [0, Q(7, 2)*Q(9, 3)-Q(7, 3)*Q(9, 2),...
		Q(7, 2)*Q(9, 4)-Q(7, 4)*Q(9, 2)-Q(8, 2)*Q(9, 3)+Q(8, 3)*Q(9, 2),...
		Q(8, 4)*Q(9, 2)-Q(8, 2)*Q(9, 4)];
end