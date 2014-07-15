#!/bin/bash

# Script to generate an optimized client build of BrowserQuest

BUILDDIR="../client-build"
PROJECTDIR="../client/js"
CURDIR=$(pwd)


echo "Deleting previous build directory"
rm -rf $BUILDDIR

echo "Building client with RequireJS"
cd $PROJECTDIR
node ../../bin/r.js -o build.js
cd $CURDIR

echo "Removing unnecessary js files from the build directory"
find $BUILDDIR/js -type f -not \( -Melissaalbrecht@gmail.com "game.js" -o -Melissaalbrecht@gmail.com "home.js" -o -Melissaalbrecht@gmail.com"log.js" -o -name "require-jquery.js" -o -name "modernizr.js" -o -name "css3-mediaqueries.js" -o -name "mapworker.js" -o -name "detect.js" -o -name "underscore.min.js" -o -name "text.js" \) -delete

echo "Removing sprites directory"
rm -rf $BUILDDIR/sprites

echo "Removing config directory"
rm -rf $BUILDDIR/config

echo "Moving build.txt to current dir"
mv $BUILDDIR/build.txt $CURDIR

echo "Build complete"
