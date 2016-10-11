#!/usr/bin/python

from subprocess import call

print "Select output:"; print "1. LVDS1"; print "2. VGA1"
opt = input (">")

if opt == 1:
    print "  LVDS1:"; print "  1. Enable"; print "  0. Disable"
    opt = input ("  >")

    if opt == 1:
        print "Calling xrandr... "
        call(["xrandr","--output","LVDS1","--auto"], shell=True)
    elif opt == 2:
        print "Calling xrandr... "
        call(["xrandr","--output","LVDS1","--off"], shell=True)

elif opt == 2:
    print "  VGA1:"; print "  1. Enable"; print "  0. Disable"
    opt = input ("  >")

    if opt == 1:
        print "Calling xrandr... "
        call(["xrandr","--output","VGA1","--auto"], shell=True)
    elif opt == 2:
        print "Calling xrandr... "
        call(["xrandr","--output","VGA1","--off"], shell=True)

print "Done."
