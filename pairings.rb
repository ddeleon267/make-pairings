def factor(list)
    number_pairs = list.length/2
    set = []
    first, *rest = *list
    rest.each_with_index do |person, index| 
      pairs = []
      pairs << [first, person]
      (1..number_pairs-1).each do |offset|
        pairs << [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
      end
      set << pairs
    end
    set
end

names = [
  'Anthony DiPietrantonio',
  'Arynn Boniface',
  'Ben Wichser',
  'Bradley Rush',
  'chris brady',
  'Christine Paz',
  'Christopher Reinken',
  'Ciara Proia',
  'Cyr Edwin Yapnounkie Nagtchou',
  'Dakota Wicker',
  'David Hutchison',
  'Derek phung',
  'Diane Crame',
  'Jack Quinoa',
  'jamelia harrison',
  'James Johnson',
  'Javante Nelson',
  'John Stewart',
  'Jorge Ramirez',
  'Joshua Williams',
  'JUAN M RESTREPO',
  'Junaid Malik',
  'Justin Winger',
  'Kevin Mathias',
  'Kristin Woods',
  'Laine Barrett',
  'Makoa DeVincent',
  'Mariam Haider',
  'Mat Cabral',
  'Nashmeyah Al-Rekabi',
  'Nicholas Ballesteros',
  'Nicholas Keller',
  'Raymundo Alva',
  'Ryan McFadden',
  'Ryan Parrish',
  'Samantha Sanford',
  'Samiylo Kryshu',
  'Shari Jointe',
  'Timothy Harling',
  'Toni Diep',
  'Trevor Tarpinian',
  'Wielfried Zouantcha',
]

slow_names = [
]

num = rand(0..names.length-1)
puts "Number of students: #{names.length}"
new_names = names
if names.length % 2 != 0
  puts "Extra Student: #{names[num]}"
  new_names = names[0...num] + names[num+1...names.length]
end
sets = factor(new_names)
week_index = rand(0..sets.length - 1)
puts "Index used : #{week_index}"


sets[week_index].each do |pair|
    puts "| #{pair[0]}   | #{pair[1]}    |"
end

# num2 = rand(0..slow_names.length-1)
# puts "Number of students: #{slow_names.length}"
# new_names2 = slow_names
# if slow_names.length % 2 != 0
#   puts "Extra Student: #{slow_names[num2]}"
#   new_names2 = slow_names[0...num2] + slow_names[num2+1...slow_names.length]
# end
# sets2 = factor(new_names2)
# week_index2 = rand(0..sets2.length - 1)
# puts "Index used : #{week_index2}"


# sets2[week_index2].each do |pair|
#     puts "| #{pair[0]}   | #{pair[1]}    |"
# end

