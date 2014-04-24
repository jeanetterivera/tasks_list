tasks_list = Hash.new

puts "What would you like to add to your tasks list ?"
task = gets.chomp
puts" who  do you want to asign this task to"
user = gets.chomp

while task  != "exit"
  
  if tasks_list.has_key?(user)
    tasks_list[user] += task
    
    puts " #{task} has been added to your task list."
    
  else 
    tasks_list[user] = task 
    puts " #{task} has been added to your task list."
    
  end 
  puts "What else would you like to add to your tasks list or type exit. ?"
task = gets.chomp
  puts " Who is doing this task ?"
  user = gets.chomp
 end
tasks_list.each do |user,task|
  puts "#{user} ; #{task}"
end