%This function coverts the 1x64 1-D Block into 8x8 2-D Block
%It takes the 8x8 Block and returns 1-D vector read in a Zig Zag Pattern

function block8_8 = oneD_twoD_conversion(decoded_vec)
% Block Size
m = 8;
n = 8;
% Index
ind = [0:m-1, m-2:-1:0];
idx_1 = 1;
c = 0;
mat = zeros(m,n);
% Loop over the Diagonals
for i = -m+1 : 1: n-1
    idx_2 = idx_1+ind(c+1);
    v = decoded_vec(idx_1:idx_2);
    % Take each Diagonaland append it in the 8x8 block
    if (mod(c,2) == 0)
        temp1 = [diag(v, i)];
        c = c+1;
    else
        temp1 = diag(flip(v), i);
        c = c+1;
    end
    mat(temp1~=0) = temp1(temp1~=0);
    idx_1 = idx_2+1;
    
end
block8_8 = flip(mat);

end