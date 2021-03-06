import os
import subprocess
from glob import glob
from os.path import basename, join

import click
from tqdm import tqdm


@click.command()
@click.option('--data_dir', required=True, type=str)
@click.option('--output_dir', required=True, type=str)
def main(data_dir, output_dir):
    os.chdir(data_dir)
    all_data_paths = glob("./*")
    for each_path in tqdm(all_data_paths):
        gcmtid = basename(each_path)
        outpath = join(output_dir, f"{gcmtid}.tar.gz")
        command = f"tar -czf {outpath} ./{gcmtid}"
        subprocess.call(command, shell=True)


if __name__ == "__main__":
    main()
