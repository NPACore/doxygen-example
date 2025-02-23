function [x3] = add3(in)
   % add3 add three to input
   % :param: in number to increment
   % :returns: in+2

   %: ..note:
   %:   addition will fail if ``x`` is a non-numeric number
   x3 = in + 2

%% octave tests
%!assert(add2(5) == 7)
%!assert(all(add2([0 2]) == [2 4]))
