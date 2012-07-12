require "sinatra/base"
require "haml"
require "sass"

module HollyBergemanName
  class Site < Sinatra::Base

    set :haml, { :format => :html5, :attr_wrapper => '"' }

    get "/" do
      content_type :html, :charset => "utf-8"
      haml :home    # Maps to the file: views/home.haml
    end

    get "/style/?" do
      content_type :css, :charset => "utf-8"
      sass :base    # Maps to the file: views/base.sass
    end

  end
end
