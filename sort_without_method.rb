list = Array.new

# цикличный запрос ввода
loop do
  puts "Enter the words or numbers:"
  item = gets.chomp
  break if item == ""
  list << item
end

# тестовый массив
new_arr = [4, 3, 8, 8, 9, 2, 10, 443, 1, 0, 55]

# метод для одиночного прохода по массиву
def sort_words(ar)
  i = 0 # левый индекс
  j = 1 # правый индекс
  # счётчик перестановок в виде глобальной (обязательно) переменной;
  # нужен для понятия, были ли перестановки в массиве за последний цикл;
  # если не было, значит, массив отсортирован
  $s = 0

  while j < ar.length
    if (ar[i] > ar[j])
      temp = ar[i]
      ar[i] = ar[j]
      ar[j] = temp

      i = i + 1
      j = j + 1
      $s = $s + 1
    else
      i = i + 1
      j = j + 1
    end # if
    #puts "inside method i is #{i}, j is #{j}, s is #{$s}" # debug
  end # while
end

def sorting(argum)
  $s = 1

  until $s.eql?(0)
    #puts "#{argum}" # debug
    sort_words(argum)
    #puts "in 'until' s is #{$s}" # debug
  end

  return argum
end

sorting(list)

puts "Your list is sorted: #{list}."
