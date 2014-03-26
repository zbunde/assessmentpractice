require 'sinatra/base'

class App <Sinatra::Base

  TASKS = []

  get '/' do
    erb :index, :locals => {:tasks => TASKS}
  end

  post '/' do
    TASKS << params[:task]
    erb :index, :locals => {:tasks => TASKS}
  end

  get '/tasks' do
    erb :tasks
  end

  get '/tasks/:id' do

  end



end

