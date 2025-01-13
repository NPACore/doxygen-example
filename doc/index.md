# Multi-language repo documentation
This repo contains documents multiple langes in @ref src/
  * @ref main from hello.c
  * hello.bash has it's own @ref hello
  * hello.py has both a class @ref Hello and function @ref hello.hello
  * add2.m documents an octave function @ref add2
  * getid.pl has @ref main::getid()

## Limitations
  * bash and perl source filters do not have programs for `FILTER_SOURCE_PATTERNS` like the matlab filter does. Link to source from doc is mangled and shows the source filter (c++-like coearsed method definition)  instead of code.
  * standalone perl functions are in `main` class (@ref main::getid() instead of `getid()`)
  * in python, definitions within `if __main__` get pulled out as constant @ref hello.great on hello.py#46

## Syntax
  * `@ref func()` to magically link to a reference function.
  * `filename.ext` to link to a file
  * See [doxygen commands](https://www.doxygen.nl/manual/commands.html) for `@brief`, `@note`, etc

> [!note]
> Notes in markdown look like `> [!note] this is a note`
>
> but like `@note noteworthy information` in comments

