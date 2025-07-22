import os, cmd

when isMainModule:
  let args = commandLineParams()
  if args.len == 0:
    echo "[ ERR ] No arguments provided!"
    quit(1)

  let command = args[0]
  let opts = args[1..^1]

  case command
  of "add":
    if opts.len > 0:
      handleCommand(command, opts)
    else:
      echo "[ ERR ] Missing .cat file name!"
  else:
    echo "[ ERR ] Unknown command: ", command