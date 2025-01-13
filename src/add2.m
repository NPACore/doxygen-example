%> @file
%> @brief Matlab/octave code doc demo

%% functions
%> @brief add 2 to input
%> @warning will error if given a non-numeric input
%> @param x numeric input (scalar or vector)
%> @retval x2 input + 2
function [x2] = add2(x)
   x2 = x + 2

%% octave tests
%!assert(add2(5) == 7)
%!assert(all(add2([0 2]) == [2 4]))
