require "sinatra"

class MySite < Sinatra::Base

  @guestbook = []

  def all_sites
    @all_sites = ["index", "about", "blog", "projects", "guestbook"]
    @random_page = @all_sites[rand(0..(@all_sites.length-1))]
    @footer_values = {
      "Home Page" => "/index",
      "About Me" => "/about",
      "My Projects" => "/projects",
      "My Blog" => "/blog",
      "Guestbook" => "/guestbook",
      "Random Page" => "/#{@random_page}"
    }
    return @all_sites, @footer_values, @guestbook
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

  get "/guestbookthanks" do
    all_sites
    @name = params[:message]
    @guestbook.push(@name)
    @title = "Thanks!"
    erb :guestbookthanks
  end

  not_found do
    status 404
    '404: page not found'
  end

end
