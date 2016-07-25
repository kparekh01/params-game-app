Rails.application.routes.draw do
  get '/querry_show/' => 'parameters#querry_show' #/queery_show/?key=info(stored as value)
  get '/wild_card_route/:wild_card' => 'parameters#wild_card_show' #/wild_card_route/info(stored as value for hidden key)
  get '/guess_number' => 'parameters#display_form'
  post '/guess_number' => 'parameters#process_form'
end
