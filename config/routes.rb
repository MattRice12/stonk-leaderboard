Rails.application.routes.draw do
  post '/register', to: 'users#register'
  delete '/delete', to: 'users#delete'
  post '/buy', to: 'trades#buy'
  post '/sell', to: 'trades#sell'
  get '/leaderboard', to: 'leaderboard#all'
end
