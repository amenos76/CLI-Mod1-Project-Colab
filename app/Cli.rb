class Cli

    def welcome
        puts 'Hello, welcome to my hiking app!'
    end

    def ask_users_name
        puts 'Please enter your name:'
        users_name = gets.strip
        puts "Good day, #{users_name}!"
    end

    def display_trails
        puts 'Here is our list of Colorado hiking trails:'
        trail_names = Trail.all.map do |trail|
            trail.name
        end
        trail_names.each do |trail_name|
            puts trail_name
        end
    end

end