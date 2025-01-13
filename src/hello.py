#!/usr/bin/env python3
"""!
@file
Python example file
"""

class Hello:
    """!
    @brief an over-abstracted greater

    @code
    >>> x = Hello('x')
    >>> x.who
    'x'

    """
    who : str ##! `who` to **great** -- not seen by doxygen

    def __init__(self, who="world"):
        self.who = who

    def hi(self, rep=1):
        """!
        say hi many times
        @param rep how many times to say hello
        """
        print(f"hello {self.who}\n" * rep)


def hello(who="world"):
    """!
    Function version of [class](@ref Hello) without repeats

    @note `hello` here is same function name as @ref hello.bash::hello
    @param who    name to great
    @return string "hello $who"

    @code
    >>> hello("me")
    'hello me'

    """
    print(f"Hello {who}")

if __name__ == "__main__":
    great = Hello('you know who')
    great.hi(3)
