#!/bin/sh

files=""

list_headers()
{
  local filename="$1"
  
  if echo $files | grep "\[$filename\]" >/dev/null ; then
    return
  fi
  
  local path="`find . -name $filename`"
  echo $path | sed 's/^.\///'
  files="$files[$filename]"
  subfilenames="`grep '#include <Cryptor/' "$path" | sed 's/^#include <Cryptor\/\(.*\)>$/\1/'`"
  subfilenames+=" "
  subfilenames+="`grep '#import <Cryptor/' "$path" | sed 's/^#import <Cryptor\/\(.*\)>$/\1/'`"
  for include_dir in $subfilenames ; do
    list_headers $include_dir
  done
}

cd ..
echo 'set(public_headers'
list_headers Cryptor.h
echo ')'
