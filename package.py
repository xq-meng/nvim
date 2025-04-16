import os
import shutil
import argparse
import subprocess
from pathlib import Path


def clear_folder(path):
    folder = Path(path)
    for item in folder.iterdir():
        if item.is_file() or item.is_symlink():
            item.unlink()
        elif item.is_dir():
            shutil.rmtree(item)


def package(args):
    short_hash = subprocess.check_output(['git', 'rev-parse', '--short=6', 'HEAD'],
                                         cwd=f"{os.getenv('HOME')}/.config/nvim",
                                         stderr=subprocess.STDOUT).decode('utf-8').strip()
    folder_name = f"nvim-package-{short_hash}"
    package_name = folder_name + ".tar.gz"
    temp_dir = os.path.join(args.temp, folder_name)

    # temperatory directory
    if not os.path.exists(temp_dir):
        os.makedirs(temp_dir)
    else:
        clear_folder(temp_dir)

    # output directory
    if not os.path.exists(args.out):
        os.makedirs(args.out)

    print("Lazy update ...")
    os.system(f"{args.nvim} --headless \"+Lazy! sync\" +qa")

    print("Downloading tree-sitters ...")
    os.system(f"git clone https://github.com/tree-sitter/tree-sitter-cpp.git {temp_dir}/tree-sitter-cpp --depth 1")
    os.system(f"git clone https://github.com/tree-sitter/tree-sitter-python.git {temp_dir}/tree-sitter-python --depth 1")

    print("Packaging ...")
    os.system(f"cp {__file__} {temp_dir}")
    os.system(f"cd $HOME && tar -cf {temp_dir}/nvim-package.tar ./.local/share/nvim/lazy/ ./.config/nvim/")
    os.system(f"cd {args.temp} && tar -czf {folder_name}.tar.gz {folder_name}")
    os.system(f"mv {os.path.join(args.temp, package_name)} {args.out}")

    print(f"File saved as {os.path.join(args.out, package_name)}")


def unpackage(args):
    package_dir = os.path.dirname(__file__)

    print("Compiling tree-sitter")
    os.system(f"cd {package_dir}/tree-sitter-cpp && make")
    os.system(f"cd {package_dir}/tree-sitter-python && make")

    print("Copying files")
    os.system(f"tar -C {os.getenv('HOME')} -xf {os.path.join(package_dir, 'nvim-package.tar')}")
    treesitter_dest = os.path.join(os.getenv('HOME'), '.local/share/nvim/lazy/nvim-treesitter/parser/')
    treesitter_cpp = os.path.join(package_dir, 'tree-sitter-cpp/libtree-sitter-cpp.so')
    treesitter_python = os.path.join(package_dir, 'tree-sitter-python/libtree-sitter-python.so')
    os.system(f"cp {treesitter_cpp} {os.path.join(treesitter_dest, 'cpp.so')}")
    os.system(f"cp {treesitter_python} {os.path.join(treesitter_dest, 'python.so')}")

    print("Done!")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-o", "--out", type=str, default=".")
    parser.add_argument("--nvim", type=str, default="nvim")
    parser.add_argument("--temp", type=str, default="/tmp")
    parser.add_argument("--unpack", action="store_true", default=False)
    args = parser.parse_args()

    if args.unpack:
        unpackage(args)
    else:
        package(args)
