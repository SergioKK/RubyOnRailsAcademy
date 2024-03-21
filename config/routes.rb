Rails.application.routes.draw do
  # get 'user/index'
  # get 'user/edit'
  # get 'user/update'
  devise_for :users
  root "lab_reports#index"

  resources :users
  resources :lab_reports

  get "/lab_reports_add_mark/:id", to: "lab_reports#add_mark", :as => "add_mark"
end
