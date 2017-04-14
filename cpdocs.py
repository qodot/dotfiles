import os
import shutil

home = os.path.expanduser('~')
content_src = os.path.join(home, 'Dropbox/iA Writer/developer')
image_src = os.path.join(home, 'Dropbox/iA Writer/developer/images')
content_dest = os.path.join(home, 'workspace/blog/content/post')
image_dest = os.path.join(home, 'workspace/blog/static/image')


def cpdocs():
    files = [f for f in os.listdir(content_src)
             if os.path.isfile(os.path.join(content_src, f))]
    for f in files:
        shutil.copy(os.path.join(content_src, f), content_dest)

    images = [f for f in os.listdir(image_src)
              if os.path.isfile(os.path.join(image_src, f))]
    for f in images:
        shutil.copy(os.path.join(image_src, f), image_dest)


if __name__ == '__main__':
    cpdocs()
