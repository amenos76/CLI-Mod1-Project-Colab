require_relative 'config/environment'

# binding.pry

app = Cli.new

app.welcome
app.ask_users_name
app.display_trails


