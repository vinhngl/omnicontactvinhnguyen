Omnicontacts::Application.routes.draw do
  match "/contacts/:importer/callback" => "main#index", :via => [:get]

  match "/oauth2callback" => "main#contact", :via => [:get]

  # You can have the root of your site routed with "root"
  root 'main#index'
end
