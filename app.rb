require "sinatra"

class Application < Sinatra::Base
  set :host_authorization, { permitted_hosts: [] }
  get "/" do
    "Hello World!"
  end
end
