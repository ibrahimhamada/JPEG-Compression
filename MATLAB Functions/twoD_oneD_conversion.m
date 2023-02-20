%This function coverts the 8x8 2-D Block into 1x64 1-D Block
%It takes the 8x8 Block and returns 1-D vector read in a Zig Zag Pattern
function zigzag_block = twoD_oneD_conversion(coded_vec)

B = flip(coded_vec); % 8x8 Block is flipped to use diag function because it deals with only main Diagonals.
[m, n] = size(B);    % Size of the Block
zigzag_block = [];
c = 0;
for i = -m+1 : 1: n-1  % Loop over all Diagonals of the Block where the main diagonal = 0 and below it (-ve) and above it (+ve)
    temp = diag(B, i); %Find the diagonal
    % Flip the diagonal if the diagonal number is odd
    if (mod(c,2) == 0) 
        zigzag_block = [zigzag_block temp'];
        c = c+1;
    else
        zigzag_block = [zigzag_block flip(temp)'];
        c = c+1;
    end
end

end