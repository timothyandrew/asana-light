require 'sinatra'
require 'asana'

configure do
  Asana.configure do |client|
    client.api_key = ENV['ASANA_API_KEY']
  end
end

get '/' do
  user = Asana::User.me
  workspaces = Asana::Workspace.all
  tasks = workspaces.reduce([]) do |memo, workspace|
    memo << workspace.tasks(user.id).map(&:name)
    memo
  end.flatten
  erb :index, :locals => { :tasks => tasks }
end
