import os
import manager

proc handleCommand*(cmd: string, opts: seq[string]) =
    case cmd
    of "add":
        echo "[ OK ] Installing app: ", opts[0]
    of "rem":
        echo "[ OK ] Uninstalling app: ", opts[0]
    of "mov":
        if opts.len < 2:
            echo "[ ERR ] mov requires two arguments: AppName and DirName"
            return
        echo "[ OK ] Moving ", opts[0], "->", opts[1]
    of "info":
        echo "[ OK ] Reading INFO.txt file..."
        echo "App: ", opts[0]
    of "help":
        echo readFile("assets/help.txt")
    else:
        echo "[ ERR ] Command ", cmd, "not found..."