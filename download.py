import re

import os
import subprocess

from links import all_links, common_prefix


def download():
    icons_dir = 'icons'
    os.makedirs(icons_dir, exist_ok=True)

    # use wget to download 12 image files
    for link in all_links:
        image_name = link[len(common_prefix):]

        arrow_type = re.search(r'([^/]*)/.*', image_name)[1]
        image_size = re.search(r'\d*px', image_name)[0]

        image_name = 'Google_material_icons_{}_{}.svg'.format(arrow_type, image_size)
        image_name = os.path.join(icons_dir, image_name)

        subprocess.run(['wget', '-O', image_name, '-c', link])


if __name__ == '__main__':
    download()
