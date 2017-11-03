current_path = File.dirname(__FILE__)

questions = current_path + "/questions.txt"
answers = current_path + "/answers.txt"

q = File.readlines(questions)
a = File.readlines(answers)

yes_answers = 0

for question in q do
  puts "\n" + question
  user_input = nil

  until user_input == "да" || user_input == "нет"
    puts "Введите 'Да' или 'Нет' и нажмите Enter"
    user_input = STDIN.gets.chomp.downcase
  end

  if user_input == "да"
    yes_answers += 1
  end
end

puts "\nВаш результат теста (ответов 'да' - #{yes_answers}):"

if yes_answers >= 10
  puts a[0]
elsif yes_answers >= 5
  puts a[1]
else
  puts a[2]
end