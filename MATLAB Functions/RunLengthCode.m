%This function compute the Run Length Code of a given 1x64 block since
%there are many zeros in the block
function coded_vec = RunLengthCode(oneD_block)
c=1;
coded_vec = [];
for i=1:length(oneD_block)-1  %loop over the block
    if(oneD_block(i) == 0)    %if the current value is zero
        if(oneD_block(i)==oneD_block(i+1)) %check if the next value is zero and increment the count
            c=c+1;
        else
            coded_vec = [coded_vec,oneD_block(i),c,]; % append the value as it is if the value is not zero
            c=1;
        end
    else
        coded_vec = [coded_vec oneD_block(i)];
    end
end
% append the last value of the block
if (oneD_block(end) == 0)  
    coded_vec = [coded_vec, 0, c];
else
    coded_vec = [coded_vec, oneD_block(length(oneD_block))];
end
    


end