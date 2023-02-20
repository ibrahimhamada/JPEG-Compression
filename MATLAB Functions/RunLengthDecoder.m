%This function Decode the Run Length Coded message of a given 1x64 block 
%It finds the zeros and expands them using the count values which are
%placed after each zero
function decoded_vec = RunLengthDecoder(coded_vec)

decoded_vec = [];
i = 0;
while(i <= length(coded_vec)-1)
    i = i+1;
    if(coded_vec(i) == 0)
        decoded_vec = [decoded_vec zeros(1, coded_vec(i+1))];
        i = i+1;
    else
        decoded_vec = [decoded_vec coded_vec(i)];
    end
end

end