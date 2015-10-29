require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    @title = "Ricky's Homepage"
    erb :index
  end

  get "/index" do
    @title = "Ricky's Homepage"
    erb :index
  end

  get "/about" do
    @title = "About Ricky"
    erb :about
  end

  get "/blog" do
    @title = "Ricky's Blog"
    erb :blog
  end

  get "/projects" do
    @title = "Ricky's Projects"
    erb :projects
  end

end
