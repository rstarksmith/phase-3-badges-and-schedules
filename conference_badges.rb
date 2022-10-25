def badge_maker name 
    "Hello, my name is #{name}."
end

def batch_badge_creator speakers
    speakers.map do |speaker|
        "Hello, my name is #{speaker}."
    end
    # speakers.map {|speaker| "Hello, my name is #{speaker}."}
end

def assign_rooms speakers
    speakers.map.with_index(1) do |speaker, num|
        "Hello, #{speaker}! You'll be assigned to room #{num}!"
    end
end

def printer speakers
    batch_badge_creator(speakers).each do |badge|
        puts badge
    end

    assign_rooms(speakers).each do |assign|
        puts assign
    end

end