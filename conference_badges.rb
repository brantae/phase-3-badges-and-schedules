# Write your code here.
require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map do |name|
        "Hello, my name is #{name}."
    end
end

def assign_rooms(list_of_speakers)
    room_assign = []
    list_of_speakers.each.with_index(1) do |speaker, room_number|
        room_assign << "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
    end
    room_assign
end

def printer(list_of_speakers)
    #recall this previous method puts out an array of badge messages. we just want the message that correlates to the name coming from the arg (name array)
    batch_badge_creator(list_of_speakers).each do |badge_message|
        puts badge_message
    end
    #we do the same as above here, except with the second method that assigns rooms. we want the assignment message that correlates to the same name used above
    assign_rooms(list_of_speakers).each do |room_message|
        puts room_message
    end
    #
end
