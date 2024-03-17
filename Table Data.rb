# Table with all the student names and scores based on the category
students_scores = {
  'Michael Scott' => {
    'assignments' => 25,
    'lab_works' => 23,
    'quizzes' => 7,
    'tests' => 34
  },
  'Pam Beesly' => {
    'assignments' => 29,
    'lab_works' => 28,
    'quizzes' => 8,
    'tests' => 39
  },
  'Jim Halpert' => {
    'assignments' => 21,
    'lab_works' => 20,
    'quizzes' => 5,
    'tests' => 29
  }
}

# Makes it so case sensitivity isn't an issue
students_scores.transform_keys!(&:downcase)
students_scores.each { |k, v| v.transform_keys!(&:downcase) }

# Get the score based on student name and course activity
def get_score(students, name, activity)
  student_data = students[name.downcase]
  if student_data.nil?
    # Here for an invalid input by the user
    puts "No record found for student: #{name}."
  elsif student_data[activity.downcase].nil?
    puts "No record found for activity: #{activity}."
  else
    puts "#{name.upcase}: #{activity.upcase} score: #{student_data[activity.downcase]}"
  end
end

# Display the input needed then use gets.chomp to get the user's input
puts 'Enter student name:'
student_name = gets.chomp

puts 'Enter course activity:'
course_activity = gets.chomp

# Display the score for what the user chose
get_score(students_scores, student_name, course_activity)
