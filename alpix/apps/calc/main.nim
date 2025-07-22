import strutils, os

while true: 
    echo "Type exit for exit"
    echo "1 >>"
    let a = parseFloat(readLine(stdin))

    echo "2 >>"
    let b = parseFloat(readLine(stdin))

    echo "OP >>"
    let op = readLine(stdin)

    case op
    of "+":
        echo "Res >> ", a + b
    of "-":
        echo "Res >> ", a - b
    of "*":
        echo "Res >> ", a * b 
    of "/":
        if b != 0:
            echo "Res >> ", a / b
        else:
            echo "Err >> Dividing by 0"
    of "exit":
        break
    else:
        echo "Err >> Unknow operation"
     