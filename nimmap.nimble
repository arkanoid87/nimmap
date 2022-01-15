# Package
version       = "0.1.0"
author        = "Arkanoid87"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["nimmap"]


# Dependencies

requires "nim >= 1.2.0"
requires "futhark"
requires "nimqml"

import std/strformat

# let test_args = "data/point.shp"
# let test_args = "data/regioni.gpkg"
# let test_args = "data/twopoly.gpkg"
# let test_args = "data/multilayer.gpkg data/regioni.gpkg"
let test_args = "data/multilayer.gpkg"

task auxCompile, "auxCompile":
    exec("nimble build")
    exec("patchelf --set-rpath '$ORIGIN/lib' nimmap")

task nimmap, "nimmap":
    exec("nimble auxCompile")
    exec(&"./nimmap {test_args}")
    
task valgrind, "valgrind":
    exec("nimble auxCompile")
    exec(&"valgrind --tool=memcheck --leak-check=yes --track-origins=yes --log-file=valgrind-out.txt ./nimmap {test_args}")