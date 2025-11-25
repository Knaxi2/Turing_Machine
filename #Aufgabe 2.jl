#Aufgabe 2
function verarbeite_unär(n::Int)
    zustand = 0
    digits = collect(string(n))   # Zahl in Char-Array umwandeln
    i = 1
    while true
        println(digits, " Zustand: ", zustand)
        if i < 1
            pushfirst!(digits, '0')  # Füge 0 am Anfang hinzu, wenn nötig
            i = 1
        elseif i > length(digits)
            push!(digits, '0')     # Füge 0 am Ende hinzu, wenn nötig
        end
            if zustand == 0
                if digits[i] == '0'
                    i += 1
                elseif digits[i] == '1'
                    digits[i] = '0'   # 1 → 0
                    zustand = 1
                    i += 1
                end 
            elseif zustand == 1
                if digits[i] == '0'
                    digits[i] = '1'   # 0 → 
                    zustand = 2
                    i -= 1
                elseif digits[i] == '1'
                    i += 1
                end
            elseif zustand == 2
                if digits[i] == '0'
                    zustand = 3
                    i += 1
                elseif digits[i] == '1'
                    zustand = 4
                    i += 1
                end
            elseif zustand == 3
                if digits[i] == '0'
                    digits[i] = '1'   # 0 → 1
                    i += 1
                    break
                elseif digits[i] == '1'
                    i += 1
                end
            elseif zustand == 4
                if digits[i] == '0'
                    digits[i] = '1'   # 0 → 1
                    zustand = 5
                    i -= 1
                elseif digits[i] == '1'
                    i += 1
                end
            elseif zustand == 5
                if digits[i] == '0'
                    digits[i] = '1'   # 0 → 1
                    zustand = 2
                    i -= 1
                elseif digits[i] == '1'
                    i -= 1
                end
            end
    end

    # Ergebnis zusammensetzen
    return parse(Int, join(digits))
end
verarbeite_unär(111)