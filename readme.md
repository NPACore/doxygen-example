# Multi-language repo documentation tests

Eventually looking to document sprawling projects with primarily bash and R scripts but some matlab/octave, python, and perl.

Heterogeneous autogen docs-in-code does not appear to have an easy solution. Doxygen source filters coarse object oriented docs. Sphinx has a few contributed "domains. The two have incompatible syntax for source documentation but can be bridges (breath).

| lang | software |markup | style | 
| -- | ------- |  --- | ---- |
| R  | Roxygen | markdown| `@param` |
| py | sphinx | rst |`:param:` (or Google/Numpy via Napolian) |
| c  | doxygen | |`\param` or `@param` \
| sh | [`shellman`](https://github.com/pawamoy/shellman/tree/main) || `\option` |
| m  ||||

 * doxygen source filters (matlab, shell, perl, python)
 * sphinx domains (matlab)
 * `mkdocstrings` - nascent  (python, [shell](https://mkdocstrings.github.io/shell/))
 * `doxydown` - perl script 
 * `headerdoc` - apple's old (and internet-srubbed?) mutli-language solution

## Doxygen
`Doxyfile` describes how to run source filters against `src/` and make `doc/`

```
make # runs doxygen
```

## Sphinx
`sphinx/conf.py` and `sphinx/*rst` describe how to document code in `src_sphinix/` to crate `docs-sphinx/`

```
make sphinx # sphinx-build sphinx/ docs-sphinx/
```
