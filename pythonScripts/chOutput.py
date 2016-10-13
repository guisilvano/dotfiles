#!/usr/bin/python

import sys, os

while True: 
    print "Select option:"; print "1. LVDS1"; print "2. VGA1"; print "0. Displays"
    opt = raw_input(">")
    
    if opt == '1':
        print "  LVDS1:"; print "  1. Enable"; print "  0. Disable"
        opt = raw_input ("  >")

        if opt == '1':
            print "Calling xrandr... "
            os.system("xrandr --output LVDS1 --auto"); print "Done."
            
        elif opt == '0':
            print "    Sure? (Y/n)"
            opt = raw_input("    >")
            
            if opt == 'Y':
                print "Calling xrandr... "
                os.system("xrandr --output LVDS1 --off"); print "Done."
            else:
                print "No changes made."
        
    elif opt == '2':
        print "  VGA1:"; print "  1. Enable"; print "  0. Disable"
        opt = raw_input ("  >")

        if opt == '1':
            print "Calling xrandr... "
            os.system("xrandr --output VGA1 --auto"); print "Done."
        elif opt == '0':
            print "Calling xrandr... "
            os.system("xrandr --output VGA1 --off"); print "Done."

    elif opt == '0':
        os.system("xrandr")
    
    else:
        sys.exit(0)
