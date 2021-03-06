# Write your code here.
katz_deli = []

def line(current_line)
  if current_line.count == 0
    puts "The line is currently empty."
  else
    line_string = "The line is currently:"
    current_line.each_with_index do |person, index|
      line_string.concat" #{index + 1}. #{person}"
    end
    puts line_string
  end
end

def take_a_number(current_line, name)
  current_line.push(name)
  puts "Welcome, #{name}. You are number #{current_line.count} in line."
end

def now_serving(current_line)
  if current_line.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.first}."
  end
  current_line.shift
end
