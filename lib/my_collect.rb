def my_collect(array, change)
  students = []
  languages = []
  
  case change
  when "first_name"
    i = 0 
    while i < array.length do 
      students.push(array[i].split(" ").first)
      yield(array[i])
      i+=1
    end
    students
  when "language"
    i = 0 
    while i < array.length do 
      languages.push(array[i].upcase)
      yield(array[i])
      i+=1
    end
    languages
  end
end

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'], "first_name") do |name|
  name
end 


my_collect(['ruby', 'javascript', 'python', 'objective-c'], "language") do |lang|
  lang
end