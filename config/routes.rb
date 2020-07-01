Rails.application.routes.draw do
  post '/register', to: 'users#register'
  post '/buy', to: 'trades#buy'
  post '/sell', to: 'trades#sell'
  get '/leaderboard', to: 'leaderboard#all'
end
