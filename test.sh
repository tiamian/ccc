#!/bin/bash
try() {
  expected="$1"
  input="$2"

  ./ccc "$input" > tmp.s
  gcc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

try 5 1+4
try 42 42

echo OK