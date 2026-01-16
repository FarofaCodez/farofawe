#!/bin/python
import sys
import pathlib
import shutil
if len(sys.argv) < 2:
	print("No target directory specified")
	print(f"./{sys.argv[0]} <target world directory>")
	sys.exit(1)

path = pathlib.Path(sys.argv[1])

if not path.exists():
	print("No such directory")
	sys.exit(1)
if not path.is_dir():
	print("Not a directory")
	sys.exit(1)

sourceDir = path.cwd()
packDir = path.joinpath("datapacks")
targetDir = packDir.joinpath(sourceDir.name)
try:
	shutil.rmtree(targetDir)
except:
	pass

sourceDir.copy(targetDir)