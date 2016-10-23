import os
import shutil

home = os.path.expanduser('~')
ia_writer_wiki_home = os.path.join(home, 'Dropbox/iA Writer/wiki')
github_wiki_home = os.path.join(home, 'wiki')


def wiki_publish():
    files = os.listdir(ia_writer_wiki_home)
    for file_ in files:
        shutil.copy(os.path.join(ia_writer_wiki_home, file_), github_wiki_home)


if __name__ == '__main__':
    wiki_publish()
