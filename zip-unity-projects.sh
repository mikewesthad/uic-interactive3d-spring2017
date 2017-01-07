#!/bin/bash

# Files must be commited before running

unitypath="class-files/projects/unity"

for dir in $unitypath/*/ ; do
	folderpath=${dir%/} # Strip trailing slash
    git archive --format=zip -o $folderpath.zip HEAD:$dir
done
