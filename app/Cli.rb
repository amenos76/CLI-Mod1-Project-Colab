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
        trails = [ 
            { name: 'Hanging Lake Trail', location: 'Glenwood Springs',
            description: 'Lake with vibrant green waters, cascades & sheer cliffs, accessed by steep hike or shuttle bus.'}, 
            { name: 'Chataqua Trail', location: 'Boulder', 
            description: 'A heavily trafficked out and back trail that features beautiful wild flowers.'}
        ]
        
        trail_names = trails.map do |trail|
            trail[:name]
        end

        trail_names.each do |trail_name|
            puts trail_name
        end
    end

end