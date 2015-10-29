require "sinatra"

class MySite < Sinatra::Base

  def all_sites
    @all_sites = ["index", "about", "blog", "projects", "guestbook"]
  end

  get "/" do
    all_sites
    @title = "Ricky's Homepage"
    erb :index
  end

  get "/index" do
    all_sites
    @title = "Ricky's Homepage"
    erb :index
  end

  get "/about" do
    all_sites
    @title = "About Ricky"
    erb :about
  end

  get "/blog" do
    all_sites
    @title = "Ricky's Blog"
    erb :blog
  end

  get "/projects" do
    all_sites
    @title = "Ricky's Projects"
    erb :projects
  end

  get "/guestbook" do
    all_sites
    @title = "Guestbook"
    erb :guestbook
  end

end
