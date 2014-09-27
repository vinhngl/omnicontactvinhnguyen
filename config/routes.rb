Omnicontacts::Application.routes.draw do
  match "/contacts/:importer/callback" => "main#contact", :via => [:get]

  # Google
  match "/oauth2callback" => "main#contact", :via => [:get]

  # Yahoo
  match "/callback" => "main#contact_yahoo", :via => [:get]

  # You can have the root of your site routed with "root"
  root 'main#index'
end
