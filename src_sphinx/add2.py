#!/usr/bin/env python3
"""
File with only one function: adds2
"""

def add2(x: float):
    """
    add two to input
    :param: x 
    :returns: x+2
    """

    #: ..note::
    #:    not casting to float. input could be a string and fail
    return x+2

if __name__ == "__main__":
    import sys
    print(add2(float(sys.argv[1])))
