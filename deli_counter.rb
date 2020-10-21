# Write your code here.
katz_deli = []

def line(people_in_line)
    if people_in_line.length < 1
        puts "The line is currently empty."
    else
        endvar = people_in_line.length - 1
        displayarr = ["The line is currently: "]
        people_in_line.each_with_index do |people, index|
            displayarr << index+1
            displayarr << ". "
            displayarr << people
            break if endvar == index 
            displayarr << " "
        end
        finaldisplay = displayarr.join
        puts "#{finaldisplay}"
    end
end

def take_a_number(deli, names)
    if deli.length < 1
        deli << names
        puts "Welcome, #{names}. You are number 1 in line."
    else
        if names.is_a? String 
            deli.push(names)
            deliindex = deli.index(names)
            puts "Welcome, #{names}. You are number #{deliindex + 1} in line."
        else
            names.each_with_index do |name, index|
                deli.push(name)
                puts "Welcome, #{name}. You are number #{index + 1} in line."
            end
        end
    end
end


def now_serving(deli)
    if deli.length < 1
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli[0]}."
        deli.shift()
    end
end