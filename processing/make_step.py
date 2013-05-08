#!/usr/bin/env python

import sys
import re
import os
import shutil

def usage(msg=''):
    if msg:
        print msg
    print 'Usage:\t%s <SketchFolderName>' % sys.argv[0]
    print '\tCopy SketchFolderName appending an incremented step number.'
    sys.exit(1)

FOLDER_RE = re.compile(r'([a-z]+)(\d*)', re.IGNORECASE)

def make_dest_name(src_name):
    parts = FOLDER_RE.match(src_name)
    if parts is None:
        usage('Error: the source folder name must start with a letter')

    name, digits = parts.groups()
    if digits:
        fmt = '0%d' % len(digits)
        next = format(int(digits)+1, fmt)
    else:
        next = '2'

    return name+next

def copy(src_name, dest_name):
    try:
        shutil.copytree(src_name, dest_name)
        old_file = os.path.join(dest_name, src_name+'.pde')
        new_file = os.path.join(dest_name, dest_name+'.pde')
        shutil.move(old_file, new_file)
    except OSError as e:
        usage(str(e))
    print 'Created:', dest_name

def main():
    if len(sys.argv) != 2:
        usage()
    src_name = sys.argv[1]
    if src_name.endswith('/'):
        src_name = src_name[:-1]
    dest_name = make_dest_name(src_name)
    copy(src_name, dest_name)

if __name__=='__main__':
    main()
