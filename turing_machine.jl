#verdoppeln einer unären Zahl (bspw: 111 = 3)

function input()
    println("please enter number:")
    parse(Int, readline())
end

c = input()
n = fill("1",c)
global z = 0
global m = 1

while true
    if z == 0 && n[m] == "0"
        global m += 1
        println(n)
    elseif z == 0 && n[m] == "1"
        n[m] = "0"
        global m += 1
        println(n)
    elseif z == 1 && n[m] == "0"
        global z = 2
        n[m] = "1"
        global m -= 1
        println(n)
    elseif z == 1 && n[m] == "1"
        global m += 1
        println(n)
    elseif z == 2 && n[m] == "0"
        global z = 3
        global m += 1
        println(n)
    elseif z == 2 && n[m] == "1"
        global z = 4
        n[m] = "0"
        global m += 1
        println(n)
    elseif z == 3 && n[m] == "0"
        global z = 0
        n[m] = "1"
        println(n)
        break
    elseif z == 3 && n[m] == "1"
        global m += 1
        println(n)
    elseif z == 4 && n[m] == "0"
        global z = 5
        n[m] = "1"
        global m -= 1
        println(n)
    elseif z == 4 && n[m] == "1"
        global m += 1
        println(n)
    elseif z == 5 && n[m] == "0"
        global z = 2
        n[m] = "1"
        global m -= 1
        println(n)
    elseif z == 5 && n[m] == "1"
        global m -= 1
        println(n)
    end
end
