require 'sinatra'

get '/messages' do
    "<h1 style=\"background-color:DodgerBlue;\">Hellow World</h1>"
end

get '/login' do
    erb :login
end

post '/login' do
    if params['username']=='admin' && params['password'] == 'admin'
        redirect '/list'
    else
        redirect '/login'
    end
end

get '/list' do
    erb :list
end

post '/list' do
    if params['item'] != nil
        new_item = "<li>#{params['item']}</li>"
        erb :list, locals: {
            item: new_item
        }
    end
    redirect '/list'
end