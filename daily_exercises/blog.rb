require 'date'

class Blog
  attr_accessor :blog, :post
  
  def initialize
    @blog = [];
  end
  
  def publish_page
    @blog << post
  end
  
end

class Post
  
  def initialize(title, text)
    @title = title
    @text = text
    @date = DateTime.now.strftime('%m/%d/%Y %H:%M')
    
  end
  
  def post_format
       "\nPost: #{@title}\n"
        "*" * 30
        "\nSummary: #{@text}\n"
        "-" * 30
        "\nPosted on #{@date}\n"
  end
  
end

blog = Blog.new

blog.push Post.new("The Grass is always Greener", "Some interesting facts...")
blog.push Post.new("One too Many", "Ever since I heard...")
blog.push Post.new("One time at Band Camp", "This might be true...")

# post1.post_format
# post2.post_format
# post3.post_format

blog.publish_page


