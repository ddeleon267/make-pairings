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
'Aaron  Harvey',
'Abdul Khan',
'Alex Martinez',
'Allan Farca',
'Angel Brown',
'Aurel Fontaine',
'Austin  Johnson',
'Arnie Bwaila',
'Broderick Fowler',
'Bryce Boddy',
'Caroline Longnecker',
'Cedric Goddard',
'Chloe Steffens',
'Chris  Wade',
'Curtis Chadwell',
'Dina Kendle',
'Eryk Rachwal',
'Evan Smith',
'Gabriel Perez',
'Hannah Gouin',
'Heather Moreira',
'Jashema Panapa',
'Jason Viola',
'Jeanette Rosario',
'Jharell Chambers',
'Jhonnae Tiffany',
'Joshua Perez-Leduc',
'Kenneth Neylon',
'Latricia Nickelberry',
'Matt Fleming',
'Meghan Flynn',
'Nabil Hayet',
'Nicholas Keller',
'Omar Nabi',
'Pledge Davis',
'Rachel Taylor',
'Sandie Nunez',
'Sara Garza',
'Sergey Zolotukhin',
'Pouya Hajiseyedjavadi',
'Shamel Lakin',
'Sydney Hunter',
'Thomas Wright',
'Victor Plushko',
'Vladimir Jimenez',
'Winston Chung',
].shuffle.shuffle.shuffle.shuffle.shuffle.shuffle

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

