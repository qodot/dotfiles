import os
import re
import shutil
from distutils.dir_util import copy_tree

home = os.path.expanduser('~')
ia_writer_wiki_home = os.path.join(home, 'Dropbox/iA Writer/wiki')
github_wiki_home = os.path.join(home, 'wiki')


def wiki_publish():
    for dp, dns, filenames in os.walk(ia_writer_wiki_home):
        for filename in filenames:
            src_path = os.path.join(dp, filename)
            dst_path = os.path.join(github_wiki_home, filename)
            print(src_path, dst_path)
            shutil.copy(src_path, dst_path)

if __name__ == '__main__':
    wiki_publish()
