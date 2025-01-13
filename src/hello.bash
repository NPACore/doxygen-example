#!/usr/bin/env bash

## @file
## @brief very simple bash script
# 20250112WF - init

## @fn hello()
## @brief bash greater
## @param who greating name
## @note **this** `code` parsed like hello.c and shares a function name with hello.py
hello() {
  who=${1:-world} ## @note default to greeting "world"
  echo "Hi $who"
  return 0
}

eval "$(iffmain docme_main)"
