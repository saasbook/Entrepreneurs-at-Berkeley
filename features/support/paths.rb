# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /^the dashboard page$/
      '/announcements'

    when /^the Admin Database page$/
      '/admin'

    when /^the Database page$/
      '/users'

    when /^the Team Database page$/
      '/teams'

    when /^the login page$/
      '/users/sign_in'

    when /^the team creation page$/
      '/teams/create'

    when /^the "(.*)" team page$/i
      team_path(Team.find_by name: $1)

    when /^the "(.*)" team edit page$/i
      edit_team_path(Team.find_by name: $1)

    when /^the spreadsheet page$/
      users_spreadsheet_path + ".xlsx"

    when /^the profile page for the user with email "(.*)"$/i
      user_path(User.find_by email: $1)

    when /^the edit page for the user with email "(.*)"$/i
      edit_page_path(User.find_by email: $1)

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
