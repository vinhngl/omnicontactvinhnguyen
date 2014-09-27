require 'omnicontacts'

Rails.application.middleware.use OmniContacts::Builder do

  if Rails.env.production?
    importer :gmail, "99479291876-hottfk4slg8sctuivgrjckk90jbpf8hg.apps.googleusercontent.com", "Ro617b-PqpTneUU4Ic27hpbZ", {:redirect_path => "/oauth2callback", :ssl_ca_path => "/etc/ssl/certs/curl-ca-bundle.crt"}
    importer :yahoo, "dj0yJmk9QUpqcGc0T0xPeDRCJmQ9WVdrOVprMXhNRzV5TlRBbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD0xNA--", "202592cb2c1d2271b936a2147d72f725bc9d789f", {:callback_path => '/callback'}
    importer :hotmail, "000000004412855F", "oWsVQ26lcJY0CWe2-aptVQWrqelKbSdb"
  else
    importer :gmail, "99479291876-1fuihfq49uro2mjavoo9evg4morg5qr0.apps.googleusercontent.com", "bLHVD02jqrLLogEGwqrnZTqg", {:redirect_path => "/oauth2callback", :ssl_ca_path => "/etc/ssl/certs/curl-ca-bundle.crt"}
    importer :hotmail, "000000004412855F", "oWsVQ26lcJY0CWe2-aptVQWrqelKbSdb"
    importer :facebook, "361001120693650", "31d1793004643d9141efe11b59d3e182"
  end
end