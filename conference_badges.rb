# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)

  messages_array = []

  names.each do |el|
    messages_array << badge_maker(el)
  end

  messages_array

end

def assign_rooms(names)

  room_num_arr = []

  names.each_with_index {|name, i| room_num_arr << [name, i]}

  room_num_arr.collect {|name_and_room| "Hello, #{name_and_room[0]}! You'll be assigned to room #{name_and_room[1] + 1}!"}

end

def printer(names)

    badge_arr = batch_badge_creator(names)
    assignment_arr = assign_rooms(names)

    badge_arr.each_with_index {|name, i|
      puts name
      puts assignment_arr[i]
    }

end
