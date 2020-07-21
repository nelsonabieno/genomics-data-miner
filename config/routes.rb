Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "gene#index"
  post "/data_miner" => "gene#data_miner"
  get "/result" => "gene#result"
end
