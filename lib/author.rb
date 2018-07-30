class Author
  
  attr_accessor :name, :posts
  
  @@all = []
  
  def initialize(name=nil)
    @name = name
    @posts  = []
  end
  
  def self.all
    @@all
  end
  
  def add_post(message)
    message.author = self
    @posts << message
  end
  
  def add_post_by_title(post_title)
    tweet = Post.new(post_title)
    tweet.author = self
    @posts << tweet
  end
  
  def self.post_count
   author_posts = Post.all.select {|posts| posts.author == self}
   author_posts.length
  end

end