class Cli

    attr_accessor :user

    def initialize user=nil
        @user = user
        @trail_choice = ""
        @difficulty_choice = ""
    end

    def prompt
        TTY::Prompt.new
    end

    def start
        user_input = prompt.yes? "Welcome to our hiking app! Have you been here before?"
        if (user_input)
            sign_in
        else
            sign_up
        end
    end
    
    def sign_up
        first_name = prompt.ask "What is your first name?"
        last_name = prompt.ask "What is your last name?"
        username = prompt.ask "What is your username?"
        email = prompt.ask "What is your email?"
       
        self.user = User.create(
            first_name: first_name,
            last_name: last_name,
            username: username,
            email: email,
        )
        puts "All done! Thanks!"
    end

    def sign_in
        user_input = prompt.ask "Please enter your username.."
        found_user = User.find_by(username: user_input)
        if found_user
            self.user = found_user
            puts "Welcome back #{user.first_name} #{user.last_name}!"
        else
            user_input = prompt.ask "Username does not exist. Please enter your email.."
            self.user = User.find_by_email(user_input)
        end
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

    def all_trail_names
        trail_names = Trail.all.map do |trail|
            trail.name
        end
        trail_names.each do |trail_name|
            puts trail_name
        end
    end

    def ask_difficulty
        @difficulty_choice = prompt.select("Choose your desired hike difficulty", %w(Easy Medium Hard))
        thing = Trail.find_by(difficulty: @difficulty_choice)
        puts "Here are some trails that match your difficulty: #{thing.name}"
    end

end