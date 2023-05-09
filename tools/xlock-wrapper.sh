#!/bin/bash

revert() {
  xset dpms 0 0 0
}

trap revert HUP INT TERM

xset +dpms dpms 5 5 5
i3lock-fancy --no-fork --pixelate --ignore-empty-password --color="#000000"
revert 

