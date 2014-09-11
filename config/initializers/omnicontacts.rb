require 'omnicontacts'

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "99479291876-hottfk4slg8sctuivgrjckk90jbpf8hg.apps.googleusercontent.com", "Ro617b-PqpTneUU4Ic27hpbZ", {:redirect_path => "/oauth2callback", :ssl_ca_path => "/etc/ssl/certs/curl-ca-bundle.crt"}
end