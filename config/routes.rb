Rails.application.routes.draw do
  root "pages#home"   #creates root_path
  get "about" => "pages#about"  #creates about_path.  But we could make our own path with as: "whatever"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
