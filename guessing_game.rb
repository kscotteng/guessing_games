def is_dup(array, input)
  if array.include?(input) == true
    puts "---You have entered the same number twice, do you need assistance?"
  end
end

def game_over(count)
  if count == 4
    puts "...Game Over..."
  end
end

rand_num = rand(1..100)
puts rand_num.to_s
count = 0
array = []

while count < 5
  puts "...Enter a number from 1-100:"
  input = gets.chomp
  is_dup(array, input)
  array << input
  game_over(count)
  if count == 4
    break
  elsif input.to_i > rand_num
    puts "---Your number is too high, try again---"
    count += 1
  elsif input.to_i < rand_num
    puts "---Your number is too low, try again---"
    count += 1
  elsif input.to_i == rand_num
    puts "---Your number is correct, You Win!---"
    break
  else
    puts "The End"
  end
end
